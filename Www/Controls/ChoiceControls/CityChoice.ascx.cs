using Telerik.Web.UI;
using VikkiSoft_BLL;
using MyGeneration.dOOdads;

public partial class CityChoice : ChoiceControlBase
{
    protected override RadComboBox ddlList
    {
        get { return ddlCity; }
    }

    protected override void InitDDL()
    {
        LoadCityDDL(CountryID);
    }

    public void LoadCityDDL(int countryID)
    {
        ddlList.Items.Clear();
        if (this.AddEmptyItem)
        {
            this.ddlList.Items.Add(new RadComboBoxItem("", ""));
        }
        City c = new City();
        c.Where.CountryID.Value = countryID;
        c.Query.AddOrderBy(City.ColumnNames.Name, WhereParameter.Dir.ASC);
        if (c.Query.Load())
        {
            do
            {
                RadComboBoxItem item = new RadComboBoxItem(c.s_Name, c.CityID.ToString());
                this.ddlList.Items.Add(item);
            } while (c.MoveNext());
        }
    }

    public int CountryID
    {
        get
        {
            if (Request.QueryString["CountryID"] != null)
            {
                return int.Parse(Request.QueryString["CountryID"].ToString());
            }
            return 0;
        }
        set
        {
            LoadCityDDL(value);
        }
    }
}