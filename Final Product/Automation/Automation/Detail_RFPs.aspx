<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detail_RFPs.aspx.cs" Inherits="Automation.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div id="main">
				<!-- wrapper-main -->
				<div class="wrapper">
					
					
					<!-- content -->
					<div id="content">
						
					<!-- title -->
					<div id="page-title">
						<span class="title">RFP Details </span>
						<span class="subtitle">Review Your RFPs</span>
					</div>
					<!-- ENDS title -->
                    <div id="page-content">
                      
                    <div class="three-fourth ">
							<h6 class="line-divider">Question Answer</h6>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="667px" 
                                AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                                ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Name_Of_Customer" HeaderText="Name Of Customer" 
                                    SortExpression="Name_Of_Customer" />
                                <asp:BoundField DataField="Name_Of_Company" HeaderText="Name Of Company" 
                                    SortExpression="Name_Of_Company" />
                                <asp:BoundField DataField="Object" HeaderText="Object" 
                                    SortExpression="Object" />
                                <asp:BoundField DataField="Technical" HeaderText="Technical" 
                                    SortExpression="Technical" />
                                <asp:BoundField DataField="CMS" HeaderText="CMS" SortExpression="CMS" />
                                <asp:BoundField DataField="Hosts" HeaderText="Hosts" SortExpression="Hosts" />
                                <asp:BoundField DataField="Design" HeaderText="Design" 
                                    SortExpression="Design" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                                
                                
                                
                                SelectCommand="SELECT RFP_Question.Name_Of_Customer, RFP_Question.Name_Of_Company, RFP_Question.Object, RFP_Question.Technical, RFP_Question.CMS, RFP_Question.Hosts, RFP_Question.Design, RFP.ID_RFP FROM RFP_Question INNER JOIN RFP ON RFP_Question.ID_RFP = RFP.ID_RFP AND RFP_Question.ID_RFP_Question = @id">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="" Name="id" QueryStringField="id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        <br />
                        <center>
                        <asp:Button ID="Button1" runat="server" Text="Answer" onclick="Button1_Click" />
                        </center>

						</div>
						<div class="one-fourth last">
							<h6 class="line-divider">Upload File </h6>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="ID_RFP" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:BoundField DataField="Upload_File" HeaderText="Upload_File" 
                                        SortExpression="Upload_File" />
                                    <asp:HyperLinkField DataNavigateUrlFields="Upload_File" 
                                        DataNavigateUrlFormatString="~/Data/{0}" Text="Download" />
                                </Columns>
                            </asp:GridView>
						    
						    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
                                SelectCommand="SELECT Upload_File, ID_RFP_Question, ID_RFP FROM RFP_Question WHERE (ID_RFP = @id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="id" QueryStringField="id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
						    
						<!-- ENDS 1/4 cols -->
                       
                    </div>
                     <h6 class="line-divider">&nbsp;</h6>
                        <h6 class="line-divider">Comment Box</h6>
                        <div class="searchwrapper">
                            <asp:ListView ID="CommentList" runat="server" DataSourceID="CommentsDataSource" >
                             <LayoutTemplate>
                                  <span ID="itemPlaceholder" runat="server" />
                                  <p>
                                       <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                 <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                       </asp:DataPager>
                                  </p>
                             </LayoutTemplate>
                             <ItemTemplate>
                                       <Underline><asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' /> said:</Underline><br />
                                  <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment").ToString().Replace(Environment.NewLine, "<br />") %>' />
                                  
                                  <p align="center">
                                        Post on <asp:Label ID="CommentDateLabel" runat="server" Text='<%# Eval("CommentDate") %>' />
                                  </p>
                             </ItemTemplate>
                             <ItemSeparatorTemplate>
                                  <hr />
                             </ItemSeparatorTemplate>
                        </asp:ListView>
                            <p>
                                <asp:SqlDataSource ID="CommentsDataSource" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>"      
                                    SelectCommand="SELECT CommentMsg.Comment, CommentMsg.CommentDate, aspnet_Users.UserName, CommentMsg.ID_RFP FROM CommentMsg INNER JOIN aspnet_Users ON CommentMsg.UserId = aspnet_Users.UserId INNER JOIN RFP ON CommentMsg.ID_RFP = RFP.ID_RFP AND CommentMsg.ID_RFP = @id ORDER BY CommentMsg.CommentDate DESC ">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="" Name="id" QueryStringField="id" />
                                </SelectParameters>
                                </asp:SqlDataSource>
                                <Underline>Name: <asp:LoginName ID="LoginName1"  runat="server"/></Underline>      <br />
                        <asp:TextBox ID="Comment" runat="server" TextMode="MultiLine" Height="172px" Width="341px"></asp:TextBox><br />
                        <asp:Button ID="PostComment" runat="server" Text="Send" OnClick="PostComment_Click" />
    
     </div>
            </div>
            </div>
            </div>
            </div>
</asp:Content>
