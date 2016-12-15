<%@ Page Language="C#" MasterPageFile="~/site2.Master" AutoEventWireup="true" CodeBehind="emp_reg.aspx.cs" Inherits="myjob.emp_reg" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>



<script runat="server">

 protected void okbutton(object sender, EventArgs e)
        {


            try
            {
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                SqlConnection con = new SqlConnection();
                cmd.Connection = con;
                con.ConnectionString =@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Vinod\MCA\Projects\5th sem\vinod\myjob\App_Data\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into [emp reg] values('" + Txtuname.Text + "','" + txtpasswd.Text + "','" + compname.Text + "','" + loc.Text+ "'," + noemp.Text + ",'" + url.Text + "','" + txtcotype.Text + "'," + estyear.Text + ",'" + jobid.Text + "','" + jobtitle.Text + "'," + expreq.Text + ",'"+skill.Text+"','" + minsal.Text + "','" + qualifi.Text + "')";
                dr = cmd.ExecuteReader();
                lblsms.Text = "Your Account Has Been Sucessfully Created";
               Response.Redirect("emplogin.aspx");
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

    <table class="style10" 
    style="margin-top: 0px; height: 525px; width: 1323px; "center">
        <tr>
            <td bgcolor="#333333" colspan="2" 
                style="color: #00FFFF; font-family: Verdana; font-size: medium; font-weight: 900; font-style: normal;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Company Registration Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User name :</td>
            <td style="width: 1151px">
                <asp:TextBox ID="Txtuname" runat="server" Width="258px" 
                    ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtuname"
                    ErrorMessage="Username missing!"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
  
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Password:</td>
            <td style="width: 1151px">
                <asp:TextBox ID="txtpasswd" TextMode="Password" runat="server" Width="260px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpasswd"
                    ErrorMessage="Password missing!"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Name :</td>
            <td style="width: 1151px; height: 26px;">
                <asp:TextBox ID="compname" runat="server" Width="258px" 
                    ontextchanged="compname_TextChanged"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="compname"
                    ErrorMessage="Company Name is missing!"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="compname" 
                    ErrorMessage="character only" 
                    ValidationExpression="([aA-zA]*)"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 22px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Location :</td>
            <td style="width: 1151px; height: 22px;">
                <asp:DropDownList ID="loc" runat="server" Height="16px" Width="264px">
                    <asp:ListItem Selected="True">shimoga</asp:ListItem>
                    <asp:ListItem>Bangalore</asp:ListItem>
                    <asp:ListItem>Mysore</asp:ListItem>
                    <asp:ListItem>Bombay</asp:ListItem>
                    <asp:ListItem>Culcuta</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kashmir</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Davangere</asp:ListItem>
                    <asp:ListItem>Ahamadabad</asp:ListItem>
                </asp:DropDownList>
               
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No Of&nbsp; Emplyees :</td>
            <td style="width: 1151px">
                <asp:TextBox ID="noemp" runat="server" Width="254px"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="noemp"
                    ErrorMessage="No Of Emloyee is missing!"></asp:RequiredFieldValidator>
                
           <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="noemp" 
                    ErrorMessage="Enter numbers only" MaximumValue="30000" 
                    MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 34px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Web URL :</td>
            <td style="width: 1151px; height: 34px;">
                <asp:TextBox ID="url" runat="server" Width="251px"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="url"
                    ErrorMessage="Web URL is missing!"></asp:RequiredFieldValidator>
                    
                <asp:RegularExpressionValidator 
                   ID="RegularExpressionValidator1" runat="server" ControlToValidate="url" 
                    ErrorMessage="Enter Value In Web Site Address Format" 
                    ValidationExpression="\w+([-+.']\w+)*\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Type :</td>
            <td style="width: 1151px">
                <asp:DropDownList ID="txtcotype" runat="server" Height="16px" Width="268px">
                    <asp:ListItem Selected="True">IT-software</asp:ListItem>
                    <asp:ListItem>marketing</asp:ListItem>
                    <asp:ListItem>Banking</asp:ListItem>
                     <asp:ListItem>Engineering and Design</asp:ListItem>
                    <asp:ListItem>Architechture</asp:ListItem>
                    <asp:ListItem>Export and Import</asp:ListItem>
                    <asp:ListItem>HR and Management</asp:ListItem>
                    <asp:ListItem>Hotels and Retaurents</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Establish Year :</td>
            <td style="width: 1151px">
                <asp:TextBox ID="estyear" runat="server" Width="251px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="estyear"
                    ErrorMessage="Established Year is missing!"></asp:RequiredFieldValidator>
                    
                <asp:RangeValidator ID="RangeValidator2" 
                    runat="server" ControlToValidate="estyear" 
                    ErrorMessage="Enter Value  Less Than 2010 and Greater Than 1900" 
                    MaximumValue="2009" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Job Id :</td>
            <td style="width: 1151px">
                <asp:TextBox ID="jobid" runat="server" Width="261px" Height="25px"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="jobid"
                    ErrorMessage="Job Id is missing!"></asp:RequiredFieldValidator>
                    
                    
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job title:</td>
            <td style="width: 1151px">
                <asp:TextBox ID="jobtitle" runat="server" Width="260px"></asp:TextBox>
                
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="jobtitle"
                    ErrorMessage="Job Title is missing!"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator4" runat="server" ControlToValidate="jobtitle" 
                    ErrorMessage="Enter Job Title In Right Format" 
                    ValidationExpression="([aA-zZ]*)"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;Experience Required :</td>
            <td style="width: 1151px">
                <asp:DropDownList ID="expreq" runat="server" Width="77px" Height="16px">
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Skills 
                Required:&nbsp;</td>
            <td style="width: 1151px">
                <asp:TextBox ID="skill" runat="server" Width="260px"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="skill"
                    ErrorMessage="Qualification is missing!"></asp:RequiredFieldValidator>
                    
                    
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="skill" ErrorMessage="Enter Qualification In Right Format" 
                    ValidationExpression="([aA-zZ]*)"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Min Salary :</td>
            <td style="width: 1151px">
                <asp:TextBox ID="minsal" runat="server" Width="257px"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="minsal"
                    ErrorMessage="Minimal Salary is missing!"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="minsal" ErrorMessage="Enter Value Greater Than 4 Digits" 
                    MaximumValue="80000000" MinimumValue="1111" Type="Integer"></asp:RangeValidator>
                
            </td>
                                    <td>
                                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 12px;">
                &nbsp;&nbsp; QualificationRequired :</td>
            <td style="width: 1151px; height: 12px;">
                <asp:TextBox ID="qualifi" runat="server" Width="255px" Height="21px"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="qualifi"
                    ErrorMessage="Qualification is missing!"></asp:RequiredFieldValidator>
                    
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="qualifi" ErrorMessage="Enter Qualification In Right Format" 
                    ValidationExpression="([aA-zZ]*)"></asp:RegularExpressionValidator>
            
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 12px;">
                &nbsp;</td>
            <td style="width: 1151px; height: 12px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 12px;">
                <asp:Label ID="lblsms" runat="server" Text=""></asp:Label>
            </td>
            <td style="width: 1151px; height: 12px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Button ID="Done" runat="server" Text="Done" Height="35px" 
                    Width="71px" onclick="okbutton" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 12px;">
                &nbsp;</td>
            <td style="width: 1151px; height: 12px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 12px;">
                &nbsp;</td>
            <td style="width: 1151px; height: 12px;">
                &nbsp;&nbsp;</td>
        </tr>
    </table>
</asp:Content>






