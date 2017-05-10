<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Automation.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="wrapper">
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F7DE" 
                    BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Names="Verdana" Font-Size="10pt" Width="968px">
                <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" 
                    HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" 
                    ForeColor="#FFFFFF" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
                    VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" />
    </asp:CreateUserWizard>
            </div>
    
</asp:Content>
