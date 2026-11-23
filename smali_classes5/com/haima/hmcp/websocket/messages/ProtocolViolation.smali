.class public Lcom/haima/hmcp/websocket/messages/ProtocolViolation;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field public mException:Lcom/haima/hmcp/websocket/exceptions/WebSocketException;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/websocket/exceptions/WebSocketException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ProtocolViolation;->mException:Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    .line 5
    .line 6
    return-void
.end method
