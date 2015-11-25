<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 55px;
        }
        .auto-style4 {
            width: 55px;
        }
        .auto-style5 {
            width: 900px;
            height: 41px;
        }
        .auto-style6 {
            width: 900px;
            height: 154px;
        }
        .auto-style7 {
            width: 900px;
            height: 42px;
        }
        .auto-style8 {
            width: 900px;
            height: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
    <p>
        <h1>
            <img alt="" class="auto-style6" src="header.jpg" />
        </h1>
        <p>
            &nbsp;<img alt="" class="auto-style5" src="generalinfo.jpg" /></p>
        <p style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; text-transform: capitalize; color: #000000">
            Your Legal Name:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Name" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="250px" />
            <br />
            Your email address:
            <asp:TextBox ID="YourEmail" runat="server" BorderColor="#999999" BorderStyle="Solid" style="margin-top: 0px" Width="250px" />
            <br />
            Address:
            <asp:TextBox ID="Address" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="400px">Address</asp:TextBox>
            <br />
            City:
            <asp:TextBox ID="City" runat="server"></asp:TextBox>
            &nbsp; State:
            <asp:TextBox ID="State" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="50px"></asp:TextBox>
            &nbsp; Zip:<asp:TextBox ID="Zip" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Phone:
            <asp:TextBox ID="Phone" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="16px" TextMode="Phone" Width="400px">(###)-###-####</asp:TextBox>
            <br />
            Expected Hourly Wage:<asp:TextBox ID="Wage" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            <img alt="" class="auto-style7" src="questionnare.jpg" />
            <br />
            Are you over 18?<asp:RadioButtonList ID="Over18" runat="server" RepeatDirection="Horizontal" BorderColor="#999999" BorderStyle="Solid" style="margin-bottom: 0px">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            If offered a position, would you be willing to sumbit to a background check?<asp:RadioButtonList ID="backgroundcheck" runat="server" RepeatDirection="Horizontal" BorderColor="#999999" BorderStyle="Solid">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            Would you be willing to take a drug test if offered employment?<asp:RadioButtonList ID="drug" runat="server" RepeatDirection="Horizontal" BorderColor="#999999" BorderStyle="Solid">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            How much retail experience do you have?<asp:RadioButtonList ID="retailexp" runat="server" RepeatDirection="Horizontal" BorderColor="#999999" BorderStyle="Solid">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>Less than 6 Months</asp:ListItem>
                <asp:ListItem>6 Months to 1 Year</asp:ListItem>
                <asp:ListItem>2+ Years</asp:ListItem>
            </asp:RadioButtonList>
            Which department are you interested in? (check all that apply)<asp:CheckBoxList ID="departments" runat="server" BorderColor="#999999" BorderStyle="Solid"  RepeatColumns="3" RepeatDirection="Horizontal">
                <asp:ListItem>Team Sports</asp:ListItem>
                <asp:ListItem>Camping/Climbing</asp:ListItem>
                <asp:ListItem>Shoes</asp:ListItem>
                <asp:ListItem>Water Sports</asp:ListItem>
                <asp:ListItem>Winter Sports</asp:ListItem>
                <asp:ListItem>Clothing</asp:ListItem>
                <asp:ListItem>Fishing/Hunting</asp:ListItem>
                <asp:ListItem>Freight</asp:ListItem>
                <asp:ListItem>Cashier</asp:ListItem>
                <asp:ListItem>Internet</asp:ListItem>
                <asp:ListItem>Bikeshop</asp:ListItem>
                <asp:ListItem>Warehouse</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            What Sports or Activites have you participated in that would qualify you to work in the positions in which you are applying?<br />
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="58px" Width="420px" Rows="10"></asp:TextBox>
            <br />
            Have you ever been terminated by a previous employer?<asp:RadioButtonList ID="term" runat="server" AutoPostBack="True" BorderColor="#999999" BorderStyle="Solid" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:TextBox ID="brief" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="58px" Visible="False" Width="362px" Rows="10">Please give a brief explanation:</asp:TextBox>
            <br />
            <br />
            <img alt="" class="auto-style5" src="hoursavailable.jpg" />
            <br />
            <table style="border-style: none; width:50%; margin-top: 0px;">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2" style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000">MON</td>
                    <td class="auto-style2" style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000">TUES</td>
                    <td class="auto-style2" style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000">WED</td>
                    <td class="auto-style2" style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000">THURS</td>
                    <td class="auto-style3" style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000">FRI</td>
                    <td class="auto-style3" style="font-weight: bold; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000">SAT</td>
                </tr>
                <tr>
                    <td>FROM:</td>
                    <td>
                        <asp:TextBox ID="MondayFrom" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TuesdayFrom" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="WedFrom" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="ThursFrom" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="FriFrom" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="SatFrom" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>TO:</td>
                    <td>
                        <asp:TextBox ID="MondayTo" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="70px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TuesdayTo" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="WedTo" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="ThursTo" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="FriTo" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="SatTo" runat="server" BorderColor="#999999" BorderStyle="Solid" Height="21px" Width="69px"></asp:TextBox>
                    </td>

                </tr>
                
            </table>
            <br />
            Can You Work a Flexible schedule?<asp:RadioButtonList ID="flex" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            During the next twelve months will you be out of town for any reason?<asp:RadioButtonList ID="OutofTown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="OutofTown_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="OutofTownYes" runat="server" BorderColor="#999999" BorderStyle="Solid" Visible="False" Width="511px"></asp:TextBox>
            <br />
            Do you Have any plans to leave logan, for any length of time?<asp:RadioButtonList ID="LeaveLogan" runat="server" AutoPostBack="True" OnSelectedIndexChanged="LeaveLogan_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="LeaveLoganYes" runat="server" BorderColor="#999999" BorderStyle="Solid" Visible="False" Width="518px"></asp:TextBox>
            <br />
            <img alt="" class="auto-style5" src="education.jpg" />
            <br />
            High School
            <asp:TextBox ID="HighSchool" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Years Completed<asp:TextBox ID="YearsCompleted" runat="server" BorderColor="#999999" BorderStyle="Solid" style="margin-left: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; GPA&nbsp;&nbsp;
            <asp:TextBox ID="GPA" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            City
            <asp:TextBox ID="CityHighSchool" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp; State
            <asp:TextBox ID="StateHighSchool" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;<br /> Did you Graduate?
            <asp:RadioButtonList ID="didgrad" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            Are you currently in College?<asp:RadioButtonList ID="GoingtoCollege" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="GoingtoCollege_SelectedIndexChanged">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            &nbsp;<asp:Label ID="CollegeLabel" runat="server" Text="College" Visible="False"></asp:Label>
            &nbsp;<asp:TextBox ID="CollegeText" runat="server" BorderColor="#999999" BorderStyle="Solid" Visible="False"></asp:TextBox>
            &nbsp;<asp:Label ID="CollegeYearsCompletedLabel" runat="server" Text="Years Completed" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="YearsCompletedText" runat="server" BorderColor="#999999" BorderStyle="Solid" style="margin-left: 0px" Visible="False"></asp:TextBox>
            &nbsp;<asp:Label ID="CollegeGPALabel" runat="server" Text="GPA" Visible="False"></asp:Label>
            &nbsp;<asp:TextBox ID="CollegeGPAText" runat="server" BorderColor="#999999" BorderStyle="Solid" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="CollegeCityLabel" runat="server" Text="City" Visible="False"></asp:Label>
            &nbsp;<asp:TextBox ID="CollegeCityText" runat="server" BorderColor="#999999" BorderStyle="Solid" Visible="False"></asp:TextBox>
            &nbsp;<asp:Label ID="CollegeStateLabel" runat="server" Text="State" Visible="False"></asp:Label>
            <asp:TextBox ID="CollegeStateText" runat="server" BorderColor="#999999" BorderStyle="Solid" Visible="False"></asp:TextBox>
            &nbsp;<br />
            <asp:Label ID="CollegeDidGrad" runat="server" Text="Did you Graduate?" Visible="False"></asp:Label>
&nbsp;<asp:RadioButtonList ID="CollegeDidGradBut" runat="server" RepeatDirection="Horizontal" Visible="False">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            What are you education plans for then next 12 Months?<br />
            <asp:TextBox ID="FutureSchool" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="516px"></asp:TextBox>
            <br />
            <img alt="" class="auto-style5" src="previous.jpg" />
            <br />
            <br />
            Current Employer
            <asp:TextBox ID="currentemployer" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Address:
            <asp:TextBox ID="Currentemployeraddress" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;<br /> Phone
            <asp:TextBox ID="CurrentEmployerPhone" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Supervisor
            <asp:TextBox ID="currentemployersup" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Job Description
            <asp:TextBox ID="currentemployerjobdes" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp; From
            <asp:TextBox ID="currentemployerdatefrom" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;to
            <asp:TextBox ID="currentemployerdateto" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Why are you looking for other employment?<br />
            <asp:TextBox ID="currentemployerwhynew" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="636px"></asp:TextBox>
            <br />
            May we contact them?<asp:RadioButtonList ID="maycontactthem" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <img alt="" class="auto-style8" src="greybar.jpg" />
            <br />
            <br />
            Previous Employment<br /> Previous Employer
            <asp:TextBox ID="currentemployer0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Address:
            <asp:TextBox ID="Currentemployeraddress0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;<br /> Phone
            <asp:TextBox ID="CurrentEmployerPhone0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Supervisor
            <asp:TextBox ID="currentemployersup0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Job Description
            <asp:TextBox ID="currentemployerjobdes0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp; From
            <asp:TextBox ID="currentemployerdatefrom0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;to
            <asp:TextBox ID="currentemployerdateto0" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Reason for leaving?<br />
            <asp:TextBox ID="PreviousEmployerwhynew1" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="636px"></asp:TextBox>
            <br />
            <img alt="" class="auto-style8" src="greybar.jpg" />
            <br />
            <br />
            Previous Employment<br /> Previous Employer
            <asp:TextBox ID="currentemployer1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Address:
            <asp:TextBox ID="Currentemployeraddress1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;<br /> Phone
            <asp:TextBox ID="CurrentEmployerPhone1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;Supervisor
            <asp:TextBox ID="currentemployersup1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Job Description
            <asp:TextBox ID="currentemployerjobdes1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp; From
            <asp:TextBox ID="currentemployerdatefrom1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            &nbsp;to
            <asp:TextBox ID="currentemployerdateto1" runat="server" BorderColor="#999999" BorderStyle="Solid"></asp:TextBox>
            <br />
            Reason for leaving?<br />
            <asp:TextBox ID="PreviousEmployerwhynew2" runat="server" BorderColor="#999999" BorderStyle="Solid" Width="636px"></asp:TextBox>
            <br />
        </p>
        
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Send" ValidationGroup="save" />
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
</p>  
    </div>
    </form>
</body>
</html>
