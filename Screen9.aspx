<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Screen9.aspx.cs" Inherits="Screen9_IMTEX.Screen9" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <style>
        /* 1912-width, 954-height
            768, 1044, 1250 1650 1920
        */

        /*  768, 1044, 1250 1650 1920   , 1080-height*/
        body {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
        }

        .header {
            display: flex;
            padding: 0.1%;
            justify-content: space-between;
            background: linear-gradient(to bottom, #002d2d, #001212);
            align-items: center;
            max-width: 100%;
            position: relative; /* Important for calculating relative positions */
            cursor: crosshair;
        }

            .header img {
                height: 4vw;
                padding: 2px;
                /* Prevent image from scaling too much */
            }

        .footer img {
            height: 3.5vw;
            /* Prevent image from scaling too much */
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
            padding-bottom: 2.6%;
            /* height: 9vh;*/
            color: white;
            text-align: center;
        }

        .footer {
            display: flex;
            justify-content: space-between;
            padding: 1vw;
            padding-bottom: 0.1vw;
            background: linear-gradient(to top, #002d2d, #001212);
        }


        /* .M01 {
            top:90px;
            left:379px;
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
            margin-top: 6.2vw;
            margin-left: 71vw;
        }*/

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
            margin-top: 3.3vh;
            margin-left: 74.4vw;
            padding-bottom: 0.6vw;
            padding-top: 0.2vw;
            padding-left: 0.4vw;
        }

        .M05 {
            margin-top: -0.3vh;
            margin-left: 19.5vw;
            padding-bottom: 0.6vw;
            padding-top: 0.2vw;
            padding-left: 0.4vw;
        }

        .M1, .M2, .M3, .M4, .M5, .M6 {
            /* margin-left: 0.5vw;
            margin-right: 0.5vw;*/
            padding: 0.4vw;
            padding-bottom: 0vw;
            border-radius: 0.5vw;
            border: 1px solid #ddd;
            font-size: 100%;
            /*  width: 278px;*/
            /* height:160px;*/
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
            padding-bottom: 1.2%;
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
            padding-bottom: 1.2%;
        }

        .machineName {
            width: 100%;
        }

        .datetime {
            background-color: #050d0d;
            color: #ddd;
            height: 2vh;
            padding-top: 0.6vw;
            padding-left: 0.8vw;
            font-size: 1vw;
            display: flex;
            font-family: sans-serif;
        }
        #id1, #id2, #id3, #id4, #id5, #id6 {
            font-size: 1.5vw;
        }
        .belowValues {
            font-size: 1vw;
        }

        #MachineID1, #MachineID2, #MachineID3, #MachineID4, #MachineID5, #MachineID6 {
            font-size: 1.2vw;
        }

        #opValue55, #dimensionvalue3 {
            width: 5.5vw;
        }
    </style>
    <script>
        let lastDevicePixelRatio = window.devicePixelRatio;
        function captureMouse(event) {
            const img = document.getElementById('image');
            const rect = img.getBoundingClientRect();
            const x = Math.round(event.clientX - rect.left);
            const y = Math.round(event.clientY - rect.top);
            console.log(`Coordinates: X=${x}, Y=${y}`);
            alert(`Mouse Down at X=${x}, Y=${y}`);
        }
        let originalWidth = window.innerWidth;
        let originalHeight = window.innerHeight;
        let zoomedIn = false;
        function getBackgroundImageDimensions(divId) {
             //Get the div element
            const div = document.getElementById(divId);
            const backgroundImage = window.getComputedStyle(div).backgroundImage;
            const imageUrl = backgroundImage.replace(/^url\(["']?/, '').replace(/["']?\)$/, '');
            const img = new Image();
            img.onload = function () {
                const width = img.naturalWidth;
                const height = img.naturalHeight;
                console.log(`Coordinates: Imgwidth=${width}, Imgheight=${height} `);
                adjustWidthLabels(width, height);
            };
            //const img = new Image();
            //// Wait for the image to load
            //img.onload = function () {
            //    const width = img.naturalWidth;
            //    const height = img.naturalHeight;
            //    console.log(`Image Width: ${width}px`);
            //    console.log(`Image Height: ${height}px`);
            //};
            //const imageUrl = './Images/EditedBG.png';
            img.src = imageUrl;
        }
        // Replace 'bodyContent' with your div ID
        function adjustWidthLabels(imgwidth, imgheight) {
            const width = window.innerWidth;
            if (width > 1200) {
                let x1 = 412;
                let y1 = 210;
                let x2 = 830;
                let y2 = 95;
                let x3 = 14;
                let y3 = 128;
                let x4 = 2065;
                let y4 = 294;
                let x5 = -100;
                let y5 = 468;
                let x6 = 1941;
                let y6 = 428;
                const element = document.getElementById('bodyContenti');
                const rect = element.getBoundingClientRect();
                //const width = rect.width
                //const height = rect.height;
                console.log(`Coordinates:  rect.Width=${rect.width}, rect.Height=${rect.height}, window.innerWidth=${window.innerWidth}, window.innerHeight=${window.innerHeight} `);
                xc1 = (x1 / rect.width) * window.innerWidth;
                yc1 = (y1 / rect.height) * window.innerHeight;
                xc2 = (x2 / rect.width) * window.innerWidth;
                yc2 = (y2 / rect.height) * window.innerHeight;
                xc3 = (x3 / rect.width) * window.innerWidth;
                yc3 = (y3 / rect.height) * window.innerHeight;
                xc4 = (x4 / rect.width) * window.innerWidth;
                yc4 = (y4 / rect.height) * window.innerHeight;
                xc5 = (x5 / rect.width) * window.innerWidth;
                yc5 = (y5 / rect.height) * window.innerHeight;
                xc6 = (x6 / rect.width) * window.innerWidth;
                yc6 = (y6 / rect.height) * window.innerHeight;
                x1per = (xc1 / imgwidth) * 100;
                y1per = (yc1 / imgheight) * 100;
                x2per = (xc2 / imgwidth) * 100;
                y2per = (yc2 / imgheight) * 100;
                x3per = (xc3 / imgwidth) * 100;
                y3per = (yc3 / imgheight) * 100;
                x4per = (xc4 / imgwidth) * 100;
                y4per = (yc4 / imgheight) * 100;
                x5per = (xc5 / imgwidth) * 100;
                y5per = (yc5 / imgheight) * 100;
                x6per = (xc6 / imgwidth) * 100;
                y6per = (yc6 / imgheight) * 100;
                document.getElementById('M02').style.left = x2per + '%';
                document.getElementById('M02').style.top = y2per + '%';
                document.getElementById('M01').style.left = x1per + '%';
                document.getElementById('M03').style.left = x3per + '%';
                document.getElementById('M04').style.left = x4per + '%';
                document.getElementById('M05').style.left = x5per + '%';
                document.getElementById('M06').style.left = x6per + '%';
                document.getElementById('M01').style.top = y1per + '%';
                document.getElementById('M03').style.top = y3per + '%';
                document.getElementById('M04').style.top = y4per + '%';
                document.getElementById('M05').style.top = y5per + '%';
                document.getElementById('M06').style.top = y6per + '%';
                console.log(`Coordinates: xc2=${xc3}, Yc2=${yc2} , x3per=${x3per}, y2per=${y2per}`);
            }
            else {
                let x1 = 382;
                let y1 = 115;
                let x2 = 830;
                let y2 = 65;
                let x3 = 66;
                let y3 = 72;
                let x4 = 2100;
                let y4 = 150;
                let x5 = -90;
                let y5 = 228;
                let x6 = 1961;
                let y6 = 210;
                const element = document.getElementById('bodyContenti');
                const rect = element.getBoundingClientRect();
                //const width = rect.width
                //const height = rect.height;
                console.log(`Coordinates:  rect.Width=${rect.width}, rect.Height=${rect.height}, window.innerWidth=${window.innerWidth}, window.innerHeight=${window.innerHeight} `);
                xc1 = (x1 / rect.width) * window.innerWidth;
                yc1 = (y1 / rect.height) * window.innerHeight;
                xc2 = (x2 / rect.width) * window.innerWidth;
                yc2 = (y2 / rect.height) * window.innerHeight;
                xc3 = (x3 / rect.width) * window.innerWidth;
                yc3 = (y3 / rect.height) * window.innerHeight;
                xc4 = (x4 / rect.width) * window.innerWidth;
                yc4 = (y4 / rect.height) * window.innerHeight;
                xc5 = (x5 / rect.width) * window.innerWidth;
                yc5 = (y5 / rect.height) * window.innerHeight;
                xc6 = (x6 / rect.width) * window.innerWidth;
                yc6 = (y6 / rect.height) * window.innerHeight;
                x1per = (xc1 / imgwidth) * 100;
                y1per = (yc1 / imgheight) * 100;
                x2per = (xc2 / imgwidth) * 100;
                y2per = (yc2 / imgheight) * 100;
                x3per = (xc3 / imgwidth) * 100;
                y3per = (yc3 / imgheight) * 100;
                x4per = (xc4 / imgwidth) * 100;
                y4per = (yc4 / imgheight) * 100;
                x5per = (xc5 / imgwidth) * 100;
                y5per = (yc5 / imgheight) * 100;
                x6per = (xc6 / imgwidth) * 100;
                y6per = (yc6 / imgheight) * 100;
                document.getElementById('M02').style.left = x2per + '%';
                document.getElementById('M02').style.top = y2per + '%';
                document.getElementById('M01').style.left = x1per + '%';
                document.getElementById('M03').style.left = x3per + '%';
                document.getElementById('M04').style.left = x4per + '%';
                document.getElementById('M05').style.left = x5per + '%';
                document.getElementById('M06').style.left = x6per + '%';
                document.getElementById('M01').style.top = y1per + '%';
                document.getElementById('M03').style.top = y3per + '%';
                document.getElementById('M04').style.top = y4per + '%';
                document.getElementById('M05').style.top = y5per + '%';
                document.getElementById('M06').style.top = y6per + '%';
                console.log(`Coordinates: xc2=${xc3}, Yc2=${yc2} , x3per=${x3per}, y2per=${y2per}`);
            }
           
        }
        document.addEventListener('DOMContentLoaded', function () {           
            function adjustHeaderFontSize() {
                const header = document.getElementById('headeri');
                const bodyContent = document.getElementById('bodyContenti');
                const datetime = document.getElementById('datetimei');
                const footer = document.getElementById('footeri');
                const belowContent = document.getElementById('belowContenti');
                let currentDevicePixelRatio = window.devicePixelRatio;
               // if (currentDevicePixelRatio !== lastDevicePixelRatio) {
                    //lastDevicePixelRatio = currentDevicePixelRatio;
                    getBackgroundImageDimensions('bodyContenti');
              //  }
                // Update the previous window size
                previousWidth = window.innerWidth;
                previousHeight = window.innerHeight;               
                const width = window.innerWidth;

                if (width > 1800) {                    
                    header.style.height = '8vh';
                    footer.style.height = '8vh';
                    bodyContent.style.height = '56vh';
                    datetime.style.height = '2vh';
                    belowContent.style.height = '18vh';
                    bodyContent.style.padding = '0vh';
                    belowContent.style.padding = '0vh';
                    belowContent.style.paddingTop = '3vh';
                    datetime.style.paddingTop = '1vh';
                    datetime.style.paddingLeft = '1vh';
                    header.style.padding = '1vh';
                    footer.style.padding = '1vh';
                    document.getElementById('M02').style.position = 'absolute';
                    document.getElementById('M03').style.position = 'absolute';
                    document.getElementById('M04').style.position = 'absolute';
                    document.getElementById('M05').style.position = 'absolute';
                    document.getElementById('M06').style.position = 'absolute';
                    document.getElementById('M01').style.position = 'absolute';
                    //document.getElementById('M01').style.left = '18%';
                    //document.getElementById('M02').style.left = '32%';
                    //document.getElementById('M03').style.left = '0%';
                    //document.getElementById('M04').style.left = '75%';
                    //document.getElementById('M05').style.left = '-1%';
                    //document.getElementById('M06').style.left = '70%';
                    //document.getElementById('M01').style.top = '28.5%';
                    //document.getElementById('M02').style.top = '14%';
                    //document.getElementById('M03').style.top = '18%';
                    //document.getElementById('M04').style.top = '39%';
                    //document.getElementById('M05').style.top = '63%';
                    //document.getElementById('M06').style.top = '58%';                    
                    document.getElementById('headerTitle').style.fontSize = '1.6vw';
                    document.getElementById('headerlefticon').style.height = '4vw';
                    document.getElementById('headerrighticon').style.height = '3.8vw';
                    document.getElementById('footerrighticon').style.height = '3.4vw';
                    document.getElementById('footerlefticon').style.height = '3.4vw';
                    document.getElementById('id1').style.fontSize = '22px';
                    document.getElementById('id2').style.fontSize = '22px';
                    document.getElementById('id3').style.fontSize = '22px';
                    document.getElementById('id4').style.fontSize = '22px';
                    document.getElementById('id5').style.fontSize = '22px';
                    document.getElementById('id6').style.fontSize = '22px';
                    document.getElementById('desc1').style.fontSize = '20px';
                    document.getElementById('desc2').style.fontSize = '20px';
                    document.getElementById('desc3').style.fontSize = '20px';
                    document.getElementById('desc4').style.fontSize = '20px';
                    document.getElementById('desc5').style.fontSize = '20px';
                    document.getElementById('desc6').style.fontSize = '20px';
                    document.getElementById('s2').style.fontSize = '9px';
                    document.getElementById('s4').style.fontSize = '9px';
                    document.getElementById('s6').style.fontSize = '9px';
                    document.getElementById('s1').style.fontSize = '9px';
                }
                else if (width > 1700) {
                    header.style.height = '8vh';
                    footer.style.height = '8vh';
                    bodyContent.style.height = '56vh';
                    datetime.style.height = '2vh';
                    belowContent.style.height = '18vh';
                    bodyContent.style.padding = '0vh';
                    belowContent.style.padding = '0vh';
                    belowContent.style.paddingTop = '3vh';
                    datetime.style.paddingTop = '1vh';
                    datetime.style.paddingLeft = '1vh';
                    header.style.padding = '1vh';
                    footer.style.padding = '1vh';
                    document.getElementById('M02').style.position = 'absolute';
                    document.getElementById('M03').style.position = 'absolute';
                    document.getElementById('M04').style.position = 'absolute';
                    document.getElementById('M05').style.position = 'absolute';
                    document.getElementById('M06').style.position = 'absolute';
                    document.getElementById('M01').style.position = 'absolute';
                     //document.getElementById('M01').style.left = '16%';
                     //document.getElementById('M02').style.left = '32%';
                     //document.getElementById('M03').style.left = '1.2%';
                     //document.getElementById('M04').style.left = '75%';
                     //document.getElementById('M05').style.left = '-3.8%';
                     //document.getElementById('M06').style.left = '72.6%';
                     //document.getElementById('M01').style.top = '29.2%';
                     //document.getElementById('M02').style.top = '14.5%';
                     //document.getElementById('M03').style.top = '18%';
                     //document.getElementById('M04').style.top = '40.5%';
                     //document.getElementById('M05').style.top = '63.5%';
                     //document.getElementById('M06').style.top = '58.2%';
                    document.getElementById('headerTitle').style.fontSize = '1.6vw';
                    document.getElementById('headerlefticon').style.height = '4vw';
                    document.getElementById('headerrighticon').style.height = '4vw';
                    document.getElementById('footerrighticon').style.height = '4vw';
                    document.getElementById('footerlefticon').style.height = '4vw';
                    document.getElementById('id1').style.fontSize = '20px';
                    document.getElementById('id2').style.fontSize = '20px';
                    document.getElementById('id3').style.fontSize = '20px';
                    document.getElementById('id4').style.fontSize = '20px';
                    document.getElementById('id5').style.fontSize = '22px';
                    document.getElementById('id6').style.fontSize = '22px';
                    document.getElementById('desc1').style.fontSize = '20px';
                    document.getElementById('desc2').style.fontSize = '20px';
                    document.getElementById('desc3').style.fontSize = '20px';
                    document.getElementById('desc4').style.fontSize = '20px';
                    document.getElementById('desc5').style.fontSize = '20px';
                    document.getElementById('desc6').style.fontSize = '20px';
                    document.getElementById('s2').style.fontSize = '9px';
                    document.getElementById('s4').style.fontSize = '9px';
                    document.getElementById('s6').style.fontSize = '9px';
                    document.getElementById('s1').style.fontSize = '9px';
                    footer.style.width = '100%';
                    footer.style.justifyContent = 'space-between';
                    footer.style.position = 'fixed';
                    datetime.style.fontSize = '20px';
                }
                else if (width > 1600) {
                    header.style.height = '8vh';
                    footer.style.height = '8vh';
                    bodyContent.style.height = '56vh';
                    datetime.style.height = '2vh';
                    belowContent.style.height = '18vh';
                    bodyContent.style.padding = '0vh';
                    belowContent.style.padding = '0vh';
                    belowContent.style.paddingTop = '3vh';
                    datetime.style.paddingTop = '1vh';
                    datetime.style.paddingLeft = '1vh';
                    header.style.padding = '1vh';
                    footer.style.padding = '1vh';
                    document.getElementById('M02').style.position = 'absolute';
                    document.getElementById('M03').style.position = 'absolute';
                    document.getElementById('M04').style.position = 'absolute';
                    document.getElementById('M05').style.position = 'absolute';
                    document.getElementById('M06').style.position = 'absolute';
                    document.getElementById('M01').style.position = 'absolute';
                    //document.getElementById('M01').style.left = '14.2%';
                    //document.getElementById('M02').style.left = '32%';
                    //document.getElementById('M03').style.left = '3%';
                    //document.getElementById('M04').style.left = '78%';
                    //document.getElementById('M05').style.left = '-4%';
                    //document.getElementById('M06').style.left = '74.5%';
                    //document.getElementById('M01').style.top = '28.5%';
                    //document.getElementById('M02').style.top = '13.5%';
                    //document.getElementById('M03').style.top = '17.2%';
                    //document.getElementById('M04').style.top = '40%';
                    //document.getElementById('M05').style.top = '64%';
                    //document.getElementById('M06').style.top = '58.5%';
                    document.getElementById('id1').style.fontSize = '22px';
                    document.getElementById('id2').style.fontSize = '22px';
                    document.getElementById('id3').style.fontSize = '22px';
                    document.getElementById('id4').style.fontSize = '22px';
                    document.getElementById('id5').style.fontSize = '22px';
                    document.getElementById('id6').style.fontSize = '22px';
                    document.getElementById('desc1').style.fontSize = '20px';
                    document.getElementById('desc2').style.fontSize = '20px';
                    document.getElementById('desc3').style.fontSize = '20px';
                    document.getElementById('desc4').style.fontSize = '20px';
                    document.getElementById('desc5').style.fontSize = '20px';
                    document.getElementById('desc6').style.fontSize = '20px';
                    document.getElementById('s2').style.fontSize = '9px';
                    document.getElementById('s4').style.fontSize = '9px';
                    document.getElementById('s6').style.fontSize = '9px';
                    document.getElementById('s1').style.fontSize = '9px';
                    for (var i = 0; i < document.getElementsByClassName('belowValues').length; i++) {
                        document.getElementsByClassName('belowValues')[i].style.fontSize = '1vw';
                    }
                }
                else if (width > 1400) {
                    header.style.height = '8vh';
                    footer.style.height = '8vh';
                    bodyContent.style.height = '56vh';
                    datetime.style.height = '2vh';
                    belowContent.style.height = '18vh';
                    bodyContent.style.padding = '0vh';
                    belowContent.style.padding = '0vh';
                    belowContent.style.paddingTop = '3vh';
                    datetime.style.paddingTop = '1vh';
                    datetime.style.paddingLeft = '1vh';
                    header.style.padding = '1vh';
                    footer.style.padding = '1vh';
                    datetime.style.fontSize = '14x';
                    header.style.fontSize = '14px';
                    document.getElementById('headerTitle').style.fontSize = '1.6vw';
                    document.getElementById('headerlefticon').style.height = '4vw';
                    document.getElementById('headerrighticon').style.height = '4vw';
                    document.getElementById('footerrighticon').style.height = '4vw';
                    document.getElementById('footerlefticon').style.height = '4vw';
                    document.getElementById('M02').style.position = 'absolute';
                    document.getElementById('M03').style.position = 'absolute';
                    document.getElementById('M04').style.position = 'absolute';
                    document.getElementById('M05').style.position = 'absolute';
                    document.getElementById('M06').style.position = 'absolute';
                    document.getElementById('M01').style.position = 'absolute';
                    // document.getElementById('M01').style.left = '14%';
                    // document.getElementById('M02').style.left = '30%';
                    // document.getElementById('M03').style.left = '4.5%';
                    // document.getElementById('M04').style.left = '79.5%';
                    // document.getElementById('M05').style.left = '-5%';
                    // document.getElementById('M06').style.left = '76%';
                    // document.getElementById('M01').style.top = '29%';
                    // document.getElementById('M02').style.top = '14%';
                    // document.getElementById('M03').style.top = '17.5%';
                    // document.getElementById('M04').style.top = '40%';
                    // document.getElementById('M05').style.top = '63.5%';
                    //document.getElementById('M06').style.top = '58.5%';
                    for (var i = 0; i < document.getElementsByClassName('belowValues').length; i++) {
                        document.getElementsByClassName('belowValues')[i].style.fontSize = '1vw';                       
                    }
                } else if (width > 1200) {
                    datetime.style.height = '2.5vh';
                    datetime.style.fontSize = '18px';
                    header.style.height = '8vh';
                    footer.style.height = '8vh';
                    bodyContent.style.height = '56vh';
                    datetime.style.height = '2vh';
                    belowContent.style.height = '18vh';
                    bodyContent.style.padding = '0vh';
                    belowContent.style.padding = '0vh';
                    belowContent.style.paddingTop = '3vh';
                    datetime.style.paddingTop = '1vh';
                    datetime.style.paddingLeft = '1vh';
                    header.style.padding = '1vh';
                    footer.style.padding = '1vh';
                    header.style.fontSize = '22px';
                    document.getElementById('headerTitle').style.fontSize = '120%';
                    document.getElementById('headerlefticon').style.height = '4vw';
                    document.getElementById('headerrighticon').style.height = '4vw';
                    document.getElementById('footerrighticon').style.height = '4vw';
                    document.getElementById('footerlefticon').style.height = '4vw';
                    document.getElementById('M02').style.position = 'absolute';
                    document.getElementById('M03').style.position = 'absolute';
                    document.getElementById('M04').style.position = 'absolute';
                    document.getElementById('M05').style.position = 'absolute';
                    document.getElementById('M06').style.position = 'absolute';
                    document.getElementById('M01').style.position = 'absolute';
                    //document.getElementById('M01').style.left = '10%';
                    //document.getElementById('M02').style.left = '32%';
                    //document.getElementById('M03').style.left = '9%';
                    //document.getElementById('M04').style.left = '84%';
                    //document.getElementById('M05').style.left = '-9%';
                    //document.getElementById('M06').style.left = '80%';
                    //document.getElementById('M01').style.top = '29%';
                    //document.getElementById('M02').style.top = '13.5%';
                    //document.getElementById('M03').style.top = '17%';
                    //document.getElementById('M04').style.top = '40%';
                    //document.getElementById('M05').style.top = '64%';
                    //document.getElementById('M06').style.top = '58.5%';
                    document.getElementById('id1').style.fontSize = '120%';
                    document.getElementById('id2').style.fontSize = '120%';
                    document.getElementById('id3').style.fontSize = '120%';
                    document.getElementById('id4').style.fontSize = '120%';
                    document.getElementById('id5').style.fontSize = '120%';
                    document.getElementById('id6').style.fontSize = '120%';
                    document.getElementById('desc1').style.fontSize = '90%';
                    document.getElementById('desc2').style.fontSize = '90%';
                    document.getElementById('desc3').style.fontSize = '90%';
                    document.getElementById('desc4').style.fontSize = '90%';
                    document.getElementById('desc5').style.fontSize = '90%';
                    document.getElementById('desc6').style.fontSize = '90%';
                    document.getElementById('s2').style.fontSize = '90%';
                    document.getElementById('s4').style.fontSize = '90%';
                    document.getElementById('s6').style.fontSize = '90%';
                    document.getElementById('s1').style.fontSize = '90%';
                    belowContent.style.flexWrap = 'nowrap';
                    for (var i = 0; i < document.getElementsByClassName('belowValues').length; i++) {
                        document.getElementsByClassName('belowValues')[i].style.fontSize = '1.04vw';
                        document.getElementsByClassName('belowValues')[i].style.padding = '0px';                        
                        document.getElementsByClassName('belowValues')[i].style.justifyContent = 'normal'
                    }
                    document.getElementById('M2').style.margin = '0px';
                    document.getElementById('M3').style.margin = '0px';
                    document.getElementById('M1').style.margin = '0%';
                    document.getElementById('M2').style.margin = '0%';
                    document.getElementById('M3').style.margin = '0%';
                    document.getElementById('M4').style.margin = '0px';
                    document.getElementById('M5').style.margin = '0px';
                    document.getElementById('M6').style.margin = '0px';
                    document.getElementById('M1').style.marginLeft = '0.5%';
                    document.getElementById('M2').style.marginLeft = '0.5%';
                    document.getElementById('M3').style.marginLeft = '0.5%';
                    document.getElementById('M5').style.marginLeft = '0.5%';
                    document.getElementById('M4').style.marginLeft = '0.5%';
                    document.getElementById('M6').style.marginLeft = '0.5%';
                    document.getElementById('M6').style.marginRight = '0.5%';
                    footer.style.width = '100%';
                    footer.style.justifyContent = 'space-between';
                    footer.style.position = 'fixed';
                }
                else {
                    datetime.style.height = '2.5vh';
                    datetime.style.fontSize = '18px';
                    header.style.height = '8vh';
                    footer.style.height = '8vh';
                    bodyContent.style.height = '37vh';
                    datetime.style.height = '2vh';
                    belowContent.style.height = '38vh';
                    bodyContent.style.padding = '0vh';
                    belowContent.style.padding = '0vh';
                    belowContent.style.paddingTop = '2vh';
                    datetime.style.paddingTop = '1vh';
                    datetime.style.paddingLeft = '1vh';
                    header.style.padding = '1vh';
                    footer.style.padding = '1vh';
                    footer.style.position = 'fixed';
                    footer.style.width = '100%';
                    footer.style.justifyContent = 'space-between';
                    header.style.fontSize = '20px';
                    document.getElementById('headerTitle').style.fontSize = '28px';
                    document.getElementById('headerlefticon').style.height = '100%';
                    document.getElementById('headerrighticon').style.height = '100%';
                    document.getElementById('footerrighticon').style.height = '100%';
                    document.getElementById('footerlefticon').style.height = '100%';
                    document.getElementById('M02').style.position = 'absolute';
                    document.getElementById('M03').style.position = 'absolute';
                    document.getElementById('M04').style.position = 'absolute';
                    document.getElementById('M05').style.position = 'absolute';
                    document.getElementById('M06').style.position = 'absolute';
                    document.getElementById('M01').style.position = 'absolute';
                    //document.getElementById('M01').style.left = '16%';
                    //document.getElementById('M02').style.left = '31%';
                    //document.getElementById('M03').style.left = '1.5%';
                    //document.getElementById('M04').style.left = '76%';
                    //document.getElementById('M05').style.left = '-3%';
                    //document.getElementById('M06').style.left = '73%';
                    //document.getElementById('M01').style.top = '23.5%';
                    //document.getElementById('M02').style.top = '13.5%';
                    //document.getElementById('M03').style.top = '14.5%';
                    //document.getElementById('M04').style.top = '31%';
                    //document.getElementById('M05').style.top = '46%';
                    //document.getElementById('M06').style.top = '42.8%';
                    document.getElementById('id1').style.fontSize = '22px';
                    document.getElementById('id2').style.fontSize = '22px';
                    document.getElementById('id3').style.fontSize = '22px';
                    document.getElementById('id4').style.fontSize = '22px';
                    document.getElementById('id5').style.fontSize = '22px';
                    document.getElementById('id6').style.fontSize = '22px';
                    document.getElementById('desc1').style.fontSize = '18px';
                    document.getElementById('desc2').style.fontSize = '18px';
                    document.getElementById('desc3').style.fontSize = '18px';
                    document.getElementById('desc4').style.fontSize = '18px';
                    document.getElementById('desc5').style.fontSize = '18px';
                    document.getElementById('desc6').style.fontSize = '16px';
                    document.getElementById('s2').style.fontSize = '9px';
                    document.getElementById('s4').style.fontSize = '9px';
                    document.getElementById('s6').style.fontSize = '9px';
                    document.getElementById('s1').style.fontSize = '9px';
                    belowContent.style.flexWrap = 'wrap';
                    document.getElementById('M1').style.width = '20%';
                    document.getElementById('M2').style.width = '20%';
                    document.getElementById('M3').style.width = '20%';
                    document.getElementById('M4').style.width = '20%';
                    document.getElementById('M5').style.width = '20%';
                    document.getElementById('M6').style.width = '20%';
                    for (var i = 0; i < document.getElementsByClassName('belowValues').length; i++) {
                        document.getElementsByClassName('belowValues')[i].style.fontSize = '1.5vw';
                        document.getElementsByClassName('belowValues')[i].style.justifyContent = 'center'
                    }
                    document.getElementById('M1').style.margin = '30px'
                    document.getElementById('M2').style.margin = '30px';
                    document.getElementById('M3').style.margin = '30px';
                    document.getElementById('M4').style.margin = '30px';
                    document.getElementById('M5').style.margin = '30px';
                    document.getElementById('M6').style.margin = '30px';
                    document.getElementById('M1').style.marginBottom = '5px'
                    document.getElementById('M2').style.marginBottom = '5px';
                    document.getElementById('M3').style.marginBottom = '5px';
                    document.getElementById('M4').style.marginBottom = '5px';
                    document.getElementById('M5').style.marginBottom = '5px';
                    document.getElementById('M6').style.marginBottom = '5px';
                }             
            }
            adjustHeaderFontSize();
            window.addEventListener('resize', adjustHeaderFontSize);
            const prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_endRequest(function () {
                adjustHeaderFontSize();
            });
        });
    </script>
</head>
<body id="">
    <form id="coordinatesForm" method="post" runat="server">
        <div>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div>
                        <div class="header" id="headeri">
                            <img runat="server" src="./Images/logo-ace-micromatic.png" id="headerlefticon" style="padding-left: 1.5vw;" />
                            <div class="headerTitle" id="">
                                <asp:Label ID="headerTitle" runat="server" Text="Robotic Automation Trending Machine" CssClass="headerTitle"></asp:Label>
                            </div>
                            <img runat="server" src="./Images/Imtex-logo 2.png" id="headerrighticon" style="padding-right: 1.5vw;" />
                        </div>
                        <div style="" class="datetime" id="datetimei">
                            <div class="date">
                                <asp:Label runat="server" Text="Date: "></asp:Label>
                                <asp:Label runat="server" ID="date"></asp:Label>
                            </div>
                            <div class="time">
                                <asp:Label runat="server" Text="Time: "></asp:Label>
                                <asp:Label runat="server" ID="time"></asp:Label>
                            </div>
                        </div>
                        <%-- onmousedown="captureMouse(event)"--%>
                        <div class="bodyContent" id="bodyContenti">
                            <div>
                                <div class="M02" id="M02">
                                    <div style="padding-top: 0.7vw; padding-bottom: 0.6vw;" class="machineName">
                                        <asp:Label runat="server" ID="MachineID2" Style="font-weight: 600;"/>
                                        <asp:Label runat="server" ID="MachineDescription2"/>
                                    </div>
                                    <div class="status2" id="bgColor22" runat="server">
                                        <asp:Label runat="server" ID="MachineStatus2" />
                                    </div>
                                </div>
                                <div class="M03" id="M03">
                                    <div style="padding-top: 0.5vw;">
                                        <asp:Label runat="server" ID="MachineID3" Style="font-weight: 600;"/>
                                        <asp:Label runat="server" ID="MachineDescription3" />
                                    </div>
                                </div>
                                <div class="M01" id="M01">
                                    <div style="padding-top: 0.7vw; padding-bottom: 0.6vw;" class="machineName">
                                        <asp:Label runat="server" ID="MachineID1" Style="font-weight: 600;"/>
                                        <asp:Label runat="server" ID="MachineDescription1" />
                                    </div>
                                    <div class="status1" id="bgColor11" runat="server">
                                        <asp:Label runat="server" ID="MachineStatus1" />
                                    </div>
                                </div>
                                <div class="M04" id="M04">
                                    <div style="padding-top: 0.7vw; padding-bottom: 0.6vw;" class="machineName">
                                        <asp:Label runat="server" ID="MachineID4" Style="font-weight: 600;"/>
                                        <asp:Label runat="server" ID="MachineDescription4" />
                                    </div>
                                    <div class="status4" id="bgColor44" runat="server">
                                        <asp:Label runat="server" ID="MachineStatus4" />
                                    </div>
                                </div>
                                <div class="M06" id="M06">
                                    <div style="padding-top: 0.7vw; padding-bottom: 0.6vw;" class="machineName">
                                        <asp:Label runat="server" ID="MachineID6" Style="font-weight: 600;" />
                                        <asp:Label runat="server" ID="MachineDescription6" />
                                    </div>
                                    <div class="status6" id="bgColor66" runat="server">
                                        <asp:Label runat="server" ID="MachineStatus6" />
                                    </div>
                                </div>
                                <div class="M05" id="M05">
                                    <div style="padding-top: 0.5vw;">
                                        <asp:Label runat="server" ID="MachineID5" Style="font-weight: 600;" />
                                        <asp:Label runat="server" ID="MachineDescription5" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="belowContent" id="belowContenti" style="display: flex; background-color: #050d0d; color: #ddd; padding-top: 0.9vw; justify-content: space-around;">
                            <div class="M1" id="M1">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id1" Style="" />
                                        <asp:Label runat="server" ID="desc1" />
                                    </div>
                                    <div class="s1" id="Div1" runat="server">
                                        <asp:Label runat="server" ID="s1" />
                                    </div>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue1"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn1"></asp:Label>
                                </div>
                                <div style="display: flex; margin-bottom: 0.1vw;" class="belowValues">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc1"></asp:Label>
                                </div>
                            </div>
                            <div class="M2" id="M2">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id2" Style="" />
                                        <asp:Label runat="server" ID="desc2" />
                                    </div>
                                    <div class="s2" id="Div2" runat="server">
                                        <asp:Label runat="server" ID="s2" />
                                    </div>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue2"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn2"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc2"></asp:Label>
                                </div>
                            </div>
                            <div class="M3" id="M3">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id3" Style="" />
                                        <asp:Label runat="server" ID="desc3" />
                                    </div>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" ID="laststatus"></asp:Label>
                                    <asp:Label runat="server" ID="opValue3"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" ID="dimensionid3"></asp:Label>
                                    <asp:Label runat="server" ID="dimensionvalue3"></asp:Label>
                                </div>
                            </div>
                            <div class="M4" id="M4">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id4" Style="" />
                                        <asp:Label runat="server" ID="desc4" />
                                    </div>
                                    <div class="s4" id="Div4" runat="server">
                                        <asp:Label runat="server" ID="s4" />
                                    </div>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue4"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn4"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc4"></asp:Label>
                                </div>
                            </div>
                            <div class="M5" id="M5">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id5" Style="" />
                                        <asp:Label runat="server" ID="desc5" />
                                    </div>
                                </div>
                                <asp:Repeater runat="server" ID="DimensionRepeater" OnItemDataBound="DimensionRepeater_ItemDataBound">
                                    <ItemTemplate>
                                        <div style="display: flex;" class="belowValues">
                                            <asp:Label runat="server" ClientIDMode="Static" ID="opValue5" Text='<%# Eval("DimensionID") %>' />
                                            <asp:Label runat="server" ClientIDMode="Static" ID="opValue55" Text='<%# Eval("DimensionValue") %>' />
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="M6" id="M6">
                                <div class="heading" style="display: flex;">
                                    <div style="padding-top: 0.2vw;">
                                        <asp:Label runat="server" ID="id6" Style="" />
                                        <asp:Label runat="server" ID="desc6" />
                                    </div>
                                    <div class="s6" id="Div6" runat="server">
                                        <asp:Label runat="server" ID="s6" />
                                    </div>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Operation"></asp:Label>
                                    <asp:Label runat="server" ID="opValue6"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Running Part"></asp:Label>
                                    <asp:Label runat="server" ID="rsn6"></asp:Label>
                                </div>
                                <div style="display: flex;" class="belowValues">
                                    <asp:Label runat="server" Text="Part Count" CssClass="pcLabel"></asp:Label>
                                    <asp:Label runat="server" ID="pc6"></asp:Label>                                   
                                </div>
                            </div>
                        </div>
                        <div class="footer" id="footeri">
                            <div>
                                <img runat="server" src="./Images/ll.png" style="padding-left: 1.5vw;" id="footerlefticon" />
                            </div>
                            <div>
                                <img runat="server" src="./Images/AMiT.png" style="padding-right: 1.5vw;" id="footerrighticon" />
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="hiddenX" name="hiddenX" />
                    <input type="hidden" id="hiddenY" name="hiddenY" />
                    <asp:Timer runat="server" OnTick="Timer1_Tick" Interval="699990"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
  <%--  <script>  function captureMouse(event) {
            // Get the container element
            const container = document.getElementById('bodyContenti');
            const rect = container.getBoundingClientRect();

            // Calculate the relative coordinates within the div
            const x = Math.round(event.clientX - rect.left);
            const y = Math.round(event.clientY - rect.top);

            // Log or display the coordinates
            console.log(`Clicked Coordinates: X=${x}, Y=${y}`);
            alert(`Clicked Coordinates: X=${x}, Y=${y}`);

            // Optionally, send the coordinates to the server
            document.getElementById('hiddenX').value = x;
            document.getElementById('hiddenY').value = y;
            document.getElementById('coordinatesForm').submit();
        }
    </script>--%>

</body>
</html>






<%--        /* ---------------------------------------------------------------------------------768-------*/

        @media screen and (min-width: 768px) {
            body {
            }

            .headerTitle {
                font-size: 150%;
                overflow: visible;
                padding: 2%;
                padding-top: 5%;
                padding-bottom: 5%;
                text-align: center;
            }

            .header img {
                height: 5rem;
                padding: 10px;
            }

            .footer img {
                height: 4rem;
                padding: 2%;
                padding-top: 4%;
            }

            .bodyContent {
                min-height: 26vw;
                font-size: 1.3vw !important;
                padding-top: 0.1vw;
                padding-bottom: 9vw;
            }

            .machineName {
                width: 14vw;
            }

            .datetime {
                padding-bottom: 5vw;
                padding-top: 2vw;
                font-size: 2.3vw;
                display: block;
            }

            .time {
                margin-top: 1vw;
                width: 15.5vw;
            }

            .date {
                width: 23.5vw;
            }

            .belowValues, #opValue5, #opValue55 {
                font-size: 2.5vw;
                padding-right: 0.2vw;
                padding-left: 0.4vw;
            }

            #opValue5, #opValue55 {
                font-size: 2.5vw;
            }


            .belowValues {
                margin-right: 0.3vw;
                font-size: 2.5vw;
            }

            .M01 {
                margin-top: 1.4vw;
                margin-left: 10vw;
            }

            .M02 {
                margin-top: 0vw;
                margin-left: 32vw;
            }

            .M04 {
                margin-top: 3.8vw;
                margin-left: 80vw;
            }

            .M06 {
                margin-top: 8.2vw;
                margin-left: 76vw;
            }

            .status6, .status2, .status1, .status4 {
                font-size: 0.8vw;
            }

            .M01, .M02, .M04, .M05, .M03, .M06 {
                font-size: 1.5vw;
                width: 16%;
            }

            .M03 {
                margin-top: 1.6vw;
                margin-left: 82vw;
            }

            .M05 {
                margin-top: 0vw;
                margin-left: 19.5vw;
            }

            #id1, #id2, #id3, #id4, #id5, #id6 {
                font-size: 3.5vw;
            }

            .s1, .s2, .s4, .s6 {
                padding-bottom: 1vw;
                font-size: 1.5vw;
                width: 10vw;
                margin-top: 1.5vw;
            }

            .M1, .M2, .M3, .M4, .M5, .M6 {
                font-size: 10%;
                min-height: 9vw;
                margin-top: 3vw;
                margin-left: 0vw;
                margin-right: 3vw;
                width: 36%;
            }

            .M1 {
                margin-left: 8vw;
            }

            .M2 {
                margin-right: 6vw;
            }

            .M4 {
                margin-right: 6vw;
                ,padding-left:2vw;
            }

            .M3 {
                margin-left: 8.5vw;
            }

            .M5 {
                margin-left: 8vw;
            }

            .M6 {
                margin-right: 6vw;
            }

            .M5, .M6 {
                margin-bottom: 4vw;
            }

            .belowContent {
                display: flex;
                flex-wrap: wrap;
                padding-top: 40vw;
            }

            #MachineID1, #MachineID2, #MachineID3, #MachineID4, #MachineID5, #MachineID6 {
                font-size: 1.7vw;
            }

            .heading {
                justify-content: space-around;
                font-size: 3vw;
                font-weight: 600;
            }

            #pc1, #pc2, #pc3, #pc4, #pc5, #pc6 {
                margin-left: 10%;
                width: 15vw;
            }

            #rsn1, #rsn2, #rsn4, #rsn6 {
                width: 15vw;
                margin-left: 9.5%;
            }

            #opValue1, #opValue2, #opValue3, #opValue4, #opValue6 {
                width: 15vw;
                margin-left: 20%;
            }

            #opValue55, #dimensionvalue3 {
                width: 15vw;
            }

            #opValue3 {
                width: 15vw;
                margin-left: 3.3vw;
            }

            .belowValues {
                padding-left: 1.5vw;
            }
        }
        /*---------------------------------------------------------------------------------1024*/
        @media screen and (min-width: 1280px) {

            .headerTitle {
                font-size: 140%;
                padding: 2vw;
                text-align: center;
            }

            .machineName {
                width: 14vw;
            }

            .datetime {
                padding-bottom: 0.5vw;
                padding-top: 0vw;
                font-size: 1.8vw;
                display: flex;
            }

            .time {
                padding: 2px;
                width: 12vw;
            }

            .date {
                width: 19vw;
                padding-top: 2px;
                padding-bottom: 0px;
                margin-top: 1vw;
            }

            #id1, #id2, #id3, #id4, #id5, #id6 {
                font-size: 2.2vw;
            }

            .s1, .s2, .s4, .s6 {
                padding-bottom: 0.5vw;
                font-size: 0.8vw;
                width: 5vw;
                margin-top: 1vw;
            }

            .M1, .M2, .M3, .M4, .M5, .M6 {
                font-size: 2%;
                min-height: 5vw;
                margin-top: 3vw;
                margin-left: 0vw;
                margin-right: 3vw;
                width: 36%;
            }

            .M1 {
                margin-left: 8vw;
            }

            .M2 {
                margin-right: 6vw;
            }

            .M4 {
                margin-right: 6vw;
                ,padding-left:2vw;
            }

            .M3 {
                margin-left: 8.5vw;
            }

            .M5 {
                margin-left: 8vw;
            }

            .M6 {
                margin-right: 6vw;
            }

            .M5, .M6 {
                margin-bottom: 4vw;
            }

            .belowContent {
                display: flex;
                flex-wrap: wrap;
                padding-top: 40vw;
            }


            #MachineID1, #MachineID2, #MachineID3, #MachineID4, #MachineID5, #MachineID6 {
                font-size: 1.7vw;
            }

            .heading {
                justify-content: space-around;
                font-size: 3vw;
                font-weight: 600;
            }

            #pc1, #pc2, #pc3, #pc4, #pc5, #pc6 {
                margin-left: 10%;
                width: 15vw;
            }

            #rsn1, #rsn2, #rsn4, #rsn6 {
                width: 15vw;
                margin-left: 9.5%;
            }

            #opValue1, #opValue2, #opValue3, #opValue4, #opValue6 {
                width: 15vw;
                margin-left: 20%;
            }

            #opValue55, #dimensionvalue3 {
                width: 15vw;
            }

            #opValue3 {
                width: 15vw;
                margin-left: 3.3vw;
            }

            .belowValues {
                padding-left: 1.5vw;
            }
        }
        /*----------------------------------------------------------------------------------1600*/
        @media screen and (min-width: 1600px) {


            .header {
                padding: 0.1vw;
                max-width: 100%;
            }

                .header img {
                    height: 3.5vw;
                    Prevent image from scaling too much
                }

            .footer img {
                height: 3.5vw;
                Prevent image from scaling too much
            }

            .headerTitle {
                font-size: 1.6vw;
            }

            .bodyContent {
                padding-bottom: 2.6vw;
                height: 24.5vw;
            }

            .footer {
                padding: 0.3vw;
                padding-bottom: 0.1vw;
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
                margin-top: 6.2vw;
                margin-left: 71vw;
            }

            .M01, .M02, .M04, .M05, .M03, .M06 {
                font-size: 1.1vw;
                width: 13vw;
            }

            .M03 {
                margin-top: 0.8vw;
                margin-left: 73.6vw;
            }

            .M05 {
                margin-top: -0.3vw;
                margin-left: 19.5vw;
            }

            .M1, .M2, .M3, .M4, .M5, .M6 {
                margin-left: 0.5vw;
                margin-right: 0.5vw;
                padding: 0.4vw;
                padding-bottom: 0vw;
                font-size: 1.1vw;
                width: 15vw;
            }

                .M1 div, .M2 div, .M3 div, .M4 div, .M5 div, .M6 div {
                    margin-bottom: 0.5vw;
                }

            .heading {
                font-size: 1.1vw;
                font-weight: 600;
            }



            #pc1, #pc2, #pc3, #pc4, #pc5, #pc6 {
                width: 5.5vw;
                margin-left: 1vw;
            }

            .pcLabel {
                padding-right: 2.5vw;
            }

            #rsn1, #rsn2, #rsn4, #rsn6 {
                padding: 0.3vw;
                width: 5.5vw;
                margin-left: 2.44vw;
            }

            #opValue1, #opValue2, #opValue3, #opValue4, #opValue6 {
                padding: 0.3vw;
                width: 5.5vw;
                margin-left: 3.9vw;
            }

            #opValue3 {
                width: 5.5vw;
                margin-left: 3.3vw;
            }

            .datetime {
                padding-top: 0.6vw;
                padding-left: 0.8vw;
                font-size: 1vw;
            }

            .belowValues {
                font-size: 1vw;
            }

            #MachineID1, #MachineID2, #MachineID3, #MachineID4, #MachineID5, #MachineID6 {
                font-size: 1.2vw;
            }
        }

        @media screen and (min-width: 1700px) {
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
                max-width: 100%;
            }

                .header img {
                    height: 3.5vw;
                    /* Prevent image from scaling too much */
                }

            .footer img {
                height: 3.5vw;
                /* Prevent image from scaling too much */
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
                height: 24.5vw;
                color: white;
                text-align: center;
            }

            .footer {
                display: flex;
                justify-content: space-between;
                padding: 0.3vw;
                padding-bottom: 0.1vw;
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
                margin-top: 6.2vw;
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
                /* margin-left: 0.5vw;
     margin-right: 0.5vw;*/
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

            .machineName {
                width: 9vw;
            }

            .datetime {
                background-color: #050d0d;
                color: #ddd;
                padding-top: 0.6vw;
                padding-left: 0.8vw;
                font-size: 1vw;
                display: flex;
                font-family: sans-serif;
            }

            #id1, #id2, #id3, #id4, #id5, #id6 {
                font-size: 1.5vw;
            }

            .belowValues {
                font-size: 1vw;
            }

            #MachineID1, #MachineID2, #MachineID3, #MachineID4, #MachineID5, #MachineID6 {
                font-size: 1.2vw;
            }

            #opValue55, #dimensionvalue3 {
                width: 5.5vw;
            }
        }--%>