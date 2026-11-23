.class public Lorg/hmwebrtc/DataChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/DataChannel$SendResult;,
        Lorg/hmwebrtc/DataChannel$SendOptoins;,
        Lorg/hmwebrtc/DataChannel$State;,
        Lorg/hmwebrtc/DataChannel$Observer;,
        Lorg/hmwebrtc/DataChannel$Buffer;,
        Lorg/hmwebrtc/DataChannel$Init;
    }
.end annotation


# instance fields
.field private nativeDataChannel:J

.field private nativeObserver:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/hmwebrtc/DataChannel;->nativeDataChannel:J

    .line 5
    .line 6
    return-void
.end method

.method private checkDataChannelExists()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeDataChannel:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "DataChannel has been disposed."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private native nativeBufferedAmount()J
.end method

.method private native nativeClose()V
.end method

.method private native nativeId()I
.end method

.method private native nativeLabel()Ljava/lang/String;
.end method

.method private native nativeRegisterObserver(Lorg/hmwebrtc/DataChannel$Observer;)J
.end method

.method private native nativeSend([BZ)Z
.end method

.method private native nativeSendEx([BZLorg/hmwebrtc/DataChannel$SendOptoins;)Lorg/hmwebrtc/DataChannel$SendResult;
.end method

.method private native nativeState()Lorg/hmwebrtc/DataChannel$State;
.end method

.method private native nativeUnregisterObserver(J)V
.end method


# virtual methods
.method public bufferedAmount()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->nativeBufferedAmount()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    return-wide v0
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->nativeClose()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeDataChannel:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/hmwebrtc/JniCommon;->nativeReleaseRef(J)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeDataChannel:J

    .line 12
    .line 13
    return-void
.end method

.method public getNativeDataChannel()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeDataChannel:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public id()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->nativeId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public label()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->nativeLabel()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeObserver:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/DataChannel;->nativeUnregisterObserver(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lorg/hmwebrtc/DataChannel;->nativeRegisterObserver(Lorg/hmwebrtc/DataChannel$Observer;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeObserver:J

    .line 20
    .line 21
    return-void
.end method

.method public send(Lorg/hmwebrtc/DataChannel$Buffer;Lorg/hmwebrtc/DataChannel$SendOptoins;)Lorg/hmwebrtc/DataChannel$SendResult;
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 8
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 9
    iget-object v1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    iget-boolean p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    invoke-direct {p0, v0, p1, p2}, Lorg/hmwebrtc/DataChannel;->nativeSendEx([BZLorg/hmwebrtc/DataChannel$SendOptoins;)Lorg/hmwebrtc/DataChannel$SendResult;

    move-result-object p1

    return-object p1
.end method

.method public send(Lorg/hmwebrtc/DataChannel$Buffer;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 3
    iget-object v1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    iget-boolean p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    invoke-direct {p0, v0, p1}, Lorg/hmwebrtc/DataChannel;->nativeSend([BZ)Z

    move-result p1

    return p1
.end method

.method public send([BZ)Z
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/DataChannel;->nativeSend([BZ)Z

    move-result p1

    return p1
.end method

.method public state()Lorg/hmwebrtc/DataChannel$State;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->nativeState()Lorg/hmwebrtc/DataChannel$State;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public unregisterObserver()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/DataChannel;->checkDataChannelExists()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeObserver:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/DataChannel;->nativeUnregisterObserver(J)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/hmwebrtc/DataChannel;->nativeObserver:J

    .line 12
    .line 13
    return-void
.end method
