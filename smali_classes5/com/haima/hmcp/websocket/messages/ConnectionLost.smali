.class public Lcom/haima/hmcp/websocket/messages/ConnectionLost;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field public final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "WebSockets connection lost"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ConnectionLost;->reason:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ConnectionLost;->reason:Ljava/lang/String;

    .line 12
    .line 13
    :goto_0
    return-void
.end method
