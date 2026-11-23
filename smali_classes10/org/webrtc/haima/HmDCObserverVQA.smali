.class public Lorg/webrtc/haima/HmDCObserverVQA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmDCSimple$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "vqa_chn"


# instance fields
.field private final mFieldInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/haima/HmStatsCollector$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Lorg/webrtc/haima/HmStatsCollector;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmDCObserverVQA;->mFieldInfoList:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 12
    .line 13
    sget-object v2, Lorg/webrtc/haima/HmStatsCollector$FieldType;->kLong:Lorg/webrtc/haima/HmStatsCollector$FieldType;

    .line 14
    .line 15
    const-string v3, "Streamer_utcTimeMs"

    .line 16
    .line 17
    const-string v4, "-1"

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 26
    .line 27
    const-string v3, "Streamer_captureSJankDurationMs"

    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 36
    .line 37
    const-string v3, "Streamer_captureJankDurationMs"

    .line 38
    .line 39
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 46
    .line 47
    const-string v3, "Streamer_captureBJankDurationMs"

    .line 48
    .line 49
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 56
    .line 57
    const-string v3, "Streamer_encodeSJankDurationMs"

    .line 58
    .line 59
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 66
    .line 67
    const-string v3, "Streamer_encodeJankDurationMs"

    .line 68
    .line 69
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 76
    .line 77
    const-string v3, "Streamer_encodeBJankDurationMs"

    .line 78
    .line 79
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 86
    .line 87
    const-string v3, "Streamer_sentSJankDurationMs"

    .line 88
    .line 89
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 96
    .line 97
    const-string v3, "Streamer_sentJankDurationMs"

    .line 98
    .line 99
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 106
    .line 107
    const-string v3, "Streamer_sentBJankDurationMs"

    .line 108
    .line 109
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 116
    .line 117
    const-string v3, "Streamer_rtpSJankDurationMs"

    .line 118
    .line 119
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 126
    .line 127
    const-string v3, "Streamer_rtpJankDurationMs"

    .line 128
    .line 129
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 136
    .line 137
    const-string v3, "Streamer_rtpBJankDurationMs"

    .line 138
    .line 139
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 146
    .line 147
    const-string v3, "Streamer_realSJankDurationMs"

    .line 148
    .line 149
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 156
    .line 157
    const-string v3, "Streamer_realJankDurationMs"

    .line 158
    .line 159
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 166
    .line 167
    const-string v3, "Streamer_realBJankDurationMs"

    .line 168
    .line 169
    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;-><init>(Lorg/webrtc/haima/HmStatsCollector$FieldType;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    new-array v1, v1, [Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 180
    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, [Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 186
    .line 187
    new-instance v1, Lorg/webrtc/haima/HmStatsCollector;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Lorg/webrtc/haima/HmStatsCollector;-><init>([Lorg/webrtc/haima/HmStatsCollector$FieldInfo;)V

    .line 190
    .line 191
    .line 192
    iput-object v1, p0, Lorg/webrtc/haima/HmDCObserverVQA;->mStats:Lorg/webrtc/haima/HmStatsCollector;

    .line 193
    .line 194
    return-void
.end method

.method private handleMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "vqa_chn"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "\\|"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length v0, p1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    array-length v0, p1

    .line 21
    iget-object v2, p0, Lorg/webrtc/haima/HmDCObserverVQA;->mFieldInfoList:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, v1

    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lorg/webrtc/haima/HmDCObserverVQA;->mStats:Lorg/webrtc/haima/HmStatsCollector;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lorg/webrtc/haima/HmStatsCollector;->setValues(I[Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method getStatCollector()Lorg/webrtc/haima/HmStatsCollector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDCObserverVQA;->mStats:Lorg/webrtc/haima/HmStatsCollector;

    .line 2
    .line 3
    return-object v0
.end method

.method public onReceiveMessage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "vqa_chn"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmDCObserverVQA;->handleMessage(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
