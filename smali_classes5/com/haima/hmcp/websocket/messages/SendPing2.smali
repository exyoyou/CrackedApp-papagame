.class public Lcom/haima/hmcp/websocket/messages/SendPing2;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field private sendTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/haima/hmcp/websocket/messages/SendPing2;->sendTime:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSendTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/websocket/messages/SendPing2;->sendTime:J

    .line 2
    .line 3
    return-wide v0
.end method
