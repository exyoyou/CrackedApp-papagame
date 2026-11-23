.class public Lcom/haima/hmcp/beans/CommonPayloadData;
.super Lcom/haima/hmcp/beans/Payload;
.source "SourceFile"


# instance fields
.field public index:I

.field public queues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CommonPayloadDataQueues;",
            ">;"
        }
    .end annotation
.end field

.field public time:I

.field public timeStr:Ljava/lang/String;

.field public tips:Ljava/lang/String;

.field public waitTotalNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/Payload;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
