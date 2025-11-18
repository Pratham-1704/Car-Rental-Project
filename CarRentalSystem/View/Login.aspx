<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarRentalSystem.View.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css" />
    <style>
        .centered-form {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .form-container {
            width: 100%;
            max-width: 500px; /* Increased form container width */
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .form-container img {
            width: 100px;
            height: auto;
            margin-bottom: 20px;
        }
        .form-container .form-group,
        .form-container .form-check {
            text-align: left;
            font-size: 1.2rem;
        }
        .form-container .form-control {
            font-size: 1.1rem;
            padding: 15px;
            height: 50px; /* Increased height for larger text boxes */
            width: 100%; /* Full width for input fields */
            box-sizing: border-box; /* Ensures padding doesn’t exceed container width */
        }
        .form-container .btn {
            font-size: 1.2rem;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container-fluid centered-form">
        <div class="form-container">
            <!-- Image at the top of the form -->
            <img src="../Assets/Img/download.jpg" alt="Logo" />

            <form runat="server">
                <div class="form-group">
                    <label for="UserNmTb">User ID</label>
                    <input type="text" class="form-control" id="UserNmTb" aria-describedby="emailHelp" placeholder="Enter User ID" runat="server">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your user ID with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="PasswordTb">Password</label>
                    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required">
                </div>
                
                <div class="form-group d-flex justify-content-around">
                    <div>
                        <input type="radio" class="form-check-input" name="userType" id="RdoCustomer" runat="server">
                        <label class="form-check-label" for="RdoCustomer">Customer</label>
                    </div>
                    <div>
                        <input type="radio" class="form-check-input" name="userType" id="RdoAdmin" runat="server">
                        <label class="form-check-label" for="RdoAdmin">Admin</label>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Button type="submit" id="LoginBtn" class="btn btn-warning mt-3" Text="Login" runat="server"/>                        
                </div>
            </form>
        </div>
    </div>
</body>
</html>
