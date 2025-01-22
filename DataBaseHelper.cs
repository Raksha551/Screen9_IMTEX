using Evaluation2_Screens;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Screen9_IMTEX
{
    public class DataBaseHelper
    {
        private static string connectionString;

        //public class ColumnNames
        //{
        //    public string MachineDescription { get; set; }
        //    public string MachineID { get; set; }
        //    public string MachineLiveStatus { get; set; }
        //     public string MachineLiveStatusColor { get; set; }
        //    public string OperationNo{ get; set; }
        //    public string PartCount { get; set; }
        //    public string RunningSerialNo { get; set; }
        //    public string DimensionID { get; set; }
        //    public string DimensionValue { get; set; }
        //}

        public class DimensionData
        {
            public string DimensionID { get; set; }
            public string DimensionValue { get; set; }
        }
        public DataBaseHelper()
        {
            connectionString = WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        }
        public List<DataTable> FetchDBData()
        {
           
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataReader rdr = null;
            List<DataTable> tables = new List<DataTable>();
            try
            {
                using (SqlCommand cmd = new SqlCommand("S_GetMachineAndonDetails_IMTEX", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandTimeout = 120;                  
                    con.Open();
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        var dt = new DataTable();
                        var dt2 = new DataTable();
                        dt.Load(rdr);
                        dt.AcceptChanges();
                        tables.Add(dt);
                        dt2.Load(rdr);
                        dt2.AcceptChanges();
                        tables.Add(dt2);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.WriteErrorLog("FetchDBData : " + ex.Message);
            }
            finally
            {
                if (rdr != null) { rdr.Close(); rdr.Dispose(); }
                if (con != null) { con.Close(); con.Dispose(); }

            }
            return tables;

        }
    }
}