.class public Lcom/haima/hmcp/beans/CapScreenWsMessage;
.super Lcom/haima/hmcp/beans/BaseWsMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haima/hmcp/beans/BaseWsMessage<",
        "Lcom/haima/hmcp/beans/CapScreenData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/BaseWsMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dataIsValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/BaseWsMessage;->data:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/haima/hmcp/beans/CapScreenData;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/beans/CapScreenData;->isValid(Lcom/haima/hmcp/beans/CapScreenData;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
