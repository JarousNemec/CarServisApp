namespace CarServisApp;

public class SqlItem
{
    public string Id { get; set; }
    public List<KeyValuePair<string, string>> OtherColumns { get; set; }

    public SqlItem(string id)
    {
        Id = id;
        OtherColumns = new List<KeyValuePair<string, string>>();
    }

    public override string ToString()
    {
        var result = string.Empty;
        for (int i = 0; i < OtherColumns.Count; i++)
        {
            result += OtherColumns[i].Value;
            if (i < OtherColumns.Count-1)
                result += " | ";
        }

        return result;
    }
}