<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="jobseekrsinfo.aspx.cs" Inherits="myjob.new6" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



 <table cellpadding="0" cellspacing="0" 
    style="width: 101%; height: 537px; vertical-align:top">
        <tr>
            <td style="width: 485px; height: 4px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td rowspan="11" valign="top">
          
                <p dir="ltr" style="height: 58px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/example7.jpg" 
                        BackColor="#0000CC" BorderColor="#660033" Height="144px" Width="176px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</p>
                
                &nbsp;
                                        <br />
                                        <br />
&nbsp;<br />
                                        </td>
        </tr>
        <tr>
            <td style="padding: 1px 4px; width: 485px" bgcolor="#000066">
&nbsp;&nbsp; <span class="style18" 
                    style="font-family: 'MS Reference Sans Serif'; font-weight: bold">&nbsp;<span 
                    style="color: #FF00FF"> </span></span>
                <span style="font-family: 'MS Reference Sans Serif'; font-weight: bold">
                <span style="border: 3px inset #666666; padding: 1px 4px; color: #00CC00; font-size: large">
                Job Seekers Informations</span></span> <br><br></td>
        </tr>

        <tr>
            <td style="padding: 1px 4px; width: 485px" valign="top">
                <asp:SqlDataSource ID="empdatasource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [user name] AS user_name, [email id] AS email_id, [address], [contact no] AS contact_no, [country], [exp], [skill], [fun_area], [qualification] FROM [post resume]" 
                    DeleteCommand="DELETE FROM [post resume] WHERE [user name] = @user_name" 
                    InsertCommand="INSERT INTO [post resume] ([user name], [email id], [address], [contact no], [country], [exp], [skill], [fun_area], [qualification]) VALUES (@user_name, @email_id, @address, @contact_no, @country, @exp, @skill, @fun_area, @qualification)" 
                    
                    UpdateCommand="UPDATE [post resume] SET [email id] = @email_id, [address] = @address, [contact no] = @contact_no, [country] = @country, [exp] = @exp, [skill] = @skill, [fun_area] = @fun_area, [qualification] = @qualification WHERE [user name] = @user_name">
                    <DeleteParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                    </DeleteParameters>
                        
                        <UpdateParameters>
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="contact_no" Type="Int64" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="exp" Type="String" />
                        <asp:Parameter Name="skill" Type="String" />
                        <asp:Parameter Name="fun_area" Type="String" />
                        
                            <asp:Parameter Name="qualification" Type="String" />
                            <asp:Parameter Name="user_name" Type="String" />
                        
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="contact_no" Type="Int64" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="exp" Type="String" />
                        <asp:Parameter Name="skill" Type="String" />
                        
                        <asp:Parameter Name="fun_area" Type="String" />
                        <asp:Parameter Name="qualification" Type="String" />
                        
                    </InsertParameters>
                
                
                
                
                </asp:SqlDataSource>
                
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="empdatasource1" Width="543px" 
                    DataKeyNames="user_name" ForeColor="Black" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCC99" />
                    <RowStyle BackColor="#F7F7DE" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Remove" 
                            ShowDeleteButton="True" />
                        <asp:BoundField DataField="user_name" HeaderText="user_name" ReadOnly="True" 
                            SortExpression="user_name" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" 
                            SortExpression="email_id" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                            SortExpression="contact_no" />
                        <asp:BoundField DataField="country" HeaderText="country" 
                            SortExpression="country" />
                        <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
                        <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
                        <asp:BoundField DataField="qualification" HeaderText="qualification" 
                            SortExpression="qualification" />
                    </Columns>
                    <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="sms" runat="server" 
                    Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                   

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            &nbsp;&nbsp;
            </td>
        </tr>





















        <tr>
            <td style="padding: 1px 4px; width: 485px" valign="top">
                &nbsp;</td>
        </tr>





















</asp:Content>
