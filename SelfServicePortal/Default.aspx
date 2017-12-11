<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SelfServicePortal._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div id="Container" style="width:900px; height:600px; margin:0 auto; ">

            <div id="ModuleList" class="columnStick">
                <asp:Label ID="Label_ServicesList" runat="server" Text="Services" CssClass="infoColumnLabel"></asp:Label>

                <!- Dynamick listing from here !>


                <asp:ListView ID="AvalibleServices_List" runat="server">

                    <LayoutTemplate>
                        <table>
                        <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="serviceModuleContainer">
                            <asp:Label CssClass="columnLabel" runat="server" ID="ServiceName"><%#Eval("Name")%></asp:Label>
                        </td>
                    </tr>
                </ItemTemplate>

                </asp:ListView>

<%--                    <div class="serviceModuleContainer" onclick="">
                        <asp:Label ID="Label1" runat="server" Text="Create server" CssClass="columnLabel"></asp:Label>
                    </div>




<%--                <div class="serviceModuleContainer" onclick="">
                    <asp:Label ID="ModuleList_AvalibleModule1" runat="server" Text="Create server" CssClass="columnLabel"></asp:Label>
                </div>

                <div class="serviceModuleContainer" onclick="">
                    <asp:Label ID="ModuleList_AvalibleModule2" runat="server" Text="Install software" CssClass="columnLabel"></asp:Label>
                </div>--%>
                <!- End dynamick listing !>

            </div>

            <div id="ServiceInfoWD" class="columnStick">
                <asp:Label ID="Label_ServiceInfoWD" runat="server" Text="Service Info" CssClass="infoColumnLabel"></asp:Label>
            

                <div class="serviceModuleContainer">
                    <asp:Label ID="ServiceName" runat="server" CssClass="columnLabel">Service name:<br /> db text her  </asp:Label>
                </div>

                 <div class="serviceModuleContainer" >
                    <asp:Label ID="ServiceDescription" runat="server" CssClass="columnLabel">Service description:<br /> db text her </asp:Label>
                </div>


            </div>

            <div id="ServiceParameters" class="columnStick">
                <asp:Label ID="Label_ServiceModule" runat="server" Text="Service Paramaters" CssClass="infoColumnLabel"></asp:Label>
               
                 <div class="serviceModuleContainer" >
                    <asp:Label ID="Label_Service_ExecutionTimer" runat="server" CssClass="columnLabel">Execution timer:<br>(DD-MM-YYYY HH:MM:SS)
                    </asp:Label>
                     <input id="Service_ExecutionTimer_input" type="text" style="margin:10px 5px 10px 5px; width:100%-10px"/>
                </div>

                 <div class="serviceModuleContainer">
                    <input type="checkbox" ID="MustBeDoneBefore">Must have finished by</input>
                    <asp:Label ID="Label2" runat="server" CssClass="columnLabel">(DD-MM-YYYY HH:MM:SS)
                    </asp:Label>
                     <input id="Service_MustBeDoneBefore_input" type="text" style="margin:10px 5px 10px 5px; width:100%-10px"/>
                </div>

                 <div class="serviceModuleContainer">
                    <input type="checkbox" ID="ServiceIsRecurrent">Recurrent</input>
                    <asp:Label ID="Label_Service_IsRecurrent" runat="server" CssClass="columnLabel">insert limiter, every hour, day, week, month etc.
                    </asp:Label>
                     <input id="Service_IsRecurrent_input" type="text" style="margin:10px 5px 10px 5px; width:100%-10px"/>
                </div>

                 <div class="serviceModuleContainer" >
                    <asp:Label ID="ServiceOwnerName" runat="server" CssClass="columnLabel">Server owner:<br /> db text her </asp:Label>
                </div>
                 <div class="serviceModuleContainer" >
                    <asp:Label ID="ServerOwnerDepartment" runat="server" CssClass="columnLabel">Server owner department<br /> db text her </asp:Label>
                </div>
                 <div class="serviceModuleContainer" >
                    <asp:Label ID="ApplicationToRunName" runat="server" CssClass="columnLabel">Application name:<br /> db text her </asp:Label>
                </div>
                 <div class="serviceModuleContainer" >
                    <asp:Label ID="ApplicationFilePath" runat="server" CssClass="columnLabel">Application file path<br /> db text her </asp:Label>
                </div>
                

            </div>

            <div id="ServiceInfo" class="columnStick">
                <asp:Label ID="Label_ServiceInfo" runat="server" Text="Service info" CssClass="infoColumnLabel"></asp:Label>
            
                 <div class="serviceModuleContainer">
                    <asp:Label ID="ServiceInfo_TicketSubmitter" runat="server" CssClass="columnLabel">
                        Ticket submitter <br /> db text here
                    </asp:Label>
                </div>
                 <div class="serviceModuleContainer" onclick="">
                    <asp:Label ID="ServiceInfo_TicketNr" runat="server" CssClass="columnLabel">
                        Ticket nr: db text here
                    </asp:Label>
                </div>
                 <div class="serviceModuleContainer" onclick="">
                    <asp:Label ID="ServiceInfo_TicketCreatedAt" runat="server" CssClass="columnLabel">
                        Ticket created at: insert current datetime here
                    </asp:Label>
                </div>
                 <div class="serviceModuleContainer" onclick="">
                    <asp:Label ID="ServiceInfo_TicketApproverBy" runat="server" CssClass="columnLabel">
                        Ticket approver: <br /> db text here
                    </asp:Label>
                </div>
                <div class="serviceModuleContainer textarea" onclick="">
                    <textarea style="overflow:hidden" id="ServiceInfo_ConflictList" runat="server" cols="20" rows="4" maxlength="100" placeholder="Conflicting servies" readonly></textarea>
                </div>

            </div>

        </div>

</asp:Content>
