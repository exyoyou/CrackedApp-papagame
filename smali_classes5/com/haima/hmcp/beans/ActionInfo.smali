.class public Lcom/haima/hmcp/beans/ActionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "actId"
    .end annotation
.end field

.field public clientTransId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "clientTransId"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "did"
    .end annotation
.end field

.field public protocolVersion:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "protocol"
    .end annotation
.end field

.field public randomKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "random"
    .end annotation
.end field

.field public sdkType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sdkType"
    .end annotation
.end field

.field public transactionId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "transId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
