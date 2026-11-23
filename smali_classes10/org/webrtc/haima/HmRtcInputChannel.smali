.class public Lorg/webrtc/haima/HmRtcInputChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeCreate()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 9
    .line 10
    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeCreateInputChannel(J)Z
.end method

.method private native nativeDestroyInputChannel(J)V
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeGetLocalVersion(J)Ljava/lang/String;
.end method

.method private native nativeIsCanCreateInputChannel(J)Z
.end method

.method private native nativeIsInputChannelDataChannel(JLorg/hmwebrtc/DataChannel;)Z
.end method

.method private native nativeIsValid(J)Z
.end method

.method private native nativeSendInput(JZ[BZ)Z
.end method

.method private native nativeSetDataChannel(JLorg/hmwebrtc/DataChannel;)Z
.end method

.method private native nativeSetRemoteVersion(JLjava/lang/String;)V
.end method


# virtual methods
.method public GetLocalVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeGetLocalVersion(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public createInputChannel()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeCreateInputChannel(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public destroyInputChannel()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeDestroyInputChannel(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeDispose(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isCanCreateInputChannel()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeIsCanCreateInputChannel(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInputChannelDataChannel(Lorg/hmwebrtc/DataChannel;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeIsInputChannelDataChannel(JLorg/hmwebrtc/DataChannel;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeIsValid(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public sendInput(Z[BZ)Z
    .locals 6

    .line 1
    iget-wide v1, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeSendInput(JZ[BZ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setDataChannel(Lorg/hmwebrtc/DataChannel;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeSetDataChannel(JLorg/hmwebrtc/DataChannel;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setRemoteVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcInputChannel;->nativeHandle:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/haima/HmRtcInputChannel;->nativeSetRemoteVersion(JLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
