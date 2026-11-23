.class public Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamerAudioInfo"
.end annotation


# static fields
.field private static final MAX_INFO_COUNT:I = 0x2

.field private static mReportArrayLock:Ljava/lang/Object; = null

.field public static final mType:Ljava/lang/String; = "a_delay"


# instance fields
.field public mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

.field private step:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArrayLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lorg/hmwebrtc/StatsReport$Value;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 8
    .line 9
    new-instance v1, Lorg/hmwebrtc/StatsReport$Value;

    .line 10
    .line 11
    const-string v2, "audioCaptureDelay"

    .line 12
    .line 13
    const-string v3, "0"

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 22
    .line 23
    new-instance v1, Lorg/hmwebrtc/StatsReport$Value;

    .line 24
    .line 25
    const-string v2, "audioEncodeDelay"

    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getStats()[Lorg/hmwebrtc/StatsReport$Value;
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArrayLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 5
    .line 6
    invoke-virtual {v1}, [Lorg/hmwebrtc/StatsReport$Value;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, [Lorg/hmwebrtc/StatsReport$Value;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public parseStreamerAudioInfo([Ljava/lang/String;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    const-string v2, "a_delay"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "parseStreamerAudioInfo info length:"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArrayLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v4, v0, :cond_9

    .line 39
    .line 40
    :try_start_1
    iget v6, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->step:I

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    if-eqz v6, :cond_7

    .line 44
    .line 45
    if-eq v6, v7, :cond_4

    .line 46
    .line 47
    if-eq v6, v1, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    if-nez v5, :cond_2

    .line 51
    .line 52
    iget-object v6, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 53
    .line 54
    new-instance v7, Lorg/hmwebrtc/StatsReport$Value;

    .line 55
    .line 56
    const-string v8, "audioCaptureDelay"

    .line 57
    .line 58
    aget-object v9, p1, v4

    .line 59
    .line 60
    invoke-direct {v7, v8, v9}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput-object v7, v6, v3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-ne v5, v7, :cond_3

    .line 67
    .line 68
    iget-object v6, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 69
    .line 70
    new-instance v8, Lorg/hmwebrtc/StatsReport$Value;

    .line 71
    .line 72
    const-string v9, "audioEncodeDelay"

    .line 73
    .line 74
    aget-object v10, p1, v4

    .line 75
    .line 76
    invoke-direct {v8, v9, v10}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    aput-object v8, v6, v7

    .line 80
    .line 81
    iput v3, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->step:I

    .line 82
    .line 83
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    aget-object v6, p1, v4

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-lt v6, v1, :cond_6

    .line 93
    .line 94
    add-int/lit8 v7, v4, 0x1

    .line 95
    .line 96
    sub-int v7, v0, v7

    .line 97
    .line 98
    if-le v6, v7, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iput v1, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->step:I

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    :goto_2
    const-string v7, "a_delay"

    .line 105
    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v9, "data length "

    .line 112
    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v6, " is not smaller than :"

    .line 120
    .line 121
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v7, v6}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput v3, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->step:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    aget-object v5, p1, v4

    .line 138
    .line 139
    const-string v6, "a_delay"

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_8

    .line 146
    .line 147
    iput v7, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->step:I

    .line 148
    .line 149
    :cond_8
    const/4 v5, 0x0

    .line 150
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    iput v3, p0, Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;->step:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    :catch_0
    move-exception p1

    .line 161
    const-string v0, "a_delay"

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v2, "parseStreamerAudioInfo Exception:"

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_4
    return-void

    .line 188
    :cond_a
    :goto_5
    const-string p1, "a_delay"

    .line 189
    .line 190
    const-string v0, "parseStreamerAudioInfo value is null or empty"

    .line 191
    .line 192
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method
