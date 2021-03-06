
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
	public abstract class _City : SqlClientEntity
	{
		public _City()
		{
			this.QuerySource = "City";
			this.MappingName = "City";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "LoadAllCity]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int CityID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.CityID, CityID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "LoadCityByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter CityID
			{
				get
				{
					return new SqlParameter("@CityID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Name
			{
				get
				{
					return new SqlParameter("@Name", SqlDbType.VarChar, 50);
				}
			}
			
			public static SqlParameter Name_en
			{
				get
				{
					return new SqlParameter("@Name_en", SqlDbType.VarChar, 50);
				}
			}
			
			public static SqlParameter CountryID
			{
				get
				{
					return new SqlParameter("@CountryID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Content
			{
				get
				{
					return new SqlParameter("@Content", SqlDbType.VarChar, 2147483647);
				}
			}
			
			public static SqlParameter Keywords
			{
				get
				{
					return new SqlParameter("@Keywords", SqlDbType.VarChar, 250);
				}
			}
			
			public static SqlParameter Active
			{
				get
				{
					return new SqlParameter("@Active", SqlDbType.Bit, 0);
				}
			}
			
			public static SqlParameter Description
			{
				get
				{
					return new SqlParameter("@Description", SqlDbType.VarChar, 200);
				}
			}
			
			public static SqlParameter DateUpdate
			{
				get
				{
					return new SqlParameter("@DateUpdate", SqlDbType.SmallDateTime, 0);
				}
			}

            public static SqlParameter TitleImage
            {
                get
                {
                    return new SqlParameter("@TitleImage", SqlDbType.VarChar, 100);
                }
            }

            public static SqlParameter MainImage
            {
                get
                {
                    return new SqlParameter("@MainImage", SqlDbType.VarChar, 100);
                }
            }

            public static SqlParameter BookingID
            {
                get
                {
                    return new SqlParameter("@BookingID", SqlDbType.VarChar, 15);
                }
            }

			public static SqlParameter Advert1
			{
				get
				{
					return new SqlParameter("@Advert1", SqlDbType.VarChar, 1000);
				}
			}

			public static SqlParameter Advert2
			{
				get
				{
					return new SqlParameter("@Advert2", SqlDbType.VarChar, 1000);
				}
			}

		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string CityID = "CityID";
            public const string Name = "Name";
            public const string Name_en = "Name_en";
            public const string CountryID = "CountryID";
            public const string Content = "Content";
            public const string Keywords = "Keywords";
            public const string Active = "Active";
            public const string Description = "Description";
            public const string DateUpdate = "DateUpdate";
            public const string TitleImage = "TitleImage";
            public const string MainImage = "MainImage";
            public const string BookingID = "BookingID";
			public const string Advert1 = "Advert1";
			public const string Advert2 = "Advert2";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CityID] = _City.PropertyNames.CityID;
					ht[Name] = _City.PropertyNames.Name;
					ht[Name_en] = _City.PropertyNames.Name_en;
					ht[CountryID] = _City.PropertyNames.CountryID;
					ht[Content] = _City.PropertyNames.Content;
					ht[Keywords] = _City.PropertyNames.Keywords;
					ht[Active] = _City.PropertyNames.Active;
					ht[Description] = _City.PropertyNames.Description;
					ht[DateUpdate] = _City.PropertyNames.DateUpdate;
                    ht[TitleImage] = _City.PropertyNames.TitleImage;
                    ht[MainImage] = _City.PropertyNames.MainImage;
                    ht[BookingID] = _City.PropertyNames.BookingID;
					ht[Advert1] = _Settings.PropertyNames.Advert1;
					ht[Advert2] = _Settings.PropertyNames.Advert2;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string CityID = "CityID";
            public const string Name = "Name";
            public const string Name_en = "Name_en";
            public const string CountryID = "CountryID";
            public const string Content = "Content";
            public const string Keywords = "Keywords";
            public const string Active = "Active";
            public const string Description = "Description";
            public const string DateUpdate = "DateUpdate";
            public const string TitleImage = "TitleImage";
            public const string MainImage = "MainImage";
            public const string BookingID = "BookingID";
			public const string Advert1 = "Advert1";
			public const string Advert2 = "Advert2";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CityID] = _City.ColumnNames.CityID;
					ht[Name] = _City.ColumnNames.Name;
					ht[Name_en] = _City.ColumnNames.Name_en;
					ht[CountryID] = _City.ColumnNames.CountryID;
					ht[Content] = _City.ColumnNames.Content;
					ht[Keywords] = _City.ColumnNames.Keywords;
					ht[Active] = _City.ColumnNames.Active;
					ht[Description] = _City.ColumnNames.Description;
					ht[DateUpdate] = _City.ColumnNames.DateUpdate;
                    ht[TitleImage] = _City.ColumnNames.TitleImage;
                    ht[MainImage] = _City.ColumnNames.MainImage;
                    ht[BookingID] = _City.ColumnNames.BookingID;
					ht[Advert1] = _Settings.ColumnNames.Advert1;
					ht[Advert2] = _Settings.ColumnNames.Advert2;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string CityID = "s_CityID";
            public const string Name = "s_Name";
            public const string Name_en = "s_Name_en";
            public const string CountryID = "s_CountryID";
            public const string Content = "s_Content";
            public const string Keywords = "s_Keywords";
            public const string Active = "s_Active";
            public const string Description = "s_Description";
            public const string DateUpdate = "s_DateUpdate";
            public const string TitleImage = "s_TitleImage";
            public const string MainImage = "s_MainImage";
            public const string BookingID = "s_BookingID";
			public const string Advert1 = "s_Advert1";
			public const string Advert2 = "s_Advert2";

		}
		#endregion		
		
		#region Properties
	
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

		public virtual string Name
	    {
			get
	        {
				return base.Getstring(ColumnNames.Name);
			}
			set
	        {
				base.Setstring(ColumnNames.Name, value);
			}
		}

		public virtual string Name_en
	    {
			get
	        {
				return base.Getstring(ColumnNames.Name_en);
			}
			set
	        {
				base.Setstring(ColumnNames.Name_en, value);
			}
		}

		public virtual int CountryID
	    {
			get
	        {
				return base.Getint(ColumnNames.CountryID);
			}
			set
	        {
				base.Setint(ColumnNames.CountryID, value);
			}
		}

		public virtual string Content
	    {
			get
	        {
				return base.Getstring(ColumnNames.Content);
			}
			set
	        {
				base.Setstring(ColumnNames.Content, value);
			}
		}

		public virtual string Keywords
	    {
			get
	        {
				return base.Getstring(ColumnNames.Keywords);
			}
			set
	        {
				base.Setstring(ColumnNames.Keywords, value);
			}
		}

		public virtual bool Active
	    {
			get
	        {
				return base.Getbool(ColumnNames.Active);
			}
			set
	        {
				base.Setbool(ColumnNames.Active, value);
			}
		}

		public virtual string Description
	    {
			get
	        {
				return base.Getstring(ColumnNames.Description);
			}
			set
	        {
				base.Setstring(ColumnNames.Description, value);
			}
		}

		public virtual DateTime DateUpdate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.DateUpdate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.DateUpdate, value);
			}
		}

        public virtual string TitleImage
        {
            get
            {
                return base.Getstring(ColumnNames.TitleImage);
            }
            set
            {
                base.Setstring(ColumnNames.TitleImage, value);
            }
        }

        public virtual string MainImage
        {
            get
            {
                return base.Getstring(ColumnNames.MainImage);
            }
            set
            {
                base.Setstring(ColumnNames.MainImage, value);
            }
        }

        public virtual string BookingID
        {
            get
            {
                return base.Getstring(ColumnNames.BookingID);
            }
            set
            {
                base.Setstring(ColumnNames.BookingID, value);
            }
        }

		public virtual string Advert1
		{
			get
			{
				return base.Getstring(ColumnNames.Advert1);
			}
			set
			{
				base.Setstring(ColumnNames.Advert1, value);
			}
		}

		public virtual string Advert2
		{
			get
			{
				return base.Getstring(ColumnNames.Advert2);
			}
			set
			{
				base.Setstring(ColumnNames.Advert2, value);
			}
		}

		#endregion

		#region String Properties

		public virtual string s_CityID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CityID) ? string.Empty : base.GetintAsString(ColumnNames.CityID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CityID);
				else
					this.CityID = base.SetintAsString(ColumnNames.CityID, value);
			}
		}

		public virtual string s_Name
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Name) ? string.Empty : base.GetstringAsString(ColumnNames.Name);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Name);
				else
					this.Name = base.SetstringAsString(ColumnNames.Name, value);
			}
		}

		public virtual string s_Name_en
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Name_en) ? string.Empty : base.GetstringAsString(ColumnNames.Name_en);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Name_en);
				else
					this.Name_en = base.SetstringAsString(ColumnNames.Name_en, value);
			}
		}

		public virtual string s_CountryID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CountryID) ? string.Empty : base.GetintAsString(ColumnNames.CountryID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CountryID);
				else
					this.CountryID = base.SetintAsString(ColumnNames.CountryID, value);
			}
		}

		public virtual string s_Content
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Content) ? string.Empty : base.GetstringAsString(ColumnNames.Content);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Content);
				else
					this.Content = base.SetstringAsString(ColumnNames.Content, value);
			}
		}

		public virtual string s_Keywords
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Keywords) ? string.Empty : base.GetstringAsString(ColumnNames.Keywords);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Keywords);
				else
					this.Keywords = base.SetstringAsString(ColumnNames.Keywords, value);
			}
		}

		public virtual string s_Active
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Active) ? string.Empty : base.GetboolAsString(ColumnNames.Active);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Active);
				else
					this.Active = base.SetboolAsString(ColumnNames.Active, value);
			}
		}

		public virtual string s_Description
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Description) ? string.Empty : base.GetstringAsString(ColumnNames.Description);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Description);
				else
					this.Description = base.SetstringAsString(ColumnNames.Description, value);
			}
		}

		public virtual string s_DateUpdate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DateUpdate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.DateUpdate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DateUpdate);
				else
					this.DateUpdate = base.SetDateTimeAsString(ColumnNames.DateUpdate, value);
			}
		}

        public virtual string s_TitleImage
        {
            get
            {
                return this.IsColumnNull(ColumnNames.TitleImage) ? string.Empty : base.GetstringAsString(ColumnNames.TitleImage);
            }
            set
            {
                if (string.Empty == value)
                    this.SetColumnNull(ColumnNames.TitleImage);
                else
                    this.TitleImage = base.SetstringAsString(ColumnNames.TitleImage, value);
            }
        }

        public virtual string s_MainImage
        {
            get
            {
                return this.IsColumnNull(ColumnNames.MainImage) ? string.Empty : base.GetstringAsString(ColumnNames.MainImage);
            }
            set
            {
                if (string.Empty == value)
                    this.SetColumnNull(ColumnNames.MainImage);
                else
                    this.MainImage = base.SetstringAsString(ColumnNames.MainImage, value);
            }
        }

        public virtual string s_BookingID
        {
            get
            {
                return this.IsColumnNull(ColumnNames.BookingID) ? string.Empty : base.GetstringAsString(ColumnNames.BookingID);
            }
            set
            {
                if (string.Empty == value)
                    this.SetColumnNull(ColumnNames.BookingID);
                else
                    this.BookingID = base.SetstringAsString(ColumnNames.BookingID, value);
            }
        }

		public virtual string s_Advert1
		{
			get
			{
				return this.IsColumnNull(ColumnNames.Advert1) ? string.Empty : base.GetstringAsString(ColumnNames.Advert1);
			}
			set
			{
				if (string.Empty == value)
					this.SetColumnNull(ColumnNames.Advert1);
				else
					this.Advert1 = base.SetstringAsString(ColumnNames.Advert1, value);
			}
		}

		public virtual string s_Advert2
		{
			get
			{
				return this.IsColumnNull(ColumnNames.Advert2) ? string.Empty : base.GetstringAsString(ColumnNames.Advert2);
			}
			set
			{
				if (string.Empty == value)
					this.SetColumnNull(ColumnNames.Advert2);
				else
					this.Advert2 = base.SetstringAsString(ColumnNames.Advert2, value);
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
				
				
				public WhereParameter CityID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CityID, Parameters.CityID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Name
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Name, Parameters.Name);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Name_en
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Name_en, Parameters.Name_en);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CountryID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CountryID, Parameters.CountryID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Content
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Content, Parameters.Content);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				public WhereParameter Keywords
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Keywords, Parameters.Keywords);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Active
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Active, Parameters.Active);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Description
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DateUpdate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DateUpdate, Parameters.DateUpdate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

                public WhereParameter TitleImage
                {
                    get
                    {
                        WhereParameter where = new WhereParameter(ColumnNames.TitleImage, Parameters.TitleImage);
                        this._clause._entity.Query.AddWhereParameter(where);
                        return where;
                    }
                }

                public WhereParameter MainImage
                {
                    get
                    {
                        WhereParameter where = new WhereParameter(ColumnNames.MainImage, Parameters.MainImage);
                        this._clause._entity.Query.AddWhereParameter(where);
                        return where;
                    }
                }

                public WhereParameter BookingID
                {
                    get
                    {
                        WhereParameter where = new WhereParameter(ColumnNames.BookingID, Parameters.BookingID);
                        this._clause._entity.Query.AddWhereParameter(where);
                        return where;
                    }
                }

				public WhereParameter Advert1
				{
					get
					{
						WhereParameter where = new WhereParameter(ColumnNames.Advert1, Parameters.Advert1);
						this._clause._entity.Query.AddWhereParameter(where);
						return where;
					}
				}

				public WhereParameter Advert2
				{
					get
					{
						WhereParameter where = new WhereParameter(ColumnNames.Advert2, Parameters.Advert2);
						this._clause._entity.Query.AddWhereParameter(where);
						return where;
					}
				}

				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter CityID
		    {
				get
		        {
					if(_CityID_W == null)
	        	    {
						_CityID_W = TearOff.CityID;
					}
					return _CityID_W;
				}
			}

			public WhereParameter Name
		    {
				get
		        {
					if(_Name_W == null)
	        	    {
						_Name_W = TearOff.Name;
					}
					return _Name_W;
				}
			}

			public WhereParameter Name_en
		    {
				get
		        {
					if(_Name_en_W == null)
	        	    {
						_Name_en_W = TearOff.Name_en;
					}
					return _Name_en_W;
				}
			}

			public WhereParameter CountryID
		    {
				get
		        {
					if(_CountryID_W == null)
	        	    {
						_CountryID_W = TearOff.CountryID;
					}
					return _CountryID_W;
				}
			}

			public WhereParameter Content
		    {
				get
		        {
					if(_Content_W == null)
	        	    {
						_Content_W = TearOff.Content;
					}
					return _Content_W;
				}
			}

			public WhereParameter Keywords
		    {
				get
		        {
					if(_Keywords_W == null)
	        	    {
						_Keywords_W = TearOff.Keywords;
					}
					return _Keywords_W;
				}
			}

			public WhereParameter Active
		    {
				get
		        {
					if(_Active_W == null)
	        	    {
						_Active_W = TearOff.Active;
					}
					return _Active_W;
				}
			}

			public WhereParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			public WhereParameter DateUpdate
		    {
				get
		        {
					if(_DateUpdate_W == null)
	        	    {
						_DateUpdate_W = TearOff.DateUpdate;
					}
					return _DateUpdate_W;
				}
			}

            public WhereParameter TitleImage
            {
                get
                {
                    if (_TitleImage_W == null)
                    {
                        _TitleImage_W = TearOff.TitleImage;
                    }
                    return _TitleImage_W;
                }
            }

            public WhereParameter MainImage
            {
                get
                {
                    if (_MainImage_W == null)
                    {
                        _MainImage_W = TearOff.MainImage;
                    }
                    return _MainImage_W;
                }
            }

            public WhereParameter BookingID
            {
                get
                {
                    if (_BookingID_W == null)
                    {
                        _BookingID_W = TearOff.BookingID;
                    }
                    return _BookingID_W;
                }
            }

			public WhereParameter Advert1
			{
				get
				{
					if (_Advert1_W == null)
					{
						_Advert1_W = TearOff.Advert1;
					}
					return _Advert1_W;
				}
			}

			public WhereParameter Advert2
			{
				get
				{
					if (_Advert2_W == null)
					{
						_Advert2_W = TearOff.Advert2;
					}
					return _Advert2_W;
				}
			}

			private WhereParameter _CityID_W = null;
			private WhereParameter _Name_W = null;
			private WhereParameter _Name_en_W = null;
			private WhereParameter _CountryID_W = null;
			private WhereParameter _Content_W = null;
			private WhereParameter _Keywords_W = null;
			private WhereParameter _Active_W = null;
			private WhereParameter _Description_W = null;
			private WhereParameter _DateUpdate_W = null;
            private WhereParameter _TitleImage_W = null;
            private WhereParameter _MainImage_W = null;
            private WhereParameter _BookingID_W = null;
			private WhereParameter _Advert1_W = null;
			private WhereParameter _Advert2_W = null;

			public void WhereClauseReset()
			{
				_CityID_W = null;
				_Name_W = null;
				_Name_en_W = null;
				_CountryID_W = null;
				_Content_W = null;
				_Keywords_W = null;
				_Active_W = null;
				_Description_W = null;
				_DateUpdate_W = null;
                _TitleImage_W = null;
                _MainImage_W = null;
                _BookingID_W = null;
				_Advert1_W = null;
				_Advert2_W = null;

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
				
				
				public AggregateParameter CityID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CityID, Parameters.CityID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Name
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Name, Parameters.Name);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Name_en
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Name_en, Parameters.Name_en);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CountryID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CountryID, Parameters.CountryID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Content
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Content, Parameters.Content);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Keywords
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Keywords, Parameters.Keywords);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Active
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Active, Parameters.Active);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Description
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DateUpdate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DateUpdate, Parameters.DateUpdate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

                public AggregateParameter TitleImage
                {
                    get
                    {
                        AggregateParameter aggregate = new AggregateParameter(ColumnNames.TitleImage, Parameters.TitleImage);
                        this._clause._entity.Query.AddAggregateParameter(aggregate);
                        return aggregate;
                    }
                }

                public AggregateParameter MainImage
                {
                    get
                    {
                        AggregateParameter aggregate = new AggregateParameter(ColumnNames.MainImage, Parameters.MainImage);
                        this._clause._entity.Query.AddAggregateParameter(aggregate);
                        return aggregate;
                    }
                }

                public AggregateParameter BookingID
                {
                    get
                    {
                        AggregateParameter aggregate = new AggregateParameter(ColumnNames.BookingID, Parameters.BookingID);
                        this._clause._entity.Query.AddAggregateParameter(aggregate);
                        return aggregate;
                    }
                }

				public AggregateParameter Advert1
				{
					get
					{
						AggregateParameter aggregate = new AggregateParameter(ColumnNames.Advert1, Parameters.Advert1);
						this._clause._entity.Query.AddAggregateParameter(aggregate);
						return aggregate;
					}
				}

				public AggregateParameter Advert2
				{
					get
					{
						AggregateParameter aggregate = new AggregateParameter(ColumnNames.Advert2, Parameters.Advert2);
						this._clause._entity.Query.AddAggregateParameter(aggregate);
						return aggregate;
					}
				}

				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter CityID
		    {
				get
		        {
					if(_CityID_W == null)
	        	    {
						_CityID_W = TearOff.CityID;
					}
					return _CityID_W;
				}
			}

			public AggregateParameter Name
		    {
				get
		        {
					if(_Name_W == null)
	        	    {
						_Name_W = TearOff.Name;
					}
					return _Name_W;
				}
			}

			public AggregateParameter Name_en
		    {
				get
		        {
					if(_Name_en_W == null)
	        	    {
						_Name_en_W = TearOff.Name_en;
					}
					return _Name_en_W;
				}
			}

			public AggregateParameter CountryID
		    {
				get
		        {
					if(_CountryID_W == null)
	        	    {
						_CountryID_W = TearOff.CountryID;
					}
					return _CountryID_W;
				}
			}

			public AggregateParameter Content_
		    {
				get
		        {
					if(_Content_W == null)
	        	    {
						_Content_W = TearOff.Content;
					}
					return _Content_W;
				}
			}

			public AggregateParameter Keywords
		    {
				get
		        {
					if(_Keywords_W == null)
	        	    {
						_Keywords_W = TearOff.Keywords;
					}
					return _Keywords_W;
				}
			}

			public AggregateParameter Active
		    {
				get
		        {
					if(_Active_W == null)
	        	    {
						_Active_W = TearOff.Active;
					}
					return _Active_W;
				}
			}

			public AggregateParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			public AggregateParameter DateUpdate
		    {
				get
		        {
					if(_DateUpdate_W == null)
	        	    {
						_DateUpdate_W = TearOff.DateUpdate;
					}
					return _DateUpdate_W;
				}
			}

            public AggregateParameter TitleImage
            {
                get
                {
                    if (_TitleImage_W == null)
                    {
                        _TitleImage_W = TearOff.TitleImage;
                    }
                    return _TitleImage_W;
                }
            }

            public AggregateParameter MainImage
            {
                get
                {
                    if (_MainImage_W == null)
                    {
                        _MainImage_W = TearOff.MainImage;
                    }
                    return _MainImage_W;
                }
            }

            public AggregateParameter BookingID
            {
                get
                {
                    if (_BookingID_W == null)
                    {
                        _BookingID_W = TearOff.BookingID;
                    }
                    return _BookingID_W;
                }
            }

			public AggregateParameter Advert1
			{
				get
				{
					if (_Advert1_W == null)
					{
						_Advert1_W = TearOff.Advert1;
					}
					return _Advert1_W;
				}
			}

			public AggregateParameter Advert2
			{
				get
				{
					if (_Advert2_W == null)
					{
						_Advert2_W = TearOff.Advert2;
					}
					return _Advert2_W;
				}
			}

			private AggregateParameter _CityID_W = null;
			private AggregateParameter _Name_W = null;
			private AggregateParameter _Name_en_W = null;
			private AggregateParameter _CountryID_W = null;
			private AggregateParameter _Content_W = null;
			private AggregateParameter _Keywords_W = null;
			private AggregateParameter _Active_W = null;
			private AggregateParameter _Description_W = null;
			private AggregateParameter _DateUpdate_W = null;
            private AggregateParameter _TitleImage_W = null;
            private AggregateParameter _MainImage_W = null;
            private AggregateParameter _BookingID_W = null;
			private AggregateParameter _Advert1_W = null;
			private AggregateParameter _Advert2_W = null;

			public void AggregateClauseReset()
			{
				_CityID_W = null;
				_Name_W = null;
				_Name_en_W = null;
				_CountryID_W = null;
				_Content_W = null;
				_Keywords_W = null;
				_Active_W = null;
				_Description_W = null;
				_DateUpdate_W = null;
                _TitleImage_W = null;
                _MainImage_W = null;
                _BookingID_W = null;
				_Advert1_W = null;
				_Advert2_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "InsertCity]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.CityID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "UpdateCity]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "DeleteCity]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.CityID);
			p.SourceColumn = ColumnNames.CityID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.CityID);
			p.SourceColumn = ColumnNames.CityID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Name);
			p.SourceColumn = ColumnNames.Name;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Name_en);
			p.SourceColumn = ColumnNames.Name_en;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CountryID);
			p.SourceColumn = ColumnNames.CountryID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Content);
			p.SourceColumn = ColumnNames.Content;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Keywords);
			p.SourceColumn = ColumnNames.Keywords;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Active);
			p.SourceColumn = ColumnNames.Active;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Description);
			p.SourceColumn = ColumnNames.Description;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DateUpdate);
			p.SourceColumn = ColumnNames.DateUpdate;
			p.SourceVersion = DataRowVersion.Current;

            p = cmd.Parameters.Add(Parameters.TitleImage);
            p.SourceColumn = ColumnNames.TitleImage;
            p.SourceVersion = DataRowVersion.Current;

            p = cmd.Parameters.Add(Parameters.MainImage);
            p.SourceColumn = ColumnNames.MainImage;
            p.SourceVersion = DataRowVersion.Current;

            p = cmd.Parameters.Add(Parameters.BookingID);
            p.SourceColumn = ColumnNames.BookingID;
            p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Advert1);
			p.SourceColumn = ColumnNames.Advert1;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Advert2);
			p.SourceColumn = ColumnNames.Advert2;
			p.SourceVersion = DataRowVersion.Current;

			return cmd;
		}
	}
}
