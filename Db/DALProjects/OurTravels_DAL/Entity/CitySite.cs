using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using VikkiSoft_BLL.DAL;

namespace VikkiSoft_BLL
{
    public class CitySite : _CitySite
    {
        public CitySite()
        {

        }

        public virtual bool LoadByCityID(int сityID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@CityID", SqlDbType.Int), сityID);

            return base.LoadFromSql("[" + this.SchemaStoredProcedure + "usp_CitySite_LoadByCityID]", parameters);
        }
    }
}
