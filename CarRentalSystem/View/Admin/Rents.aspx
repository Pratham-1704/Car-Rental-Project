<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="CarRentalSystem.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row"></div>
                    <div class="col"></div>
                        <div class="col">
                            <h3 class="text-danger pl-4"> Rented Cars</h3>
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
                        <br />
                        <button type="submit" class="btn btn-primary" >Edit</button>
                        <button type="submit" class="btn btn-primary">Add</button>
                        <button type="submit" class="btn btn-primary">Delete</button>

                    </form>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <table class="table">

        </table>
    </div>
   </div>
 </div>
</asp:Content>
