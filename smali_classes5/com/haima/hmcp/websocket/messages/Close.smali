.class public Lcom/haima/hmcp/websocket/messages/Close;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field public mCode:I

.field public mIsReply:Z

.field public mReason:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 5
    iput p1, p0, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 11
    iput p1, p0, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 12
    iput-object p2, p0, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 14
    iput p1, p0, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 15
    iput-boolean p3, p0, Lcom/haima/hmcp/websocket/messages/Close;->mIsReply:Z

    .line 16
    iput-object p2, p0, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 8
    iput p1, p0, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 9
    iput-boolean p2, p0, Lcom/haima/hmcp/websocket/messages/Close;->mIsReply:Z

    return-void
.end method
