<#macro myLayout title="Default Layout">
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Smart Login">
        <meta name="keywords" content="Smart Login">
        <meta name="author" content="Madhan">

        <title>Login Page</title>
       <#include "styleList.ftl"/>
        <title>
        ${title}
            </title>
        </head>
    <body style="width:100%;height:100%;margin:0px;">
        <table border="1" cellspacing="0" cellpadding="0" style="width:100%;height:10%">
            <tr style="height:10%">
                <td style="width:60%;">
            <#include "header.ftl"/>
                    </td>
                <td style="width:40%;">
            <#include "menu.ftl"/>
                    </td>
                </tr>
            </table>
        <table border="1" cellspacing="0" cellpadding="0" style="width:100%;height:83%">
            <tr >
                <td style="width:85%;">
            <#nested/>
                    </td>
                <td style="width:15%;">

                    </td>

                </tr>
            </table>
        <table border="1" cellspacing="0" cellpadding="0" style="width:100%;height:7%">
            <tr  >
                <td colspan="2">
            <#include "footer.ftl"/>
                    </td>
                </tr>
            </table>
      <#include "scriptList.ftl" />
        </body>
    </html>
</#macro>