<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Screen9.aspx.cs" Inherits="Screen9_IMTEX.Screen9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .header {
            display: flex;
            padding: 0.1vw;
            justify-content: space-between;
            background: linear-gradient(to bottom, #002d2d, #001212);
            align-items: center;
        }

            .header img {
                height: 3.5vw;
            }

        .footer img {
            height: 3.5vw;
        }

        .headerTitle {
            color: white;
            font-size: 1.6vw;
        }

        .bodyContent {
            background-image: url('./Images/EditedBG.png');
            background-color: #050d0d;
            background-size: contain;
            background-position: center;
            background-repeat: no-repeat;
            padding-bottom: 2.6vw;
            height: 24.3vw;
            color: white;
            text-align: center;
        }

        .footer {
            display: flex;
            justify-content: space-between;
            padding: 0.3vw;
            background: linear-gradient(to top, #002d2d, #001212);
        }


        .M01 {
            margin-top: 1vw;
            margin-left: 17vw;
        }

        .M02 {
            margin-top: 0vw;
            margin-left: 32vw;
        }

        .M04 {
            margin-top: 2.8vw;
            margin-left: 74.8vw;
        }

        .M06 {
            margin-top: 6vw;
            margin-left: 71vw;
        }

        .status6, .status2, .status1, .status4 {
            font-size: 0.6vw;
            border-top-right-radius: 0.6vw;
            border-bottom-right-radius: 0.6vw;
            width: 4vw;
            background-color: dimgray;
            padding-top: 1vw;
            padding-bottom: 0.2vw;
        }

        .M01, .M02, .M04, .M05, .M03, .M06 {
            justify-content: center;
            color: black;
            font-size: 1.1vw;
            background-color: #A9A9A9;
            width: 13vw;
            border-radius: 0.7vw;
            display: flex;
            padding-left: 0.4vw;
        }

        .M03 {
            margin-top: 0.8vw;
            margin-left: 73.6vw;
            padding-bottom: 0.6vw;
            padding-top: 0.2vw;
            padding-left: 0.4vw;
        }

        .M05 {
            margin-top: -0.3vw;
            margin-left: 19.5vw;
            padding-bottom: 0.6vw;
            padding-top: 0.2vw;
            padding-left: 0.4vw;
        }

        .M1, .M2, .M3, .M4, .M5, .M6 {
            margin-left: 0.5vw;
            margin-right: 0.5vw;
            padding: 0.4vw;
            padding-bottom: 0vw;
            border-radius: 0.5vw;
            border: 1px solid #ddd;
            font-size: 1.1vw;
            width: 15vw;
            background: linear-gradient(to top, #004040, #001212);
        }

            .M1 div, .M2 div, .M3 div, .M4 div, .M5 div, .M6 div {
                margin-bottom: 0.5vw;
            }

        .heading {
            justify-content: space-around;
            font-size: 1.1vw;
            font-weight: 600;
        }

        .s1, .s2, .s4, .s6 {
            padding-top: 0.2vw;
            padding-bottom: 0.2vw;
            font-size: 0.6vw;
            font-weight: 100;
            height: 0.7vw;
            margin-top: 0.5vw;
            border-radius: 0.3vw;
            color: black;
            width: 3.6vw;
            text-align: center;
            padding-left: 0.4vw;
            padding-right: 0.4vw;
        }

        #pc1, #pc2, #pc3, #pc4, #pc5, #pc6 {
            padding: 0.2vw;
            padding-left: 0.3vw;
            padding-right: 0.3vw;
            border-radius: 0.3vw;
            width: 5.5vw;
            margin-left: 1vw;
            background-color: #536d6c;
        }

        .pcLabel {
            padding-right: 2.5vw;
        }

        #rsn1, #rsn2, #rsn4, #rsn6 {
            padding: 0.3vw;
            border-radius: 0.3vw;
            background-color: #536d6c;
            width: 5.5vw;
            margin-left: 2.44vw;
        }

        #opValue1, #opValue2, #opValue3, #opValue4, #opValue6 {
            padding: 0.3vw;
            border-radius: 0.3vw;
            width: 5.5vw;
            margin-left: 3.9vw;
            background-color: #536d6c; /*"#006666"*/
        }

        #opValue3 {
            width: 5.5vw;
            margin-left: 3.3vw;
        }

        .date {
            display: flex;
            background-color: #28282B;
            padding: 0.15vw;
            border-radius: 0.2vw;
            padding-left: 0.3vw;
            padding-right: 0.3vw;
        }

        .time {
            display: flex;
            margin-left: 0.8vw;
            background-color: #28282B;
            padding: 0.15vw;
            border-radius: 0.2vw;
            padding-left: 0.3vw;
            padding-right: 0.3vw;
        }

        .datetime {
            background-color: #050d0d;
            color: #ddd;
            padding-top: 0.6vw;
            padding-left: 0.8vw;
            font-size: 1vw;
            font-family: sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div>
                        <div class="header">
                            <img runat="server" src="./Images/logo-ace-micromatic.png" style="padding-left: 1.5vw;" />
                            <div class="headerTitle">
                                <asp:Label runat="server" Text="Robotic Automation Trending Machine" CssClass="headerTitle"></asp:Label>
                            </div>
                            <img runat="server" src="./Images/imtex-logo.png" style="padding-right: 1.5vw;" />
                        </div>
                        <div style="display: flex;" class="datetime">
                            <div class="date">
                                <asp:Label runat="server" Text="Date: "></asp:Label>
                                <asp:Label runat="server" ID="date"></asp:Label>
                            </div>
                            <div class="time">
                                <asp:Label runat="server" Text="Time: "></asp:Label>
                                <asp:Label runat="server" ID="time"></asp:Label>
                            </div>
                        </div>
                        <div class="bodyContent">
                            <div class="M02">
                                <div style="padding-top: 0.7vw; width: 9vw; padding-bottom: 0.6vw;">
                                    <asp:Label runat="server" ID="MachineID2" Style="font-size: 1.2vw; font-weight: 600;" />
                                    <asp:Label runat="server" ID="MachineDescription2" />
                                </div>
                                <div class="status2" id="bgColor22" runat="server">
                                    <asp:Label runat="server" ID="MachineStatus2" />
                                </div>
                            </div>
                            <div class="M03">
                                <div style="padding-top: 0.5vw;">
                                    <asp:Label runat="server" ID="MachineID3" Style="font-size: 1.2vw; font-weight: 600;" />
                                    <asp:Label runat="server" ID="MachineDescription3" />
                                </div>
                            </div>
                            <div class="M01">
                                <div style="padding-top: 0.7vw; width: 9vw; padding-bottom: 0.6vw;">
                                    <asp:Label runat="server" ID="MachineID1" Style="font-size: 1.2vw; font-weight: 600;" />
                                    <asp:Label runat="server" ID="MachineDescription1" />
                                </div>
                                <div class="status1" id="bgColor11" runat="server">
                                    <asp:Label runat="server" ID="MachineStatus1" />
                                </div>
                            </div>
                            <div class="M04">
                                <div style="padding-top: 0.7vw; width: 9vw; padding-bottom: 0.6vw;">
                                    <asp:Label runat="server" ID="MachineID4" Style="font-size: 1.2vw; font-weight: 600;" />
                                    <asp:Label runat="server" ID="MachineDescription4" />
                                </div>
                                <div class="status4" id="bgColor44" runat="server">
                                    <asp:Label runat="server" ID="MachineStatus4" />
                                </div>
                            </div>
                            <div class="M06">
                                <div style="padding-top: 0.7vw; width: 9vw; padding-bottom: 0.6vw;">
                                    <asp:Label runat="server" ID="MachineID6" Style="font-size: 1.2vw; font-weight: 600;" />
                                    <asp:Label runat="server" ID="MachineDescription6" />
                                </div>
                                <div class="status6" id="bgColor66" runat="server">
                                    <asp:Label runat="server" ID="MachineStatus6" />
                                </div>
                            </div>
                            <div class="M05">
                                <div style="padding-top: 0.5vw;">
                                    <asp:Label runat="server" ID="MachineID5" Style="font-size: 1.2vw; font-weight: 600;" />
                                    <asp:Label runat="server" ID="MachineDescription5" />
                                </div>
                            </div>
                        </div>
                        <div style="display: flex; background-color: #050d0d; color: #ddd; padding-top: 0.9vw; justify-content: space-around;">
                            <div class="M1">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id1" Style="font-size: 1.5vw" />
                                        <asp:Label runat="server" ID="desc1" />
                                    </div>
                                    <div class="s1" id="Div1" runat="server">
                                        <asp:Label runat="server" ID="s1" />
                                    </div>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue1"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn1"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw; margin-bottom: 0.1vw;">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc1"></asp:Label>
                                </div>
                            </div>
                            <div class="M2">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id2" Style="font-size: 1.5vw" />
                                        <asp:Label runat="server" ID="desc2" />
                                    </div>
                                    <div class="s2" id="Div2" runat="server">
                                        <asp:Label runat="server" ID="s2" />
                                    </div>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue2"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn2"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc2"></asp:Label>
                                </div>
                            </div>
                            <div class="M3">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id3" Style="font-size: 1.5vw" />
                                        <asp:Label runat="server" ID="desc3" />
                                    </div>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" ID="laststatus"></asp:Label>
                                    <asp:Label runat="server" ID="opValue3"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" ID="dimensionid3"></asp:Label>
                                    <asp:Label runat="server" ID="dimensionvalue3"></asp:Label>
                                </div>
                            </div>
                            <div class="M4">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id4" Style="font-size: 1.5vw" />
                                        <asp:Label runat="server" ID="desc4" />
                                    </div>
                                    <div class="s4" id="Div4" runat="server">
                                        <asp:Label runat="server" ID="s4" />
                                    </div>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue4"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn4"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc4"></asp:Label>
                                </div>
                            </div>
                            <div class="M5">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id5" Style="font-size: 1.5vw" />
                                        <asp:Label runat="server" ID="desc5" />
                                    </div>
                                </div>
                                <asp:Repeater runat="server" ID="DimensionRepeater" OnItemDataBound="DimensionRepeater_ItemDataBound">
                                    <ItemTemplate>
                                        <div style="display: flex; font-size: 1vw;">
                                            <asp:Label runat="server" ClientIDMode="Static" Text='<%# Eval("DimensionID") %>' />
                                            <asp:Label runat="server" ClientIDMode="Static" ID="opValue55" Text='<%# Eval("DimensionValue") %>' />
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="M6">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id6" Style="font-size: 1.5vw" />
                                        <asp:Label runat="server" ID="desc6" />
                                    </div>
                                    <div class="s6" id="Div6" runat="server">
                                        <asp:Label runat="server" ID="s6" />
                                    </div>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue6"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn6"></asp:Label>
                                </div>
                                <div style="display: flex; font-size: 1vw;">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc6"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <div>
                                <img runat="server" src="./Images/AmitLogo.png" style="padding-left: 1.5vw;" />
                            </div>
                            <div>
                                <img runat="server" src="./Images/AmitLogo.png" style="padding-right: 1.5vw;" />
                            </div>
                        </div>
                    </div>
                    <asp:Timer runat="server" OnTick="Timer1_Tick" Interval="60000"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
