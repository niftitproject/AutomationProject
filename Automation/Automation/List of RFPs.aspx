<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List of RFPs.aspx.cs" Inherits="Automation.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.top-search1
{
         border-style: none;
         border-color: White;
         border-width: 0;
         color: #7e7e7e;
	     font-size: 10px;
	     padding: 0px 35px 0px 10px;
	     background-image: url('../img/Search.png');
}
</style>
     <div id="main">
				<!-- wrapper-main -->
				<div class="wrapper">
					
					
					<!-- content -->
					<div id="content">
						
					<!-- title -->
					<div id="page-title">
						<span class="title">List of RFPs </span>
						<span class="subtitle">Choose Your RFPs</span>
                    
                     </div>
                       
                         
					<!-- ENDS title -->
                    <div>
                     <div class="searchwrapper">
                            <asp:TextBox ID="SearchTxt" runat="server" BackColor="Transparent" CssClass="top-search1" BorderColor="Transparent" placeholder="RFP ID, Company Name, Option..." Height="29px" Width="181px"></asp:TextBox><br />
                            <br />
                            Budget 
                            <br />
                            <br />
                            From  
                            <asp:DropDownList ID="Price1" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                                <asp:ListItem>500</asp:ListItem>
                                <asp:ListItem>1000</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp; to&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="Price2" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                                <asp:ListItem>500</asp:ListItem>
                                <asp:ListItem>1000</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                                <asp:ListItem>>2000</asp:ListItem>
                            </asp:DropDownList><br />
                            <asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="Price1" controltocompare="Price2" Operator="LessThan" type="Integer" Font-Bold ForeColor ="Red" Font-Italic errormessage="Note:The first number should be smaller than the second number!" /><br />                            
                            Field of Business: 
                            <br />
                            <br />
                            <asp:DropDownList ID="Field" runat="server">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>Web</asp:ListItem>
                                <asp:ListItem>Mobile</asp:ListItem>
                                <asp:ListItem>Software</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            
                            <asp:Button ID="Search" runat="server" Text="Seach" OnClick="Search_Click" style="height: 26px" />
                            <br />
                            <br />
                            <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataSourceID="SqlDataSource1" Width="962px" 
                            ForeColor="#333333" GridLines="None" DataKeyNames="ID_RFP_Question">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Name_Of_Customer" HeaderText="Name Of Customer" 
                                    SortExpression="Name_Of_Customer" />
                                <asp:BoundField DataField="Name_Of_Company" HeaderText="Name Of Company" 
                                    SortExpression="Name_Of_Company" />
                                <asp:BoundField DataField="RFP_Title" HeaderText="RFP Title" 
                                    SortExpression="RFP_Title" />
                                <asp:BoundField DataField="Deadline" HeaderText="Deadline" 
                                    SortExpression="Deadline" />
                                <asp:BoundField DataField="Description" HeaderText="Option" SortExpression="Description" />
                                <asp:BoundField DataField="Budget" HeaderText="Budget" 
                                    SortExpression="Budget" />
                                <asp:BoundField DataField="Currency" HeaderText="Currency" 
                                    SortExpression="Currency" />
                                <asp:HyperLinkField DataNavigateUrlFields="ID_RFP_Question" 
                                    DataNavigateUrlFormatString="Detail_RFPs.aspx?id={0}" Text="RFP Detail" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                            
                            
                            
                            
                                
                                
                                SelectCommand="SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.RFP_Title, RFP_Question.Deadline, RFP_Question.Budget, RFP_Question.Options, RFP_Question.ID_RFP_Question, RFP_Options.Description, RFP_Question.Currency FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP INNER JOIN RFP_Options ON RFP.ID_Options = RFP_Options.ID_Options">
                        </asp:SqlDataSource>
                    </div>
                    </div>                
    </div>
    </div>
    </div>
</asp:Content>
