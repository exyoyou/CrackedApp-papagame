.class public Lorg/webrtc/haima/HmRtcCommandFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmRtcCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmRtcCommandFilter$ChannelStateRunnable;,
        Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;,
        Lorg/webrtc/haima/HmRtcCommandFilter$Listener;,
        Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;
    }
.end annotation


# static fields
.field public static final STATE_CLOSE:I = 0x2

.field public static final STATE_OPEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "HmRtcCommandFilter"

.field private static mGeneratedId:I = 0x1


# instance fields
.field private mLastOnAvailableState:Z

.field private mListener:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

.field private mProcessThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;Lorg/webrtc/haima/HmRtcCommandFilter$Listener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mLastOnAvailableState:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mProcessThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mListener:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

    .line 10
    .line 11
    const-string p1, "HmRtcCommandFilter"

    .line 12
    .line 13
    const-string p2, "HmRtcCommandFilter ctor "

    .line 14
    .line 15
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/HmRtcCommandFilter;)Lorg/webrtc/haima/HmRtcCommandFilter$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mListener:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method handleCommandChannelAvailable(Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;)V
    .locals 4

    .line 1
    const-string v0, "HmRtcCommandFilter"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "handleCommandChannelAvailable state is null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, p1, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;->id:I

    .line 12
    .line 13
    sget v2, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "handleCommandChannelAvailable rtc closed "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget p1, p1, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;->id:I

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget p1, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-boolean v1, p1, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;->opened:Z

    .line 51
    .line 52
    iget-boolean v2, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mLastOnAvailableState:Z

    .line 53
    .line 54
    if-eq v1, v2, :cond_2

    .line 55
    .line 56
    const-string p1, "handleCommandChannelAvailable channel closed"

    .line 57
    .line 58
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    if-eqz v1, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 v1, 0x2

    .line 67
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "handleCommandChannelAvailable notify "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-boolean p1, p1, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;->opened:Z

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    const-string p1, "open"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const-string p1, "close"

    .line 85
    .line 86
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mListener:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

    .line 97
    .line 98
    invoke-interface {p1, v1}, Lorg/webrtc/haima/HmRtcCommandFilter$Listener;->onInputTransportState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception p1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "onInputTransportState ex:"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    return-void
.end method

.method public init()V
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sput v0, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 6
    .line 7
    return-void
.end method

.method public onAvailable(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mLastOnAvailableState:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "post delay onAvailable(100ms) mGeneratedId:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget v0, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "HmRtcCommandFilter"

    .line 26
    .line 27
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mProcessThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

    .line 31
    .line 32
    new-instance v0, Lorg/webrtc/haima/HmRtcCommandFilter$3;

    .line 33
    .line 34
    new-instance v1, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;

    .line 35
    .line 36
    sget v2, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v1, v2, v3}, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;-><init>(IZ)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/HmRtcCommandFilter$3;-><init>(Lorg/webrtc/haima/HmRtcCommandFilter;Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v1, 0x64

    .line 46
    .line 47
    invoke-interface {p1, v0, v1, v2}, Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onReceiveBinary([B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mProcessThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/HmRtcCommandFilter$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/HmRtcCommandFilter$2;-><init>(Lorg/webrtc/haima/HmRtcCommandFilter;[B)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-interface {v0, v1, v2, v3}, Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onReceiveText(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandFilter;->mProcessThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/HmRtcCommandFilter$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/HmRtcCommandFilter$1;-><init>(Lorg/webrtc/haima/HmRtcCommandFilter;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-interface {v0, v1, v2, v3}, Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sput v0, Lorg/webrtc/haima/HmRtcCommandFilter;->mGeneratedId:I

    .line 6
    .line 7
    return-void
.end method
