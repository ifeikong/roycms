﻿<%@ Page Title="产品信息表 添加产品的时候需要添加用户等级ID为1的价格信息（0元/月）。删除产品的时候需要删除对应的价格信息和产品扩展信息。
添加产品的时候需要添加对应类型的产品扩展信息。删除产品的时候" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="DNSABC.Web.DNSABC_ProductInfo.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script language="javascript" src="/js/CheckBox.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--Title -->

            <!--Title end -->

            <!--Add  -->

            <!--Add end -->

            <!--Search -->
            <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
                <tr>
                    <td style="width: 80px" align="right" class="tdbg">
                         <b>关键字：</b>
                    </td>
                    <td class="tdbg">                       
                    <asp:TextBox ID="txtKeyword" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Text="查询"  OnClick="btnSearch_Click" >
                    </asp:Button>                    
                        
                    </td>
                    <td class="tdbg">
                    </td>
                </tr>
            </table>
            <!--Search end-->
            <br />
            <asp:GridView ID="gridView" runat="server" AllowPaging="True" Width="100%" CellPadding="3"  OnPageIndexChanging ="gridView_PageIndexChanging"
                    BorderWidth="1px" DataKeyNames="Id" OnRowDataBound="gridView_RowDataBound"
                    AutoGenerateColumns="false" PageSize="10"  RowStyle-HorizontalAlign="Center" OnRowCreated="gridView_OnRowCreated">
                    <Columns>
                    <asp:TemplateField ControlStyle-Width="30" HeaderText="选择"    >
                                <ItemTemplate>
                                    <asp:CheckBox ID="DeleteThis" onclick="javascript:CCA(this);" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField> 
                            
		<asp:BoundField DataField="ProductType" HeaderText="产品类型 1" SortExpression="ProductType" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="ProductName" HeaderText="名称" SortExpression="ProductName" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="ProductPic" HeaderText="产品图片" SortExpression="ProductPic" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="ProductDescription" HeaderText="产品描述 编辑器区域" SortExpression="ProductDescription" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="ProductTableName" HeaderText="模型的表格名称 Product" SortExpression="ProductTableName" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="MONTH" HeaderText="月数 产品默认订购时限" SortExpression="MONTH" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="State" HeaderText="产品状态 0为停用" SortExpression="State" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="isOrder" HeaderText="权重" SortExpression="isOrder" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="Remark" HeaderText="备注" SortExpression="Remark" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="UpdateTime" HeaderText="更新时间" SortExpression="UpdateTime" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" ItemStyle-HorizontalAlign="Center"  /> 
                            
                            <asp:HyperLinkField HeaderText="详细" ControlStyle-Width="50" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Show.aspx?id={0}"
                                Text="详细"  />
                            <asp:HyperLinkField HeaderText="编辑" ControlStyle-Width="50" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Modify.aspx?id={0}"
                                Text="编辑"  />
                            <asp:TemplateField ControlStyle-Width="50" HeaderText="删除"   Visible="false"  >
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                         Text="删除"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>
               <table border="0" cellpadding="0" cellspacing="1" style="width: 100%;">
                <tr>
                    <td style="width: 1px;">                        
                    </td>
                    <td align="left">
                        <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click"/>                       
                    </td>
                </tr>
            </table>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCheckright" runat="server">
</asp:Content>--%>
