.class public Lorg/webrtc/haima/HmDCDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/DataChannel$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmDCDevice$DataToROM;
    }
.end annotation


# static fields
.field private static final BITRATE:Ljava/lang/String; = "bitrate"

.field protected static final CLOSE:Ljava/lang/String; = "close"

.field protected static final DISPOSE:Ljava/lang/String; = "dispose"

.field private static final MTU:Ljava/lang/String; = "mtu"

.field protected static final OPEN:Ljava/lang/String; = "open"

.field protected static final TAG:Ljava/lang/String; = "HmDCDevice"


# instance fields
.field private isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isRecvdFirstBinary:Z

.field protected isRecvdFirstText:Z

.field protected isSentFirstBinary:Z

.field protected isSentFirstText:Z

.field protected mBitrate:I

.field protected mDataChannel:Lorg/hmwebrtc/DataChannel;

.field protected mDeviceName:Ljava/lang/String;

.field protected mMtu:I

.field protected mSendDataQ:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lorg/webrtc/haima/HmDCDevice$DataToROM;",
            ">;"
        }
    .end annotation
.end field

.field private mSender:Ljava/lang/Thread;

.field private final mSenderRunnable:Ljava/lang/Runnable;

.field protected mTotalBytesFromRom:J

.field protected mTotalBytesToRom:J

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/DataChannel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSendDataQ:Ljava/util/concurrent/BlockingDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Lorg/webrtc/haima/HmDCDevice$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmDCDevice$1;-><init>(Lorg/webrtc/haima/HmDCDevice;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSenderRunnable:Ljava/lang/Runnable;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 40
    .line 41
    const/16 v0, 0x4b0

    .line 42
    .line 43
    iput v0, p0, Lorg/webrtc/haima/HmDCDevice;->mMtu:I

    .line 44
    .line 45
    const v0, 0x249f00

    .line 46
    .line 47
    .line 48
    iput v0, p0, Lorg/webrtc/haima/HmDCDevice;->mBitrate:I

    .line 49
    .line 50
    iput-boolean v1, p0, Lorg/webrtc/haima/HmDCDevice;->isSentFirstBinary:Z

    .line 51
    .line 52
    iput-boolean v1, p0, Lorg/webrtc/haima/HmDCDevice;->isSentFirstText:Z

    .line 53
    .line 54
    iput-boolean v1, p0, Lorg/webrtc/haima/HmDCDevice;->isRecvdFirstText:Z

    .line 55
    .line 56
    iput-boolean v1, p0, Lorg/webrtc/haima/HmDCDevice;->isRecvdFirstBinary:Z

    .line 57
    .line 58
    const/16 v0, 0x348f

    .line 59
    .line 60
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/HmDCDevice;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private startSender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice;->mSenderRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSender:Ljava/lang/Thread;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, " DC device: "

    .line 9
    .line 10
    const-string v2, "HmDCDevice"

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v3, "Close"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v3, "Dispose"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", recved bytes from rom:"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v3, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesFromRom:J

    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", send bytes to rom: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide v3, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesToRom:J

    .line 53
    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSendDataQ:Ljava/util/concurrent/BlockingDeque;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .line 77
    iput-wide v0, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesToRom:J

    .line 78
    .line 79
    iput-wide v0, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesFromRom:J

    .line 80
    .line 81
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSender:Ljava/lang/Thread;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 86
    .line 87
    .line 88
    :cond_1
    if-eqz p1, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 91
    .line 92
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->unregisterObserver()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 96
    .line 97
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->dispose()V

    .line 98
    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v0, "Destroy DC device: "

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    :catch_0
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, "|"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-wide v1, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesFromRom:J

    .line 138
    .line 139
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-wide v0, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesToRom:J

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const/16 v0, 0x3494

    .line 155
    .line 156
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, " already disposed."

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    return-void
.end method

.method protected genSignalJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "version"

    .line 7
    .line 8
    const-string v2, "3.0.2.8.5396d74.12041040"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-object v0
.end method

.method protected onBinary([B)Z
    .locals 2

    .line 1
    iget-boolean p1, p0, Lorg/webrtc/haima/HmDCDevice;->isRecvdFirstBinary:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/webrtc/haima/HmDCDevice;->isRecvdFirstBinary:Z

    .line 7
    .line 8
    const/16 p1, 0x3490

    .line 9
    .line 10
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return v0
.end method

.method public onBufferedAmountChange(J)V
    .locals 0

    return-void
.end method

.method public onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " recved data, lenth:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesFromRom:J

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-long v4, v0

    .line 43
    add-long/2addr v2, v4

    .line 44
    iput-wide v2, p0, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesFromRom:J

    .line 45
    .line 46
    iget-boolean p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lorg/webrtc/haima/HmDCDevice;->onBinary([B)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "UTF-8"

    .line 57
    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmDCDevice;->onText(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, " recved data:"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public onStateChange()V
    .locals 4

    .line 1
    const-string v0, "Data channel "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lorg/hmwebrtc/DataChannel$State;->CLOSED:Lorg/hmwebrtc/DataChannel$State;

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lorg/hmwebrtc/DataChannel$State;->CLOSING:Lorg/hmwebrtc/DataChannel$State;

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lorg/webrtc/haima/HmDataChannelManager;->destroyDCDevice(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, " state changed: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " state exception: "

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method protected onText(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/HmDCDevice;->isRecvdFirstText:Z

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lorg/webrtc/haima/HmDCDevice;->isRecvdFirstText:Z

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "|"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/16 v3, 0x3491

    .line 32
    .line 33
    invoke-static {v3, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "behavior"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v3, "open"

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    return v0

    .line 56
    :cond_1
    const-string p1, "bitrate"

    .line 57
    .line 58
    iget v3, p0, Lorg/webrtc/haima/HmDCDevice;->mBitrate:I

    .line 59
    .line 60
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lorg/webrtc/haima/HmDCDevice;->mBitrate:I

    .line 65
    .line 66
    const-string p1, "mtu"

    .line 67
    .line 68
    iget v3, p0, Lorg/webrtc/haima/HmDCDevice;->mMtu:I

    .line 69
    .line 70
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lorg/webrtc/haima/HmDCDevice;->mMtu:I

    .line 75
    .line 76
    iget-object p1, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :catch_0
    return v0
.end method

.method public synthetic onWritableState(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/g;->a(Lorg/hmwebrtc/DataChannel$Observer;Z)V

    return-void
.end method

.method public send(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "HmDCDevice"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "The text what send over rtc data channel is null."

    .line 2
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Device is disposed."

    .line 4
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    invoke-direct {p0}, Lorg/webrtc/haima/HmDCDevice;->startSender()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSendDataQ:Ljava/util/concurrent/BlockingDeque;

    new-instance v1, Lorg/webrtc/haima/HmDCDevice$DataToROM;

    array-length v3, p1

    invoke-direct {v1, p1, v3, v2}, Lorg/webrtc/haima/HmDCDevice$DataToROM;-><init>([BIZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v2
.end method

.method public send([B)Z
    .locals 5

    const-string v0, "HmDCDevice"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 8
    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Device is disposed."

    .line 10
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_1
    invoke-direct {p0}, Lorg/webrtc/haima/HmDCDevice;->startSender()V

    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mSendDataQ:Ljava/util/concurrent/BlockingDeque;

    new-instance v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;

    array-length v3, p1

    const/4 v4, 0x1

    invoke-direct {v2, p1, v3, v4}, Lorg/webrtc/haima/HmDCDevice$DataToROM;-><init>([BIZ)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v1

    :cond_2
    :goto_0
    const-string p1, "The byte buffer what send over rtc data channel is null."

    .line 13
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public send([BZ)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "HmDCDevice"

    if-eqz p1, :cond_2

    .line 14
    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lorg/webrtc/haima/HmDCDevice;->isDisposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Device is disposed."

    .line 16
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 17
    :cond_1
    invoke-direct {p0}, Lorg/webrtc/haima/HmDCDevice;->startSender()V

    .line 18
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/HmDCDevice;->mSendDataQ:Ljava/util/concurrent/BlockingDeque;

    new-instance v3, Lorg/webrtc/haima/HmDCDevice$DataToROM;

    array-length v4, p1

    const/4 v5, 0x1

    invoke-direct {v3, p1, v4, v5, p2}, Lorg/webrtc/haima/HmDCDevice$DataToROM;-><init>([BIZZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put data to mSendDataQ exception, msg:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    const-string p1, "The byte buffer what send over rtc data channel is null."

    .line 20
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
