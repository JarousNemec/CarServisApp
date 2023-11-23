using CarServisApp.Forms;
using CarServisApp.Services;

namespace CarServisApp;

public partial class Form1 : Form
{
    private DbService _dbService;
    public Form1()
    {
        InitializeComponent();
        _dbService = new DbService();
        _dbService.ConnectingError += msg => MessageBox.Show(msg);
        _dbService.SqlQueringError += msg => MessageBox.Show(msg);
        _dbService.Connect();
        
        LoadCustomers();
        LoadServiceInterventions();
    }

    private void LoadCustomers()
    {
        var result = _dbService.QueryAllCustomers();
        foreach (var item in result)
        {
            _lsbCustomers.Items.Add(item);
        }
        
    }

    private void LoadServiceInterventions()
    {
        var result = _dbService.QueryAllInterventions();
        foreach (var item in result)
        {
            _lsbInterventions.Items.Add(item);
            
        }
    }

    private void _lsbCustomers_DoubleClick(object sender, EventArgs e)
    {
        var item = _lsbCustomers.SelectedItem as SqlItem;
        if(item == null)
            return;
        var details = _dbService.QueryDetailsAboutCustomer(item.Id);
        DisplayItemDetails(details);
    }

    private void _lsbInterventions_DoubleClick(object sender, EventArgs e)
    {
        var item = _lsbInterventions.SelectedItem as SqlItem;
        if(item == null)
            return;
        var details = _dbService.QueryDetailsAboutIntervention(item.Id);
        DisplayItemDetails(details);
    }

    private void DisplayItemDetails(List<SqlItem> details)
    {
        if(details.Count == 0)
            return;
        var detailForm = new ItemDetailForm();
        detailForm.LoadData(details);
        detailForm.Show();
    }
}