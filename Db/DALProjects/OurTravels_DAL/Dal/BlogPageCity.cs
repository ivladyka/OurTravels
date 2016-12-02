
/*
'===============================================================================
'  Generated From - CSharp_dOOdads_BusinessEntity.vbgen
' 
'  ** IMPORTANT  ** 
'  How to Generate your stored procedures:
' 
'  SQL        = SQL_StoredProcs.vbgen
'  ACCESS     = Access_StoredProcs.vbgen
'  ORACLE     = Oracle_StoredProcs.vbgen
'  FIREBIRD   = FirebirdStoredProcs.vbgen
'  POSTGRESQL = PostgreSQL_StoredProcs.vbgen
'
'  The supporting base class SqlClientEntity is in the Architecture directory in "dOOdads".
'  
'  This object is 'abstract' which means you need to inherit from it to be able
'  to instantiate it.  This is very easilly done. You can override properties and
'  methods in your derived class, this allows you to regenerate this class at any
'  time and not worry about overwriting custom code. 
'
'  NEVER EDIT THIS FILE.
'
'  public class YourObject :  _YourObject
'  {
'
'  }
'
'===============================================================================
*/

// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace VikkiSoft_BLL.DAL
{
	public abstract class _BlogPageCity : SqlClientEntity
	{
		public _BlogPageCity()
		{
			this.QuerySource = "BlogPageCity";
			this.MappingName = "BlogPageCity";

		}	

		//=================================================================
		//  public Overrides void AddNew()
		//=================================================================
		//
		//=================================================================
		public override void AddNew()
		{
			base.AddNew();
			
		}
		
		
		public override void FlushData()
		{
			this._whereClause = null;
			this._aggregateClause = null;
			base.FlushData();
		}
		
		//=================================================================
		//  	public Function LoadAll() As Boolean
		//=================================================================
		//  Loads all of the records in the database, and sets the currentRow to the first row
		//=================================================================
		public bool LoadAll() 
		{
			ListDictionary parameters = null;
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "LoadAllBlogPageCity]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int BlogPageCityID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.BlogPageCityID, BlogPageCityID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "LoadBlogPageCityByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter BlogPageCityID
			{
				get
				{
					return new SqlParameter("@BlogPageCityID", SqlDbType.Int, 0);
				}
			}

            public static SqlParameter BlogPageID
			{
				get
				{
                    return new SqlParameter("@BlogPageID", SqlDbType.Int, 0);
				}
			}

            public static SqlParameter CityID
            {
                get
                {
                    return new SqlParameter("@CityID", SqlDbType.Int, 0);
                }
            }
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string BlogPageCityID = "BlogPageCityID";
            public const string BlogPageID = "BlogPageID";
            public const string CityID = "CityID";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[BlogPageCityID] = _BlogPageCity.PropertyNames.BlogPageCityID;
                    ht[BlogPageID] = _BlogPageCity.PropertyNames.BlogPageID;
                    ht[CityID] = _BlogPageCity.PropertyNames.CityID;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string BlogPageCityID = "BlogPageCityID";
            public const string BlogPageID = "BlogPageID";
            public const string CityID = "CityID";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[BlogPageCityID] = _BlogPageCity.ColumnNames.BlogPageCityID;
                    ht[BlogPageID] = _BlogPageCity.ColumnNames.BlogPageID;
                    ht[CityID] = _BlogPageCity.ColumnNames.CityID;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string BlogPageCityID = "s_BlogPageCityID";
            public const string BlogPageID = "s_BlogPageID";
            public const string CityID = "s_CityID";

		}
		#endregion		
		
		#region Properties
	
		public virtual int BlogPageCityID
	    {
			get
	        {
				return base.Getint(ColumnNames.BlogPageCityID);
			}
			set
	        {
				base.Setint(ColumnNames.BlogPageCityID, value);
			}
		}

        public virtual int BlogPageID
	    {
			get
	        {
                return base.Getint(ColumnNames.BlogPageID);
			}
			set
	        {
                base.Setint(ColumnNames.BlogPageID, value);
			}
		}

        public virtual int CityID
        {
            get
            {
                return base.Getint(ColumnNames.CityID);
            }
            set
            {
                base.Setint(ColumnNames.CityID, value);
            }
        }

		#endregion
		
		#region String Properties
	
		public virtual string s_BlogPageCityID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.BlogPageCityID) ? string.Empty : base.GetintAsString(ColumnNames.BlogPageCityID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.BlogPageCityID);
				else
					this.BlogPageCityID = base.SetintAsString(ColumnNames.BlogPageCityID, value);
			}
		}

        public virtual string s_BlogPageID
	    {
			get
	        {
                return this.IsColumnNull(ColumnNames.BlogPageID) ? string.Empty : base.GetintAsString(ColumnNames.BlogPageID);
			}
			set
	        {
				if(string.Empty == value)
                    this.SetColumnNull(ColumnNames.BlogPageID);
				else
                    this.BlogPageID = base.SetintAsString(ColumnNames.BlogPageID, value);
			}
		}

        public virtual string s_CityID
        {
            get
            {
                return this.IsColumnNull(ColumnNames.CityID) ? string.Empty : base.GetintAsString(ColumnNames.CityID);
            }
            set
            {
                if (string.Empty == value)
                    this.SetColumnNull(ColumnNames.CityID);
                else
                    this.CityID = base.SetintAsString(ColumnNames.CityID, value);
            }
        }

		#endregion		
	
		#region Where Clause
		public class WhereClause
		{
			public WhereClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffWhereParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffWhereParameter(this);
					}

					return _tearOff;
				}
			}

			#region WhereParameter TearOff's
			public class TearOffWhereParameter
			{
				public TearOffWhereParameter(WhereClause clause)
				{
					this._clause = clause;
				}
				
				
				public WhereParameter BlogPageCityID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.BlogPageCityID, Parameters.BlogPageCityID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

                public WhereParameter BlogPageID
				{
					get
					{
                        WhereParameter where = new WhereParameter(ColumnNames.BlogPageID, Parameters.BlogPageID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

                public WhereParameter CityID
                {
                    get
                    {
                        WhereParameter where = new WhereParameter(ColumnNames.CityID, Parameters.CityID);
                        this._clause._entity.Query.AddWhereParameter(where);
                        return where;
                    }
                }

				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter BlogPageCityID
		    {
				get
		        {
					if(_BlogPageCityID_W == null)
	        	    {
						_BlogPageCityID_W = TearOff.BlogPageCityID;
					}
					return _BlogPageCityID_W;
				}
			}

			public WhereParameter BlogPageID
		    {
				get
		        {
					if(_BlogPageID_W == null)
	        	    {
						_BlogPageID_W = TearOff.BlogPageID;
					}
					return _BlogPageID_W;
				}
			}

            public WhereParameter CityID
            {
                get
                {
                    if (_CityID_W == null)
                    {
                        _CityID_W = TearOff.CityID;
                    }
                    return _CityID_W;
                }
            }

			private WhereParameter _BlogPageCityID_W = null;
            private WhereParameter _BlogPageID_W = null;
			private WhereParameter _CityID_W = null;

			public void WhereClauseReset()
			{
				_BlogPageCityID_W = null;
                _BlogPageID_W = null;
                _CityID_W = null;

				this._entity.Query.FlushWhereParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffWhereParameter _tearOff;
			
		}
	
		public WhereClause Where
		{
			get
			{
				if(_whereClause == null)
				{
					_whereClause = new WhereClause(this);
				}
		
				return _whereClause;
			}
		}
		
		private WhereClause _whereClause = null;	
		#endregion
	
		#region Aggregate Clause
		public class AggregateClause
		{
			public AggregateClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffAggregateParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffAggregateParameter(this);
					}

					return _tearOff;
				}
			}

			#region AggregateParameter TearOff's
			public class TearOffAggregateParameter
			{
				public TearOffAggregateParameter(AggregateClause clause)
				{
					this._clause = clause;
				}
				
				
				public AggregateParameter BlogPageCityID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.BlogPageCityID, Parameters.BlogPageCityID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter BlogPageID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.BlogPageID, Parameters.BlogPageID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

                public AggregateParameter CityID
                {
                    get
                    {
                        AggregateParameter aggregate = new AggregateParameter(ColumnNames.CityID, Parameters.CityID);
                        this._clause._entity.Query.AddAggregateParameter(aggregate);
                        return aggregate;
                    }
                }

				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter BlogPageCityID
		    {
				get
		        {
					if(_BlogPageCityID_W == null)
	        	    {
						_BlogPageCityID_W = TearOff.BlogPageCityID;
					}
					return _BlogPageCityID_W;
				}
			}

			public AggregateParameter BlogPageID
		    {
				get
		        {
					if(_BlogPageID_W == null)
	        	    {
						_BlogPageID_W = TearOff.BlogPageID;
					}
					return _BlogPageID_W;
				}
			}

            public AggregateParameter CityID
            {
                get
                {
                    if (_CityID_W == null)
                    {
                        _CityID_W = TearOff.CityID;
                    }
                    return _CityID_W;
                }
            }

			private AggregateParameter _BlogPageCityID_W = null;
            private AggregateParameter _BlogPageID_W = null;
			private AggregateParameter _CityID_W = null;

			public void AggregateClauseReset()
			{
				_BlogPageCityID_W = null;
                _BlogPageID_W = null;
                _CityID_W = null;

				this._entity.Query.FlushAggregateParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffAggregateParameter _tearOff;
			
		}
	
		public AggregateClause Aggregate
		{
			get
			{
				if(_aggregateClause == null)
				{
					_aggregateClause = new AggregateClause(this);
				}
		
				return _aggregateClause;
			}
		}
		
		private AggregateClause _aggregateClause = null;	
		#endregion
	
		protected override IDbCommand GetInsertCommand() 
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "InsertBlogPageCity]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.BlogPageCityID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "UpdateBlogPageCity]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "DeleteBlogPageCity]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.BlogPageCityID);
			p.SourceColumn = ColumnNames.BlogPageCityID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.BlogPageCityID);
			p.SourceColumn = ColumnNames.BlogPageCityID;
			p.SourceVersion = DataRowVersion.Current;

            p = cmd.Parameters.Add(Parameters.BlogPageID);
            p.SourceColumn = ColumnNames.BlogPageID;
			p.SourceVersion = DataRowVersion.Current;

            p = cmd.Parameters.Add(Parameters.CityID);
            p.SourceColumn = ColumnNames.CityID;
			p.SourceVersion = DataRowVersion.Current;

			return cmd;
		}
	}
}
