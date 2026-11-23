.class public Lcom/haima/hmcp/websocket/messages/ClientHandshake;
.super Lcom/haima/hmcp/websocket/messages/Message;
.source "SourceFile"


# instance fields
.field public mHeaderList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHost:Ljava/lang/String;

.field public mOrigin:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mQuery:Ljava/lang/String;

.field public mSubprotocols:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHost:Ljava/lang/String;

    const-string p1, "/"

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mOrigin:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHeaderList:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHost:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mPath:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mOrigin:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/messages/Message;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHost:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mPath:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mOrigin:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    return-void
.end method
