<%@ Page Language="C#" MasterPageFile="~/site2.Master" AutoEventWireup="true" CodeBehind="jseeker_postresume.aspx.cs" Inherits="myjob.jseeker_reg" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
    
    try
            {
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                SqlConnection con = new SqlConnection();
                cmd.Connection = con;
                con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Vinod\MCA\Projects\5th sem\vinod\myjob\App_Data\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into [post resume] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + ddl1.Text + "','" + ddl2.Text + "','" + TextBox11.Text + "'," + TextBox6.Text + ",'" + ddl3.Text + "'," + ddl4.Text + ",'" + TextBox7.Text + "','" + ddl5.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
                dr = cmd.ExecuteReader();
           
                    lblsms.Text = "Your Account Has Been Sucessfully Created";
                    Response.Redirect("seekers_login.aspx");
                dr.Close();
                con.Close();
            }

            catch (Exception ex)
            {
                lblsms.Text = ex.Message;
            }



        }

</script>

















<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager 
            ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    </p>
    <div class="" 
        style="font-family: 'Courier New'; font-size: large; font-style: oblique; color: #0000FF; text-decoration: blink; font-weight: 800; text-transform: none;">
        &nbsp;&nbsp;&nbsp;<span style="font-style: normal; "><span 
            style="font-family: cursive; color: #0000FF; font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp; Become a member of jobs.com and 
        post your resume now.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></div>
    <p style="color: #0000FF">
    
    
        <table align="left" class="style10" style="width: 709px; margin-right: 306px;">
            <tr>
                <td style="font-family: Garamond; color: #353535;" colspan="2">
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="User Name is missing!"></asp:RequiredFieldValidator>
                    
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Password is missing!"></asp:RequiredFieldValidator>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Addres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </b>
                    <asp:TextBox ID="TextBox3" runat="server" Height="35px" Rows="2" 
                        TextMode="MultiLine" Width="213px"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="Address is missing!"></asp:RequiredFieldValidator>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox3" 
                        ErrorMessage="" ValidationExpression="([aA-zZ]*)">
                        </asp:RegularExpressionValidator>
                    <b>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Email Id is missing!"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" 
                        ErrorMessage="Enter Value In Email ID Format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    <b>&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    <asp:DropDownList ID="ddl1" runat="server" Height="16px" Width="104px">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marital Status:&nbsp;&nbsp;&nbsp; </b><asp:DropDownList ID="ddl2" runat="server" Height="16px" Width="94px">
                        <asp:ListItem Selected="True">Single</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                    </asp:DropDownList>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date of birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11"
                    ErrorMessage="dob is missing!"></asp:RequiredFieldValidator>
                    
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact no:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox6" runat="server" Height="21px"></asp:TextBox>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="Contact no is missing!"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    
                    
                   
                   <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" 
                        ErrorMessage="Enter Value In 10 Digit Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    
                    
                    <b>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:DropDownList ID="ddl3" runat="server" Width="174px">
                    
                    
                    
                    <asp:ListItem Selected="True">INDIA</asp:ListItem>
                              <asp:ListItem>Australia</asp:ListItem>
                              <asp:ListItem>Bangladesh</asp:ListItem>
                              <asp:ListItem>Canada</asp:ListItem> 
                              <asp:ListItem>Doha</asp:ListItem>
                              <asp:ListItem>France</asp:ListItem>
                              <asp:ListItem>Indonesia</asp:ListItem>
                              <asp:ListItem>Italy</asp:ListItem>
                              <asp:ListItem>Kenya</asp:ListItem>
                              <asp:ListItem>Lebanon</asp:ListItem>
                              <asp:ListItem>Malaysia</asp:ListItem>
                              <asp:ListItem>Mauritius</asp:ListItem>
                              <asp:ListItem>Nepal</asp:ListItem>
                              <asp:ListItem>New Zealand</asp:ListItem>
                              <asp:ListItem>Oman</asp:ListItem>
                              <asp:ListItem>Qatar</asp:ListItem>
                              <asp:ListItem>Russia</asp:ListItem>
                              <asp:ListItem>Singapore</asp:ListItem>
                              <asp:ListItem>South Korea</asp:ListItem> 
                              <asp:ListItem>Sri Lanka</asp:ListItem>
                              <asp:ListItem>Switzerland</asp:ListItem>
                              <asp:ListItem>UAE</asp:ListItem>
                              <asp:ListItem>US</asp:ListItem>
                              <asp:ListItem>Zimbabwe</asp:ListItem>
                              
                              
 
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    </asp:DropDownList>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience :</b>Years&nbsp;<asp:DropDownList ID="ddl4" runat="server" Width="90px" 
                        Height="16px">
                        <asp:ListItem Selected="True">0</asp:ListItem>
                         <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                    </asp:DropDownList>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Skill :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
                    ErrorMessage="Skill is missing!"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox7" 
                        ErrorMessage="" ValidationExpression="([aA-zZ]*)"></asp:RegularExpressionValidator>
                    
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Function Area :&nbsp; </b><asp:DropDownList ID="ddl5" runat="server" Width="197px" Height="16px">
                    
                    <asp:ListItem Selected="True">IT-Software</asp:ListItem>
                    <asp:ListItem>Marketing</asp:ListItem>
                    <asp:ListItem>Banking</asp:ListItem>
                    <asp:ListItem>Engineering and Design</asp:ListItem>
                    <asp:ListItem>Architechture</asp:ListItem>
                    <asp:ListItem>Export and Import</asp:ListItem>
                    <asp:ListItem>HR and Management</asp:ListItem>
                    <asp:ListItem>Hotels and Retaurents</asp:ListItem>
                    
                    
                    </asp:DropDownList>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualifications:&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8"
                    ErrorMessage="Qualifications is missing!"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                   
                    <b>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hobbies:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><asp:TextBox ID="TextBox9" runat="server"> </asp:TextBox>
                    
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9"
                    ErrorMessage="Hobbies is missing!"></asp:RequiredFieldValidator>
                    
                    &nbsp;&nbsp;&nbsp;<span style="font-style: normal; ">
                    
                   
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Achievements:&nbsp;&nbsp; </b><asp:TextBox ID="TextBox10" runat="server" Height="31px" TextMode="MultiLine"></asp:TextBox>
                    
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10"
                    ErrorMessage="Achievements is missing!"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="lblsms" runat="server" Text="" style="font-weight: 700"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Create Account and post Resume" 
                        Height="40px" Width="275px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 174px; font-family: Garamond; color: #353535;">
                    &nbsp;</td>
                <td style="width: 219px">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/js.jpg" 
            style="margin-left: 0px" />
    </p>
    <p align="center">
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        
    </p>




</asp:Content>
