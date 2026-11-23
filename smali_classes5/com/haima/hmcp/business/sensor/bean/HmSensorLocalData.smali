.class public Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public report:Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;

.field public reportTimeStamp:J

.field public sendPeriodMs:I

.field public timeStamp:J


# direct methods
.method public constructor <init>(ILcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->sendPeriodMs:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->report:Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;

    .line 7
    .line 8
    return-void
.end method
