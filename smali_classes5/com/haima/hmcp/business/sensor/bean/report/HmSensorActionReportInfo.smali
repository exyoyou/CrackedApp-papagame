.class public Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;
.super Lcom/haima/hmcp/beans/ReportInfo;
.source "SourceFile"


# instance fields
.field public from:I

.field public samplingPeriodUs:I

.field public sendPeriodMs:I

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ReportInfo;-><init>()V

    .line 2
    iput p1, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->type:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(I)V

    .line 4
    iput p2, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->samplingPeriodUs:I

    .line 5
    iput p3, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->sendPeriodMs:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(III)V

    .line 7
    iput p4, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->from:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HmSensorActionReport{type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", samplingPeriodUs="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->samplingPeriodUs:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", sendPeriodMs="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->sendPeriodMs:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", from="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;->from:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
