.class public Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;
.super Lcom/haima/hmcp/beans/ReportInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo$InnerData;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo$InnerData;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ReportInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;->data:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method
