<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NotiUser.ascx.cs" Inherits="Automation.User.NotiUser" %>
<asp:ScriptManager ID="ScriptManager1" runat="server" />
<asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
    <Triggers>
        <asp:AsyncPostBackTrigger controlid="timerRequest" eventname="tick" />
    </Triggers>
    <ContentTemplate>
        <asp:Timer runat="server" id="timerRequest" Interval="400" 
            ontick="timerRequest_Tick" />
        <asp:HyperLink ID="hypNoti1" runat="server" ForeColor="Red" 
            NavigateUrl="~/User/List_Of_RFP_Answer.aspx">[hypNoti]</asp:HyperLink>
        &nbsp;
    </ContentTemplate>
</asp:UpdatePanel>