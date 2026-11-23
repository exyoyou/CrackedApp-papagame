.class public Lorg/webrtc/haima/HmDCObserverFectl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmDCSimple$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "fec_chn"

.field private static final kClose:Ljava/lang/String; = "close"

.field private static final kOpen:Ljava/lang/String; = "open"


# instance fields
.field private mPc:Lorg/hmwebrtc/PeerConnection;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/PeerConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/HmDCObserverFectl;->mPc:Lorg/hmwebrtc/PeerConnection;

    .line 5
    .line 6
    return-void
.end method

.method private handleOpenFec(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "handleOpenFec:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "fec_chn"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "open"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v1, "fec.open"

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lorg/webrtc/haima/HmDCObserverFectl;->mPc:Lorg/hmwebrtc/PeerConnection;

    .line 34
    .line 35
    const-wide/16 v2, 0x1

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2, v3}, Lorg/hmwebrtc/PeerConnection;->setPropertyLong(Ljava/lang/String;J)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "close"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lorg/webrtc/haima/HmDCObserverFectl;->mPc:Lorg/hmwebrtc/PeerConnection;

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2, v3}, Lorg/hmwebrtc/PeerConnection;->setPropertyLong(Ljava/lang/String;J)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceiveMessage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "fec_chn"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmDCObserverFectl;->handleOpenFec(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
