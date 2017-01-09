using Telerik.Web.UI;
using VikkiSoft_BLL;
using MyGeneration.dOOdads;

public partial class SiteChoice : ChoiceControlBase
{
    protected override RadComboBox ddlList
    {
        get { return ddlSite; }
    }

    protected override void InitDDL()
    {
        Site s = new Site();
        s.Query.AddOrderBy(VikkiSoft_BLL.Site.ColumnNames.Name, WhereParameter.Dir.ASC);
        if (s.Query.Load())
        {
            do
            {
                RadComboBoxItem item = new RadComboBoxItem(s.s_Name, s.SiteID.ToString());
                this.ddlList.Items.Add(item);
            } while (s.MoveNext());
        }
    }
}