<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CarRentalSystem.View.Admin.Cars" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">    
    <h1>Manage Cars</h1>    
    <div class="container-fluid">        
        <div class="row">            
                   
            <div class="col-md-4">                
                <div class="col"></div>                
                <div class="col">
                    <img src="../../Assets/Img/download (1).jpg"/>
                </div>                
                <div class="col"></div>            
            </div>            
            <div class="row">                
                <div class="col">                    
                    <form>                        
                        <div class="form group">                            
                            <label for="exinput">License Number</label>                            
                            <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server" />                        
                        </div>                         
                        <div class="form group">                            
                            <label for="exinput">Brand</label>                            
                            <input type="text" class="form-control" id="BrandTb" placeholder="Enter Brand" runat="server"/>                         
                        </div>                         
                        <div class="form group">                            
                            <label for="exinput">Model</label>                            
                            <input type="text" class="form-control" id="ModelTb" placeholder="Enter Model" runat="server"/>                         
                        </div>                         
                        <div class="form group">                            
                            <label for="exinput">Colour</label>                            
                            <input type="text" class="form-control" id="ColourTb"  placeholder ="Enter Colour" runat="server"/>                         
                        </div>                        
                        <div class="form group">                            
                            <label for="exinput">Price</label>                            
                            <input type="text" class="form-control" id="PriceTb" placeholder="Enter Price" runat="server" />                        
                        </div>                        
                        <div class="form group">                            
                            <label for="exinput">Available</label>                                                            
                            <asp:DropDownList ID="AvailableCb" runat="server">                                
                                <asp:ListItem>Available</asp:ListItem>                                
                                <asp:ListItem>Booked</asp:ListItem>                            
                            </asp:DropDownList>                                               
                        </div>                         
                                              
                        <br />                        
                        <label id="ErrorMsg" runat="server" class="text-danger"></label> <br />
                        <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" />                        
                        <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />                        
                        <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />                    
                    </form>                
                </div>            
            </div>
             <div class="col-md-8">
                <h1>Car List</h1>
                <asp:GridView runat="server" ID="CarList" class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="MistyRose" ForeColor="Black" />
                </asp:GridView>
            </div>  
        </div >    
    </div>      
</asp:Content>
