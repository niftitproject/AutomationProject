<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="notiProposalAccepted.ascx.cs" Inherits="Automation.Agency.notiProposalAccepted" %>

<asp:ScriptManager ID="ScriptManager1" runat="server" />
<asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
    <Triggers>
        <asp:AsyncPostBackTrigger controlid="timerRequest" eventname="tick" />
    </Triggers>
    <ContentTemplate>
        <asp:Timer runat="server" id="timerRequest" Interval="400" 
            ontick="timerRequest_Tick" />
        <asp:HyperLink ID="hypNoti" runat="server" ForeColor="Red" 
            NavigateUrl="~/Agency/Accepted_Proposals.aspx">[hypNoti]</asp:HyperLink>
    </ContentTemplate>
</asp:UpdatePanel>