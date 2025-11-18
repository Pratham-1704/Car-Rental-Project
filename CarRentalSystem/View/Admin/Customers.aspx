<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="CarRentalSystem.View.Admin.Customers" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row"></div>
                    <div class="col"></div>
                        <div class="col">
                            <h3 class="text-danger pl-4">Manage Customers</h3>
                        <img src="../../Assets/Img/download (1).jpg" height="130px"/></div>
                <div class="col"></div>
            </div>
            <div class="row">
                <div class="col">
                    <form >
                        <div class="form group">
                            <label for="exinput">Customer Name</label>
                            <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer name" runat="server" />
                        </div>

                         <div class="form group">
                            <label for="exinput">Customer Address</label>
                            <input type="text" class="form-control" id="AddTb" placeholder="Enter customer Address" runat="server"/>
                         </div>

                         <div class="form group">
                            <label for="exinput">Customer Phone</label>
                            <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Customer Phone No" runat="server"/>
                         </div>
                        <div class="form group">
                            <label for="exinput">Customer Password</label>
                            <input type="text" class="form-control" id="PassTb" placeholder="Enter Customer Password" runat="server"/>
                         </div>

                         <br />
          
                        <label id="ErrorMsg" runat="server" class="text-danger"></label> <br />
                        <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click"  />                        
                        <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server"  />                        
                        <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />      

                    </form>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <h1>Customer List</h1>
                <asp:GridView runat="server" ID="CustomersList" class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustomersList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="MistyRose" ForeColor="Black" />
                </asp:GridView>
    </div>
   </div>
 </div>
</asp:Content>
