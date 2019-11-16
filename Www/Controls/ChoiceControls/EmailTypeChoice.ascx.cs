using Telerik.Web.UI;
using VikkiSoft_BLL;
using MyGeneration.dOOdads;

public partial class EmailTypeChoice : ChoiceControlBase
{
    protected override RadComboBox ddlList
    {
        get { return ddlEmailType; }
    }

    protected override void InitDDL()
    {
        LoadEmailTypeDDL();
    }

    public void LoadEmailTypeDDL()
    {
        ddlList.Items.Clear();
        EmailType et = new EmailType();
        et.Query.AddOrderBy(City.ColumnNames.Name, WhereParameter.Dir.ASC);
        if (et.Query.Load())
        {
            do
            {
                RadComboBoxItem item = new RadComboBoxItem(et.s_Name, et.EmailTypeID.ToString());
                this.ddlList.Items.Add(item);
            } while (et.MoveNext());
        }
    }
}