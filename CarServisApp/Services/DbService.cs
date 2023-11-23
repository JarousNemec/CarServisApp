using System.Data;
using System.Diagnostics;
using Microsoft.Data.SqlClient;

namespace CarServisApp.Services;

public class DbService
{
    private readonly string _connString = String.Empty;
    private SqlConnection _connection;

    public delegate void ConnectionError(string msg);
    public event ConnectionError ConnectingError;

    public delegate void SqlQueryError(string msg);

    public event SqlQueryError SqlQueringError;
    public DbService()
    {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        builder.Password = "Heslo1234.";
        builder.DataSource = "127.0.0.1,1433";
        builder.UserID = "SA";
        builder.InitialCatalog = "Autoservis";
        builder.TrustServerCertificate = true;

        _connString = builder.ToString();
    }

    public bool Connect()
    {
        try
        {
            _connection = new SqlConnection(_connString);
            _connection.Open();
            return true;
        }
        catch (Exception e)
        {
            Debug.WriteLine(e);
            ConnectingError?.Invoke(e.Message);
        }
        return false;
    }

    private List<SqlItem> QueryDataFromDb(string cmd)
    {
        List<SqlItem> outputData = new List<SqlItem>();
        if (_connection.State != ConnectionState.Open) return outputData;
            
        try
        {
            using (SqlCommand sqlCommand = new SqlCommand(cmd, _connection))
            {
                using (SqlDataReader reader = sqlCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var currentItem = new SqlItem(reader.GetValue(0).ToString());
                        for (int i = 1; i < reader.FieldCount; i++)
                        {
                            string key = reader.GetName(i);
                            string value = reader.GetValue(i).ToString();
                            currentItem.OtherColumns.Add( new KeyValuePair<string, string>(key, value));
                        }
                        outputData.Add(currentItem);
                    }
                }
            }
        }catch(Exception e)
        {
            Debug.WriteLine(e.Message);
            SqlQueringError?.Invoke(e.Message);
        }

        return outputData;
    }

    public List<SqlItem> QueryAllCustomers()
    {
        var cmd = "select CustomerId ,(Name +' '+Surname) as Name from Customer C";
        var result = QueryDataFromDb(cmd);
        return result;
    }
    public List<SqlItem> QueryAllInterventions()
    {
        var cmd = "select InterventionId ,Description, Date from ServiceIntervention";
        var result = QueryDataFromDb(cmd);
        return result;
    }

    public List<SqlItem> QueryDetailsAboutCustomer(string id)
    {
        var cmd = $"select CustomerId, (Name +' '+Surname) as Name, Email, Phone, Country, City, Postcode, Street, Housenumber from Customer C INNER JOIN Address A on A.AddressId = C.AddressId Where C.CustomerId = {id}";
        var result = QueryDataFromDb(cmd);
        return result;
    }
    
    public List<SqlItem> QueryDetailsAboutIntervention(string id)
    {
        var cmd = "select InterventionId ,Description, SpareParts, Date, (Customer.Name + ' '+ Customer.Surname) as Customer , (E.Name + ' '+ E.Surname) as Employee, Brand, Model, Spz, Vin from ServiceIntervention"+
        " INNER JOIN Car C on ServiceIntervention.CarId = C.CarId" +
        " INNER JOIN Employees E on ServiceIntervention.EmployeeId = E.EmployeeId" +
        " INNER JOIN CustomerCars CC on C.CarId = CC.CarId" +
        " INNER JOIN Customer on CC.CustomerId = Customer.CustomerId" +
        $" where InterventionId = {id}";
        var result = QueryDataFromDb(cmd);
        return result;
    }
}