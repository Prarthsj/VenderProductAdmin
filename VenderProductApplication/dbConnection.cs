using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Web.Script;
using System.Web.Script.Serialization;
using System.Configuration;

namespace VenderProductApplication
{
    class dbConnection
    {
        public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VendorDbConnection"].ConnectionString);
        SqlDataAdapter adaVendors = null;
        SqlDataAdapter adaVendorAudit = null;
        DataSet dsVendors = new DataSet();
        DataSet dsVendorAudit = new DataSet();

        public DataSet getVendors()
        {
            try
            {
                dsVendors.Clear();
                adaVendors = new SqlDataAdapter("Select VendorName from Vendors", con);
                adaVendors.Fill(dsVendors, "vendors");
            }
            catch (Exception e)
            { 
                
            }
            return dsVendors;
        }

        public DataSet getAuditInfo()
        {
            try
            {
                dsVendorAudit.Clear();
                adaVendorAudit = new SqlDataAdapter("select top 50 ProductID, ProductVendorUpdatedInfo, VendorName, ModifiedDate from VendorProduct_Audit order by sno desc", con);
                adaVendorAudit.Fill(dsVendorAudit, "venInfo");
            }
            catch (Exception e) { 
            }
            return dsVendorAudit;
        }

    }
}
