.class public Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/WebSocketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;
    }
.end annotation


# instance fields
.field private mWebSocketStateCallback:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;->mWebSocketStateCallback:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;->mWebSocketStateCallback:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;->onOpen()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;->onClose()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver;->mWebSocketStateCallback:Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;

    .line 3
    .line 4
    return-void
.end method
