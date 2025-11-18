using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRentalSystem.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomer();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        private void ShowCustomer()
        {
            String Query = "Select * from CustomerTbl";
            CustomersList.DataSource = Conn.GetData(Query);
            CustomersList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || PhoneTb.Value == "" || PassTb.Value == "" || AddTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string  CustPhone= PhoneTb.Value;
                    string CustPassword = PassTb.Value;
                  
                    string Query = "insert into CustomerTbl values('{0}','{1}','{2}','{3}')";
                    Query = string.Format(Query, CustName, CustAdd, CustPhone, CustPassword);
                    Conn.SetData(Query);
                    ShowCustomer();
                    ErrorMsg.InnerText = "Customer Added";
                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
                //throw;
            }
        }

        int key = 0;
        protected void CustomersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CustNameTb.Value = CustomersList.SelectedRow.Cells[2].Text;
            AddTb.Value = CustomersList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = CustomersList.SelectedRow.Cells[4].Text;
            PassTb.Value = CustomersList.SelectedRow.Cells[5].Text;
            if(CustNameTb.Value==" ")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value== "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {

                    string Query = "delete from customerTbl where Custid={0}";
                    Query = string.Format(Query, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomer();
                    ErrorMsg.InnerText = "Customer Deleted";
                   
                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
                //throw;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || PhoneTb.Value == "" || PassTb.Value == "" || AddTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {

                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPassword = PassTb.Value;

                    string Query = "Update  CustomerTbl set CustName='{0}',CustAdd='{1}', CustPhone'{2}', CustPass='{3}' where CustId={4}";
                    Query = string.Format(Query, CustName, CustAdd, CustPhone, CustPassword, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomer();
                    ErrorMsg.InnerText = "Customer Updated";
                }
            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
                //throw;
            }
        }
    }
}