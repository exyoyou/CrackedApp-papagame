.class public Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public listener:Lcom/haima/hmcp/listeners/OnSendMessageListener;

.field public message:Lcom/haima/hmcp/beans/Message;


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


# virtual methods
.method public getListener()Lcom/haima/hmcp/listeners/OnSendMessageListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->listener:Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Lcom/haima/hmcp/beans/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->message:Lcom/haima/hmcp/beans/Message;

    .line 2
    .line 3
    return-object v0
.end method

.method public setListener(Lcom/haima/hmcp/listeners/OnSendMessageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->listener:Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Lcom/haima/hmcp/beans/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->message:Lcom/haima/hmcp/beans/Message;

    .line 2
    .line 3
    return-void
.end method
