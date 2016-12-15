<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <script runat="server">

 protected void button1(object sender, EventArgs e)
        {


            try
            {
                //SqlDataReader dr;
                SqlCommand cmd = new SqlCommand();
                SqlConnection con = new SqlConnection();
                cmd.Connection = con;
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into guru1 values('" + textbox1.Text + "','" + textbox2.Text + "')";
                dr = cmd.ExecuteReader();
                lable1.Text = "Your Account Has Been Sucessfully Created";
               Response.Redirect("emplogin.aspx");
                dr.Close();
                con.Close();
            }

            catch (Exception ex)
            {
                lable1.Text = ex.Message;
            }



        }

</script>
    <style type="text/css">

        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 2px;
            background-image: url('pho.jpg');
        }
        .style6
        {
            width: 85px;
            height: 25px;
        }
        .style5
        {
            width: 241px;
            height: 25px;
        }
        .style7
        {
            width: 85px;
        }
        .style3
        {
            width: 241px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <table class="style1" 
                style="background-color: #C0C0C0; background-image: none;">
                <tr>
                    <td class="style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                    </td>
                </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
