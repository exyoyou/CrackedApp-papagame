.class public Lcom/haima/hmcp/business/sensor/bean/report/HmSensorAccuracyReportInfo;
.super Lcom/haima/hmcp/beans/ReportInfo;
.source "SourceFile"


# instance fields
.field public accuracy:I

.field public type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ReportInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorAccuracyReportInfo;->type:I

    .line 5
    .line 6
    iput p2, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorAccuracyReportInfo;->accuracy:I

    .line 7
    .line 8
    return-void
.end method
