﻿
// Generated by MyGeneration Version # (1.3.0.3)

using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using VikkiSoft_BLL.DAL;

namespace VikkiSoft_BLL
{
    public class Email : _Email
    {
        public Email()
        {

        }

        public virtual bool LoadWithEmailType()
        {
            return base.LoadFromSql("[" + this.SchemaStoredProcedure + "usp_Email_LoadWithEmailType]");
        }
    }
}