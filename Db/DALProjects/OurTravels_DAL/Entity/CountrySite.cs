using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using VikkiSoft_BLL.DAL;

namespace VikkiSoft_BLL
{
    public class CountrySite : _CountrySite
    {
        public CountrySite()
        {

        }

        public virtual bool LoadByCountryID(int сountryID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@CountryID", SqlDbType.Int), сountryID);

            return base.LoadFromSql("[" + this.SchemaStoredProcedure + "usp_CountrySite_LoadByCountryID]", parameters);
        }
    }
}
