﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Xpo.v9.1, Version=9.1.0.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4"
    Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<%@ Register Assembly="DevExpress.XtraScheduler.v9.1.Core, Version=9.1.0.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4"
    Namespace="DevExpress.XtraScheduler" TagPrefix="cc2" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v9.1" Namespace="DevExpress.Web.ASPxScheduler"
    TagPrefix="dxwschs" %>
<%@ Register assembly="DevExpress.XtraScheduler.v9.1.Core" Namespace="DevExpress.XtraScheduler" TagPrefix="cc1" %>
<%@ Register assembly="DevExpress.Xpo.v9.1" Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" OnAppointmentsInserted="ASPxScheduler1_OnAppointmentsInserted" OnAppointmentsChanged="ASPxScheduler1_AppointmentsChanged" OnAppointmentsDeleted="ASPxScheduler1_AppointmentsDeleted" GroupType="Resource">
        <Views>
		    <DayView><TimeRulers><cc2:TimeRuler /></TimeRulers></DayView>
		    <WorkWeekView><TimeRulers><cc2:TimeRuler /></TimeRulers></WorkWeekView>
        </Views>
        </dxwschs:ASPxScheduler>
        
        <dxxpo:XpoDataSource ID="appointmentDataSource" runat="server" TypeName="Task" />
        <dxxpo:XpoDataSource ID="resourceDataSource" runat="server" TypeName="Employee" />&nbsp;
    
    </div>
    </form>
</body>
</html>
