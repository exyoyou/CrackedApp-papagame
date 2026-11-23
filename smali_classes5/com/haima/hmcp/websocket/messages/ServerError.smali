.class public Lcom/haima/hmcp/websocket/messages/ServerError;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field public mStatusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ServerError;->mStatusMessage:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
