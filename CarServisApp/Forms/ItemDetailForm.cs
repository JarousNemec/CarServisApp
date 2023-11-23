using System.Windows.Forms;

namespace CarServisApp.Forms;

public partial class ItemDetailForm : Form
{
    public ItemDetailForm()
    {
        InitializeComponent();
    }

    public void LoadData(List<SqlItem> details)
    {
        
        for (int i = 0; i < details.Count; i++)
        {
            Text = $"Item Id: {details[i].Id}";
            foreach (var item in details[i].OtherColumns)
            {
                _lsbDetail.Items.Add($"{item.Key}: {item.Value}");
            }

            if (i < details.Count-1)
            {
                _lsbDetail.Items.Add("-----------------------------------");
            }
        }
        
        
    }
}