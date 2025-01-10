<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="HoangAnh.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{           
        }
        .auto-style1 {
            width: 50%;
            border:solid 0.5px green;

        }
        .header{
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            background-color:aquamarine;
            font-weight:700;
        }
        .btn{
            border-radius: 4px;
            font-size: 20px;
            border:none;
            margin-right:8px;
        }
        .btncong{
            background-color:orangered;
        }
        .btntru{
            background-color:yellow;
        }
        .btnnhan{
            background-color:mediumpurple;
        }
        .btnchia{
            background-color:forestgreen;
        }

        .auto-style2 {
            width: 415px;
        }
        .auto-style3 {
            width: 415px;
            text-align: right;
        }

    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr class="header" >
                    <td colspan="2" style="text-align: center">TÍNH TOÁN ĐƠN GIẢN</td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">Nhập số thứ nhất</td>
                    <td>
                        <asp:TextBox ID="txtSo1" runat="server" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập số thứ hai</td>
                    <td>
                        <asp:TextBox ID="txtSo2" runat="server" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                     <td class="auto-style3">
                        <asp:Button ID="btCong" runat="server" Text="Cộng" OnClick="btCong_Click" CssClass="btn btncong" style="margin-left: 0px"  />
                        </td>
                    <td>
                        <asp:Button ID="btTru" runat="server" Text="Trừ" OnClick="btTru_Click"  CssClass="btn btntru" />
                        <asp:Button ID="btNhan" runat="server" Text="Nhân" OnClick="btNhan_Click"  CssClass="btn btnnhan" />
                        <asp:Button ID="btChia" runat="server" Text="Chia" OnClick="btChia_Click" CssClass="btn btnchia" />
                     </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #FF0000" >Kết quả</td>
                    <td>
                        <asp:TextBox ID="txtKQ" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>              
            </table>
        </div>
    </form>
</body>
</html>
