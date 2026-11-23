.class Lorg/webrtc/haima/PeerConnectionClient$DCManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DCManager"
.end annotation


# instance fields
.field mDCMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/webrtc/haima/HmDCBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->mDCMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lorg/webrtc/haima/PeerConnectionClient$DCManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lorg/webrtc/haima/PeerConnectionClient$DCManager;Ljava/lang/String;Lorg/webrtc/haima/HmDCBase;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->addDC(Ljava/lang/String;Lorg/webrtc/haima/HmDCBase;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private addDC(Ljava/lang/String;Lorg/webrtc/haima/HmDCBase;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->mDCMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public static createChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;Z)Lorg/hmwebrtc/DataChannel;
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/DataChannel$Init;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/DataChannel$Init;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, v0, Lorg/hmwebrtc/DataChannel$Init;->ordered:Z

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/hmwebrtc/PeerConnection;->createDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private hasDC(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->mDCMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->mDCMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/webrtc/haima/HmDCBase;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/webrtc/haima/HmDCBase;->release()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->mDCMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private removeDC(Ljava/lang/String;)Lorg/webrtc/haima/HmDCBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->mDCMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/webrtc/haima/HmDCBase;

    .line 8
    .line 9
    return-object p1
.end method
