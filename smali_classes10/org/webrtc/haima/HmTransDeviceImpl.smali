.class public Lorg/webrtc/haima/HmTransDeviceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmTransDevice;
.implements Lorg/hmwebrtc/DataChannel$Observer;


# static fields
.field private static final DATA_TYPE_RAW_INPUT:B = 0x1t

.field private static final MESSAGE_TYPE_BINARY:B = 0x1t

.field private static final MESSAGE_TYPE_TEXT:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "HmTransDeviceImpl"


# instance fields
.field private mEmitOnOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFlag:I

.field private mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

.field private mReliableDC:Lorg/hmwebrtc/DataChannel;

.field private mReliableDCName:Ljava/lang/String;

.field mSendDataBuf:[B

.field private mSendDataLock:Ljava/lang/Object;

.field mSendTextBuf:[B

.field private mSendTextLock:Ljava/lang/Object;

.field private mSentFirstFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mEmitOnOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendTextLock:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendDataLock:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public init(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;ILorg/webrtc/haima/HmTransDevice$Observer;)Z
    .locals 3

    .line 1
    new-instance v0, Lorg/hmwebrtc/DataChannel$Init;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/DataChannel$Init;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 9
    .line 10
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/PeerConnection;->createDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    const-string v0, "HmTransDeviceImpl"

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "Failed to create reliable data channel."

    .line 22
    .line 23
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return p4

    .line 27
    :cond_0
    invoke-virtual {p1, p0}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "name:"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/16 v2, 0x3517

    .line 50
    .line 51
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "Initialize transport device, name:"

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, ", flag:"

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 83
    .line 84
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object p2, Lorg/hmwebrtc/DataChannel$State;->OPEN:Lorg/hmwebrtc/DataChannel$State;

    .line 89
    .line 90
    const/4 p3, 0x1

    .line 91
    if-ne p1, p2, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 94
    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    iget-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mEmitOnOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-virtual {p1, p4, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 106
    .line 107
    invoke-interface {p1}, Lorg/webrtc/haima/HmTransDevice$Observer;->onOpen()V

    .line 108
    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/16 p2, 0x3518

    .line 128
    .line 129
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string p1, "onOpen1"

    .line 133
    .line 134
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    return p3
.end method

.method public onBufferedAmountChange(J)V
    .locals 0

    return-void
.end method

.method public onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    iget-object v1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-boolean p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    .line 30
    .line 31
    invoke-interface {v1, v0, p1}, Lorg/webrtc/haima/HmTransDevice$Observer;->onMessage([BZ)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    :goto_0
    const-string p1, "HmTransDeviceImpl"

    .line 36
    .line 37
    const-string v0, "DataChannel data is null!"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onStateChange()V
    .locals 7

    .line 1
    const-string v0, "Data channel "

    .line 2
    .line 3
    const-string v1, "HmTransDeviceImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 8
    .line 9
    invoke-virtual {v4}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v6, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v6, " state changed: "

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v1, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v5, Lorg/hmwebrtc/DataChannel$State;->OPEN:Lorg/hmwebrtc/DataChannel$State;

    .line 42
    .line 43
    if-ne v4, v5, :cond_0

    .line 44
    .line 45
    iget-object v5, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    iget-object v5, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mEmitOnOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    invoke-virtual {v5, v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    iget-object v4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 59
    .line 60
    invoke-interface {v4}, Lorg/webrtc/haima/HmTransDevice$Observer;->onOpen()V

    .line 61
    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v5, "name:"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/16 v5, 0x3518

    .line 83
    .line 84
    invoke-static {v5, v4}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v4, "onOpen2"

    .line 88
    .line 89
    invoke-static {v1, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    sget-object v5, Lorg/hmwebrtc/DataChannel$State;->CLOSED:Lorg/hmwebrtc/DataChannel$State;

    .line 94
    .line 95
    if-eq v4, v5, :cond_1

    .line 96
    .line 97
    sget-object v5, Lorg/hmwebrtc/DataChannel$State;->CLOSING:Lorg/hmwebrtc/DataChannel$State;

    .line 98
    .line 99
    if-ne v4, v5, :cond_3

    .line 100
    .line 101
    :cond_1
    iget-object v4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 102
    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    invoke-interface {v4}, Lorg/webrtc/haima/HmTransDevice$Observer;->onClose()V

    .line 106
    .line 107
    .line 108
    :cond_2
    iput-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 109
    .line 110
    iput-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 111
    .line 112
    iget-object v4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mEmitOnOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    iput-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 120
    .line 121
    iput-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 122
    .line 123
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mEmitOnOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, " state exception: "

    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onWritableState(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/g;->a(Lorg/hmwebrtc/DataChannel$Observer;Z)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    const-string v0, "Release transport device, name:"

    .line 2
    .line 3
    const-string v1, "HmTransDeviceImpl"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lorg/hmwebrtc/DataChannel;->unregisterObserver()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/hmwebrtc/DataChannel;->dispose()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDCName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 61
    .line 62
    iput-object v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mObserver:Lorg/webrtc/haima/HmTransDevice$Observer;

    .line 63
    .line 64
    return-void
.end method

.method public sendData([BI)Z
    .locals 6

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    array-length v0, p1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    array-length v0, p1

    .line 9
    const/4 v1, 0x2

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendDataLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendDataBuf:[B

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    array-length v3, v3

    .line 19
    if-ge v3, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    new-array v3, v0, [B

    .line 22
    .line 23
    iput-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendDataBuf:[B

    .line 24
    .line 25
    :cond_2
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendDataBuf:[B

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    aput-byte v4, v3, p2

    .line 29
    .line 30
    aput-byte p2, v3, v4

    .line 31
    .line 32
    array-length v5, p1

    .line 33
    invoke-static {p1, p2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    new-instance v1, Lorg/hmwebrtc/DataChannel$Buffer;

    .line 41
    .line 42
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendDataBuf:[B

    .line 43
    .line 44
    invoke-static {v3, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0, v4}, Lorg/hmwebrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lorg/hmwebrtc/DataChannel;->send(Lorg/hmwebrtc/DataChannel$Buffer;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p1, 0x0

    .line 57
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    :try_start_2
    iget-boolean v0, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSentFirstFrame:Z

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    iput-boolean v4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSentFirstFrame:Z

    .line 65
    .line 66
    const-string v0, "HmTransDeviceImpl"

    .line 67
    .line 68
    const-string v1, "Sent the first data message."

    .line 69
    .line 70
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/16 v0, 0x3516

    .line 74
    .line 75
    invoke-static {v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    .line 78
    :cond_4
    return p1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    const-string v0, "HmTransDeviceImpl"

    .line 84
    .line 85
    const-string v1, "Failed to send message."

    .line 86
    .line 87
    invoke-static {v0, v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return p2

    .line 91
    :cond_5
    :goto_1
    const-string p1, "HmTransDeviceImpl"

    .line 92
    .line 93
    const-string v0, "The sent buffer is null."

    .line 94
    .line 95
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return p2
.end method

.method public sendText(Ljava/lang/String;I)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string p1, "HmTransDeviceImpl"

    .line 9
    .line 10
    const-string p2, "The sent message is null."

    .line 11
    .line 12
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    :try_start_0
    const-string p2, "UTF-8"

    .line 17
    .line 18
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    array-length p2, p1

    .line 27
    const/4 v1, 0x2

    .line 28
    add-int/2addr p2, v1

    .line 29
    iget-object v2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendTextLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendTextBuf:[B

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    array-length v3, v3

    .line 37
    if-ge v3, p2, :cond_2

    .line 38
    .line 39
    :cond_1
    new-array v3, p2, [B

    .line 40
    .line 41
    iput-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendTextBuf:[B

    .line 42
    .line 43
    :cond_2
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendTextBuf:[B

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    aput-byte v4, v3, v0

    .line 47
    .line 48
    aput-byte v0, v3, v4

    .line 49
    .line 50
    array-length v5, p1

    .line 51
    invoke-static {p1, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mReliableDC:Lorg/hmwebrtc/DataChannel;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    new-instance v1, Lorg/hmwebrtc/DataChannel$Buffer;

    .line 59
    .line 60
    iget-object v3, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSendTextBuf:[B

    .line 61
    .line 62
    invoke-static {v3, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {v1, p2, v4}, Lorg/hmwebrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lorg/hmwebrtc/DataChannel;->send(Lorg/hmwebrtc/DataChannel$Buffer;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 p1, 0x0

    .line 75
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    :try_start_2
    iget-boolean p2, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSentFirstFrame:Z

    .line 79
    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    iput-boolean v4, p0, Lorg/webrtc/haima/HmTransDeviceImpl;->mSentFirstFrame:Z

    .line 83
    .line 84
    const-string p2, "HmTransDeviceImpl"

    .line 85
    .line 86
    const-string v1, "Sent the first text message."

    .line 87
    .line 88
    invoke-static {p2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/16 p2, 0x3516

    .line 92
    .line 93
    invoke-static {p2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    :cond_4
    return p1

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    const-string p2, "HmTransDeviceImpl"

    .line 102
    .line 103
    const-string v1, "Failed to send message."

    .line 104
    .line 105
    invoke-static {p2, v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    return v0
.end method
