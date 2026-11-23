.class public Lcom/haima/hmcp/beans/DeviceIdResult;
.super Lcom/haima/hmcp/beans/BaseResult;
.source "SourceFile"


# instance fields
.field public countlyAppKey:Ljava/lang/String;

.field public countlyUrl:Ljava/lang/String;

.field public countlyUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deviceId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "did"
    .end annotation
.end field

.field public serverTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/BaseResult;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
