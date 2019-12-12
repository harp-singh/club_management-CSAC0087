<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="Applied_project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        CLUB MANAGEMENT</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <a href="WebForm3.aspx">Welcome</a></p><hr />
    <p>
    <a href="WebForm6.aspx">My Profile</a></p> <hr />
<p>
    <a href="WebForm11.aspx">Users</a></p> <hr />
<p>
    <a href="WebForm12.aspx">Access Requests</a></p> <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <form id="form1" runat="server">
    
        <h2>EDIT USER</h2>
        <p> 
            Email Address&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Input Required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox2" type="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
            <p>
                CLUB MANAGEMENT</p>
        </asp:Content>
        <asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
            <p>
                <a href="file:///C:/Users/Harpreet%20singh/source/repos/Applied%20project/WebForm3.aspx">Welcome</a></p>
            <hr />
            <p>
                <a href="file:///C:/Users/Harpreet%20singh/source/repos/Applied%20project/WebForm9.aspx">My Profile</a></p>
            <hr />
        </asp:Content>
        <asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
            <form id="form1" runat="server">
                <h2>USER PROFILE</h2>
                <p>
                    Email Address&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Input Required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </p>
                <p>
                    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox>
                </p>
                <p>
                    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </p>
                <p>
                    Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </p>
                <p>
                    Date of Birth&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <i class="fa fa-calendar"></i>
                </p>
                <p>
                    Access Type&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" class="DropDownList">
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Member</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </p>
                <p>
                    Phone Number
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </p>
                <p>
                    Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Class="DropDownList">
                        <asp:ListItem>Adventure Sports</asp:ListItem>
                        <asp:ListItem>Technology</asp:ListItem>
                        <asp:ListItem>Soccer</asp:ListItem>
                        <asp:ListItem>Water Sports</asp:ListItem>
                        <asp:ListItem>Hockey</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    <asp:Button ID="Button1" runat="server" class="button" OnClick="Button1_Click" Text="View" Width="108px" />
                </p>
            </form>
        </asp:Content>
        <asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder4">
        </asp:Content>
        <asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
        </asp:Content>
        <asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
            <p>
                CLUB MANAGEMENT</p>
        </asp:Content>
        <asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
            <p>
                <a href="file:///C:/Users/Harpreet%20singh/source/repos/Applied%20project/WebForm3.aspx">Welcome</a></p>
            <hr />
            <p>
                <a href="file:///C:/Users/Harpreet%20singh/source/repos/Applied%20project/WebForm9.aspx">My Profile</a></p>
            <hr />
        </asp:Content>
        <asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
            <form id="form1" runat="server">
                <h2>USER PROFILE</h2>
                <p>
                    Email Address&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Input Required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </p>
                <p>
                    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox>
                </p>
                <p>
                    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </p>
                <p>
                    Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </p>
                <p>
                    Date of Birth&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <i class="fa fa-calendar"></i>
                </p>
                <p>
                    Access Type&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" class="DropDownList">
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Member</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </p>
                <p>
                    Phone Number
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </p>
                <p>
                    Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Class="DropDownList">
                        <asp:ListItem>Adventure Sports</asp:ListItem>
                        <asp:ListItem>Technology</asp:ListItem>
                        <asp:ListItem>Soccer</asp:ListItem>
                        <asp:ListItem>Water Sports</asp:ListItem>
                        <asp:ListItem>Hockey</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    <asp:Button ID="Button1" runat="server" class="button" OnClick="Button1_Click" Text="View" Width="108px" />
                </p>
            </form>
        </asp:Content>
        <asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder4">
        </asp:Content>
        <asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder5">
        </asp:Content>
        <p>
            Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Date of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" type="date" runat="server"></asp:TextBox>
           <i class="fa fa-calendar"></i>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Access Type&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" class="DropDownList" runat="server">
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Management</asp:ListItem>
                <asp:ListItem>Member</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Phone Number <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" class="DropDownList" runat="server">
                <asp:ListItem>Adventure Sports</asp:ListItem>
                <asp:ListItem>Technology</asp:ListItem>
                <asp:ListItem>Soccer</asp:ListItem>                
                <asp:ListItem>Water Sports</asp:ListItem>
                <asp:ListItem>Hockey</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="Input Reauired" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" class="button" runat="server" Text="Save" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" class="button" runat="server" Text="Cancel" OnClick="Button2_Click" />
        </p>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
