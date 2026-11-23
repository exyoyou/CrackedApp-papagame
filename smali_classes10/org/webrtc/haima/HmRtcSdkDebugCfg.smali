.class public Lorg/webrtc/haima/HmRtcSdkDebugCfg;
.super Lorg/webrtc/haima/HmRtcSdkCloudCfg;
.source "SourceFile"


# static fields
.field private static final FIELD_DEBUG_CACHE_MAXBYTES:Ljava/lang/String; = "debug_cache_size"

.field private static final FIELD_DEBUG_FUNC_LIST:Ljava/lang/String; = "debug_func_list"

.field private static final FIELD_DEBUG_TAG_LIST:Ljava/lang/String; = "debug_tag_list"

.field private static final FIELD_DEBUG_UID_LIST:Ljava/lang/String; = "debug_uid_list"

.field private static final FIELD_DEBUG_UPLOAD_INTERVAL:Ljava/lang/String; = "debug_upload_interval"

.field public static final LOG_CACHE_MAXBYTES:J = 0x8000L

.field public static final LOG_CACHE_MAXBYTES_MAX:J = 0x40000L

.field public static final LOG_CACHE_MAXBYTES_MIN:J = 0x1000L

.field public static final LOG_UPLOAD_INTERVAL:J = 0x1388L

.field public static final LOG_UPLOAD_INTERVAL_MAX:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "HmRtcSdkDebugCfg"

.field private static mDebugFuncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDebugTagList:[Ljava/lang/String;


# instance fields
.field private mBlackListStr:Ljava/lang/String;

.field private mCidTailNumStr:Ljava/lang/String;

.field private mDebugLogLevel:I

.field private mDebugLogPath:Ljava/lang/String;

.field private mDebugUidList:Ljava/lang/String;

.field private mEnableDebugMode:Z

.field private mEnableLogcatOutput:Z

.field private mEnableSingleThread:Z

.field private mMaxBytes:J

.field private mModelListStr:Ljava/lang/String;

.field private mUploadInterval:J

.field private mUserId:Ljava/lang/String;

.field private mVersionListStr:Ljava/lang/String;

.field private mWhiteListStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0x8000

    .line 6
    .line 7
    .line 8
    iput-wide v1, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mMaxBytes:J

    .line 9
    .line 10
    const-wide/16 v1, 0x1388

    .line 11
    .line 12
    iput-wide v1, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUploadInterval:J

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mEnableDebugMode:Z

    .line 15
    .line 16
    iput v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugLogLevel:I

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugLogPath:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->extractDebugValue(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUserId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mWhiteListStr:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mBlackListStr:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mVersionListStr:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mModelListStr:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;->isSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-string v0, "HmRtcSdkDebugCfg"

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugUidList:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUserId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0, p1, v1}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->checkUserId(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "HMConf enable the config! "

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;->ToString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 p1, 0x35ca

    .line 84
    .line 85
    invoke-static {p1, p2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HMRTConfig;->setEnable(Z)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string p2, "HMConf disable the config! "

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;->ToString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method private checkUserId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string v0, "\\|"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    array-length v0, p1

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v2, p1

    .line 29
    if-ge v0, v2, :cond_3

    .line 30
    .line 31
    aget-object v2, p1, v0

    .line 32
    .line 33
    invoke-direct {p0, v2, p2}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->userIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const-string p1, "HmRtcSdkDebugCfg"

    .line 45
    .line 46
    const-string p2, "userId is not matched"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_1
    return v1
.end method

.method private extractDebugValue(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugFuncMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->parseMapFromString(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string v0, "white_list"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mWhiteListStr:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "black_list"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mBlackListStr:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "os_ver_list"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mVersionListStr:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "model_list"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mModelListStr:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "cid_tail_num"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mCidTailNumStr:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "debug_uid_list"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugUidList:Ljava/lang/String;

    .line 81
    .line 82
    const-string v0, "debug_tag_list"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->parseDebugTagList(Ljava/lang/String;)[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugTagList:[Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "debug_cache_size"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/CharSequence;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const-string v2, "fatal error, msg: "

    .line 109
    .line 110
    const-string v3, "HmRtcSdkDebugCfg"

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mMaxBytes:J

    .line 129
    .line 130
    const-wide/16 v4, 0x1000

    .line 131
    .line 132
    cmp-long v6, v0, v4

    .line 133
    .line 134
    if-gez v6, :cond_2

    .line 135
    .line 136
    iput-wide v4, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mMaxBytes:J

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    const-wide/32 v4, 0x40000

    .line 140
    .line 141
    .line 142
    cmp-long v6, v0, v4

    .line 143
    .line 144
    if-lez v6, :cond_3

    .line 145
    .line 146
    iput-wide v4, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mMaxBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_0
    const-string v0, "debug_upload_interval"

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Ljava/lang/CharSequence;

    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_5

    .line 181
    .line 182
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUploadInterval:J

    .line 197
    .line 198
    const-wide/16 v4, 0x1388

    .line 199
    .line 200
    cmp-long p1, v0, v4

    .line 201
    .line 202
    if-gez p1, :cond_4

    .line 203
    .line 204
    iput-wide v4, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUploadInterval:J

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_4
    const-wide/16 v4, 0x3a98

    .line 208
    .line 209
    cmp-long p1, v0, v4

    .line 210
    .line 211
    if-lez p1, :cond_5

    .line 212
    .line 213
    iput-wide v4, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUploadInterval:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catch_1
    move-exception p1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    :goto_1
    return-void
.end method

.method public static getDebugTagList()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugTagList:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private parseDebugFuncMap(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-lez p2, :cond_2

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ge p2, v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p3, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string p3, "fatal error, parse debug config failed: "

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "HmRtcSdkDebugCfg"

    .line 84
    .line 85
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_2
    return-void
.end method

.method private parseDebugTagList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, "\\|"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-object p1

    .line 22
    :cond_2
    :goto_0
    return-object v1
.end method

.method private parseMapFromString(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "debug_func_list"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "parseMapFromString: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "HmRtcSdkDebugCfg"

    .line 21
    .line 22
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    invoke-direct {p0, v4, v0, p2}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->parseDebugFuncMap(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1

    .line 84
    :catch_0
    const-string p1, "13339parse exception."

    .line 85
    .line 86
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    return-object v3
.end method

.method private userIdMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getDebugLogLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugLogLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getDebugLogPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugLogPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mMaxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUploadInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mUploadInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isEnableDebugMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mEnableDebugMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableLogcatOutput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mEnableLogcatOutput:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableSingleThread()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mEnableSingleThread:Z

    .line 2
    .line 3
    return v0
.end method

.method public rebuildRtcCfgParam(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugFuncMap:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugFuncMap:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v2, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->mDebugFuncMap:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    :goto_1
    const-string p1, "HmRtcSdkDebugCfg"

    .line 50
    .line 51
    const-string v0, "debug func is null"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
