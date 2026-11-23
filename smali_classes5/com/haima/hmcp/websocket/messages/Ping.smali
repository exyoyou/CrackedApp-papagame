.class public Lcom/haima/hmcp/websocket/messages/Ping;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field public mPayload:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/websocket/messages/Ping;->mPayload:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/Ping;->mPayload:[B

    return-void
.end method
