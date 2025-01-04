<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            height: 14px;
        } 
        .auto-style3 {
            width: 245px;
            height: 21px;
        }
        
    </style>
</head>
<body>
   <form id="form1" runat="server">
        
       <table class="container w-50">
           <tr>
               <td class="text-center h3 bg-primary" colspan="2">ĐƠN ĐẶT HÀNG&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style2">Khách hàng</td>
               <td>
                   <asp:TextBox ID="txtKH" runat="server" CssClass="form-control mb-2"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style2">Địa chỉ</td>
               <td>
                   <asp:TextBox ID="txtDC" runat="server" CssClass="form-control mb-2"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style2">Mã số thuế</td>
               <td>
                   <asp:TextBox ID="txtThue" runat="server" CssClass="form-control mb-2"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style3">Chọn các loại bánh sau:</td>
               <td class="auto-style1">Danh sách bánh được đặt:</td>
           </tr>
           <tr>
               <td class="auto-style2 text-center">
                   <asp:DropDownList CssClass="mb-2" ID="DDlLoaiBanh" runat="server" Width="131px">
                   </asp:DropDownList>
                   <br />
                   Số lượng :<asp:TextBox ID="txtSoLuong" runat="server" Width="74px" ></asp:TextBox>cái
               </td>
               <td>
                   <asp:ListBox ID="LBBanhDat" runat="server" Width="166px" SelectionMode="Multiple"></asp:ListBox>
                   <asp:ImageButton ID="btXoa" runat="server" ImageUrl="~/Images/delete.gif" Width="29px" OnClick="btXoa_Click" />
               </td>
           </tr>
           <tr>
               <td class="auto-style2 text-center">
                   <asp:Button CssClass="text-center mb-2" ID="btThemBanh" runat="server" Text=">" OnClick="btThemBanh_Click" />
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td colspan="2" class="text-center">
                   <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="In đơn đặt hàng" OnClick="Button2_Click" />
                   <br />                   
               </td>
           </tr> 
           <tr>
               <td colspan="2">
                   <asp:Label ID="lblHoaDon" runat="server" Text="" style="text-align: left"></asp:Label>                  
               </td>
           </tr>   
       </table>
        
    </form>
    
</body>
</html>
