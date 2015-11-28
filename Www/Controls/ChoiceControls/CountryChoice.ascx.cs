using Telerik.Web.UI;
using VikkiSoft_BLL;
using MyGeneration.dOOdads;

public partial class CountryChoice : ChoiceControlBase
{
    protected override RadComboBox ddlList
    {
        get { return ddlCountry; }
    }

    protected override void InitDDL()
    {
        Country c = new Country();
        c.Query.AddOrderBy(Country.ColumnNames.Name, WhereParameter.Dir.ASC);
        if (c.Query.Load())
        {
            do
            {
                RadComboBoxItem item = new RadComboBoxItem(c.s_Name, c.CountryID.ToString());
                item.Attributes["NameEn"] = c.s_Name_en;
                this.ddlList.Items.Add(item);
            } while (c.MoveNext());
        }
    }
}