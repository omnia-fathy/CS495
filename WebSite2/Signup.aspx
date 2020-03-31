<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    

    protected void btnSumbit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        string strInsert = "INSERT INTO Student "
          + " VALUES('" + idtextbox.Text + "', '"
          + TextBox1.Text + "', '"
           + TextBox2.Text + "', '"
           + RadioButtonList1.SelectedValue + "', '"
          + TextBox5.Text + "', '"
          + Address.Text + "', '"
          + TextBox4.Text + "', '"
          + DropDownList1.SelectedValue + "', '"
          + password.Text + "', '"
          + TextBox8.Text + "')";


        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            Msg.Text = "Welcome " + TextBox1.Text + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                Msg.Text = "Username already exists, Please Choose Another!!";
            else
                Msg.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            Msg.Text = "Sorry, System Error, You may Try later!!";
        }

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>

</head>
<body>
    <form id="form2" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label13" runat="server" Text="New Student"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="idtextbox" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="149px">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Faculty"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Confirm password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Nationality"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSumbit" runat="server" OnClick="btnSumbit_Click" Text="Sumbit" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Msg" runat="server" Font-Names="Adobe Arabic" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
