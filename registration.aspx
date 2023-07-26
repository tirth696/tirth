

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="project2.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:aquamarine;
        }

       #tbl{
           border:2px solid black;
           border-radius:9px;
           margin-left:auto;
           margin-right:auto;
           font-size:20PX;
          padding:15PX;
          text-align:center;
          background-color:deepskyblue;

           
       }
       #btnSave{
           background-color:lawngreen;

       }
    </style>
</head>
   

<body>
    <center><h1>REGISTRATION FROM</h1></center>
    <form id="form1" runat="server">
        
            <div>
        
        <table id="tbl">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>

                   
                </td>

                 <td colspan="2">
                    
                   
                    
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="E-Mail"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                 <td colspan="2">
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="* PLEASE ENTER EMAIL IN PROPER FORMAT"></asp:RegularExpressionValidator>

                 </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtMobile" runat="server" TextMode="Phone" MaxLength="10"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" Text="* PHONE NO. MUST BE 10 DIGIT" ForeColor="Red" ControlToValidate="txtMobile" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Adddress"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>
                </td>
                <td colspan="2">
                    
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" SetFocusOnError="True" ForeColor="Red" Text=" * ENTER USER NAME"></asp:RequiredFieldValidator>

                    
                </td>
            </tr>
                 <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="D.O.B"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td>
                    <asp:Label ID="Label9" runat="server" Text="STATE"></asp:Label>
                </td>
               
                <td colspan="2">
                    
                        <asp:DropDownList ID="drpState" runat="server" >
                            <asp:ListItem Enabled="true" Text="GUJARAT" Value="gujarat"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="M.P" Value="m.p"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="U.P" Value="u.p"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="DELHI" Value="delhi"></asp:ListItem>
   
                        </asp:DropDownList>
                    

                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="GENDER"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:RadioButton ID="rdbmale" runat="server" Text="MALE" value="male" GroupName="gender" />
                    <asp:RadioButton ID="rdbfemale" runat="server" Text="FEMALE" value="female" GroupName="gender" />
                    


                   
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>

                
                </td>
                 <td colspan="2">
                         <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ID="cvpass" Text="* BOTH PASSWORD MUST BE SAME" ForeColor="Red"></asp:CompareValidator>
 

                 </td>
            </tr>

            

            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Register" BackColor="Lime" OnClick="btnSave_Click"></asp:Button>

                    <asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="Lime" OnClick="btnReset_Click" CausesValidation="False"></asp:Button>
                </td>
            </tr>

             <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    
                </td>
            </tr>



            <tr>
                <td>
                    
                </td>
              
            </tr>
            
        </table>
                      
    </div>
    </form>
        
    
</body>
</html>
