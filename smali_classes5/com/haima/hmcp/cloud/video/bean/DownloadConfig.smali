.class public Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_LIST_DEFAULT:[Ljava/lang/String;

.field public static final CONTENT_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final CONTENT_TYPE_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final KEEP_ALIVE_TIME_MAX:I = 0xe10

.field public static final KEEP_ALIVE_TIME_MIN:I = 0x3c

.field public static final PROGRESS_FREEZE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DownloadConfig"


# instance fields
.field public contentTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public downloadRetryStrategy:[Ljava/lang/Long;

.field public keepAliveDefaultTime:I

.field public keepAliveRetryStrategy:[Ljava/lang/Long;

.field public keepAliveWaitStrategy:[Ljava/lang/Long;

.field public progressCheckInterval:J

.field public progressFreezeCounts:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "application/octet-stream"

    .line 2
    .line 3
    const-string v1, "image/jpeg"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x708

    .line 2
    iput v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I

    const-wide/16 v0, 0x3e8

    .line 3
    iput-wide v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    const/16 v2, 0xa

    .line 4
    iput v2, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Long;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v3, v5

    iput-object v3, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveRetryStrategy:[Ljava/lang/Long;

    new-array v0, v2, [Ljava/lang/Long;

    const-wide/16 v6, 0x3a98

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveWaitStrategy:[Ljava/lang/Long;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/Long;

    const-wide/16 v2, 0x7d0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->downloadRetryStrategy:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x708

    .line 10
    iput v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I

    const-wide/16 v0, 0x3e8

    .line 11
    iput-wide v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    const/16 v2, 0xa

    .line 12
    iput v2, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Long;

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v3, v5

    iput-object v3, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveRetryStrategy:[Ljava/lang/Long;

    new-array v0, v2, [Ljava/lang/Long;

    const-wide/16 v6, 0x3a98

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveWaitStrategy:[Ljava/lang/Long;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/Long;

    const-wide/16 v2, 0x7d0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->downloadRetryStrategy:[Ljava/lang/Long;

    .line 17
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->parseConfig(Ljava/util/HashMap;)V

    return-void
.end method

.method private parseConfig(Ljava/util/HashMap;)V
    .locals 23
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/16 v0, 0x708

    .line 6
    .line 7
    iput v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I

    .line 8
    .line 9
    const-string v3, "keep_alive_default_time"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v4, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v6, "download-file:  config -> keep_alive_default_time = "

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/16 v4, 0x258

    .line 56
    .line 57
    if-lt v3, v4, :cond_0

    .line 58
    .line 59
    const/16 v4, 0xe10

    .line 60
    .line 61
    if-gt v3, v4, :cond_0

    .line 62
    .line 63
    iput v3, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    nop

    .line 70
    :cond_1
    :goto_0
    const-wide/16 v3, 0x3e8

    .line 71
    .line 72
    iput-wide v3, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    .line 73
    .line 74
    const-string v0, "progress_check_interval"

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 87
    .line 88
    sget-object v5, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v7, "download-file:  config -> progress_check_interval = "

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_3

    .line 115
    .line 116
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    cmp-long v0, v5, v3

    .line 121
    .line 122
    if-lez v0, :cond_2

    .line 123
    .line 124
    iput-wide v5, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    iput-wide v3, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_1
    nop

    .line 131
    :cond_3
    :goto_1
    const/16 v0, 0xa

    .line 132
    .line 133
    iput v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I

    .line 134
    .line 135
    const-string v5, "progress_freeze_counts"

    .line 136
    .line 137
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_5

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/String;

    .line 148
    .line 149
    sget-object v6, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v8, "download-file:  config -> progress_freeze_counts = "

    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_5

    .line 176
    .line 177
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-lez v5, :cond_4

    .line 182
    .line 183
    iput v5, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    iput v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_2
    nop

    .line 190
    :cond_5
    :goto_2
    const/4 v5, 0x3

    .line 191
    new-array v0, v5, [Ljava/lang/Long;

    .line 192
    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    const/4 v7, 0x0

    .line 198
    aput-object v6, v0, v7

    .line 199
    .line 200
    const-wide/16 v8, 0xbb8

    .line 201
    .line 202
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    const/4 v8, 0x1

    .line 207
    aput-object v6, v0, v8

    .line 208
    .line 209
    const-wide/16 v9, 0x1388

    .line 210
    .line 211
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    const/4 v9, 0x2

    .line 216
    aput-object v6, v0, v9

    .line 217
    .line 218
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveRetryStrategy:[Ljava/lang/Long;

    .line 219
    .line 220
    const-string v0, "keep_alive_retry_strategy"

    .line 221
    .line 222
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    const-string v10, "download-file:  "

    .line 227
    .line 228
    const-string v11, ","

    .line 229
    .line 230
    if-eqz v6, :cond_9

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ljava/lang/String;

    .line 237
    .line 238
    sget-object v6, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 239
    .line 240
    new-instance v12, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v13, "download-file:  config -> keep_alive_retry_strategy = "

    .line 246
    .line 247
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    invoke-static {v6, v12}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-nez v6, :cond_9

    .line 265
    .line 266
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    if-eqz v6, :cond_9

    .line 271
    .line 272
    array-length v0, v6

    .line 273
    if-lez v0, :cond_9

    .line 274
    .line 275
    new-instance v12, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    array-length v13, v6

    .line 281
    const/4 v0, 0x0

    .line 282
    const/4 v14, 0x0

    .line 283
    :goto_3
    if-ge v14, v13, :cond_8

    .line 284
    .line 285
    aget-object v15, v6, v14

    .line 286
    .line 287
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v16

    .line 291
    if-eqz v16, :cond_6

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_6
    add-int/lit8 v9, v0, 0x1

    .line 295
    .line 296
    const-wide/16 v17, 0x1

    .line 297
    .line 298
    const-wide/16 v19, 0x2

    .line 299
    .line 300
    :try_start_3
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 301
    .line 302
    .line 303
    move-result-wide v21

    .line 304
    cmp-long v0, v21, v3

    .line 305
    .line 306
    if-ltz v0, :cond_7

    .line 307
    .line 308
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_7
    int-to-long v7, v9

    .line 317
    mul-long v7, v7, v19

    .line 318
    .line 319
    sub-long v7, v7, v17

    .line 320
    .line 321
    mul-long v7, v7, v3

    .line 322
    .line 323
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :catch_3
    move-exception v0

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v8, "config -> keep_alive_retry_strategy parse error: "

    .line 338
    .line 339
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    sget-object v7, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 354
    .line 355
    new-instance v8, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    int-to-long v7, v9

    .line 374
    mul-long v7, v7, v19

    .line 375
    .line 376
    sub-long v7, v7, v17

    .line 377
    .line 378
    mul-long v7, v7, v3

    .line 379
    .line 380
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    :goto_4
    move v0, v9

    .line 388
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 389
    .line 390
    const/4 v7, 0x0

    .line 391
    const/4 v8, 0x1

    .line 392
    const/4 v9, 0x2

    .line 393
    goto :goto_3

    .line 394
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_9

    .line 399
    .line 400
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    new-array v0, v0, [Ljava/lang/Long;

    .line 405
    .line 406
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, [Ljava/lang/Long;

    .line 411
    .line 412
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveRetryStrategy:[Ljava/lang/Long;

    .line 413
    .line 414
    :cond_9
    new-array v0, v5, [Ljava/lang/Long;

    .line 415
    .line 416
    const-wide/16 v6, 0x3a98

    .line 417
    .line 418
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    const/4 v9, 0x0

    .line 423
    aput-object v8, v0, v9

    .line 424
    .line 425
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    const/4 v9, 0x1

    .line 430
    aput-object v8, v0, v9

    .line 431
    .line 432
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    const/4 v9, 0x2

    .line 437
    aput-object v8, v0, v9

    .line 438
    .line 439
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveWaitStrategy:[Ljava/lang/Long;

    .line 440
    .line 441
    const-string v0, "keep_alive_wait_strategy"

    .line 442
    .line 443
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-eqz v8, :cond_d

    .line 448
    .line 449
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Ljava/lang/String;

    .line 454
    .line 455
    sget-object v8, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 456
    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v12, "download-file:  config -> keep_alive_wait_strategy = "

    .line 463
    .line 464
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    invoke-static {v8, v9}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 478
    .line 479
    .line 480
    move-result v8

    .line 481
    if-nez v8, :cond_d

    .line 482
    .line 483
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    if-eqz v8, :cond_d

    .line 488
    .line 489
    array-length v0, v8

    .line 490
    if-lez v0, :cond_d

    .line 491
    .line 492
    new-instance v9, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .line 496
    .line 497
    array-length v12, v8

    .line 498
    const/4 v13, 0x0

    .line 499
    :goto_6
    if-ge v13, v12, :cond_c

    .line 500
    .line 501
    aget-object v0, v8, v13

    .line 502
    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 504
    .line 505
    .line 506
    move-result v14

    .line 507
    if-eqz v14, :cond_a

    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_a
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 511
    .line 512
    .line 513
    move-result-wide v17

    .line 514
    cmp-long v0, v17, v3

    .line 515
    .line 516
    if-ltz v0, :cond_b

    .line 517
    .line 518
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 531
    .line 532
    .line 533
    goto :goto_7

    .line 534
    :catch_4
    move-exception v0

    .line 535
    new-instance v14, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v15, "config -> keep_alive_wait_strategy parse error: "

    .line 541
    .line 542
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    sget-object v14, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 557
    .line 558
    new-instance v15, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 584
    .line 585
    goto :goto_6

    .line 586
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-nez v0, :cond_d

    .line 591
    .line 592
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    new-array v0, v0, [Ljava/lang/Long;

    .line 597
    .line 598
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    check-cast v0, [Ljava/lang/Long;

    .line 603
    .line 604
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveWaitStrategy:[Ljava/lang/Long;

    .line 605
    .line 606
    :cond_d
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 607
    .line 608
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 609
    .line 610
    .line 611
    const-string v0, "content_type_list"

    .line 612
    .line 613
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    if-eqz v6, :cond_10

    .line 618
    .line 619
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    check-cast v0, Ljava/lang/String;

    .line 624
    .line 625
    sget-object v6, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 626
    .line 627
    new-instance v7, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    const-string v8, "download-file:  config -> content_type_list = "

    .line 633
    .line 634
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    if-nez v6, :cond_10

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    const-string v7, "all"

    .line 658
    .line 659
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result v6

    .line 663
    if-eqz v6, :cond_e

    .line 664
    .line 665
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 666
    .line 667
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto :goto_a

    .line 671
    :cond_e
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    array-length v6, v0

    .line 676
    if-lez v6, :cond_10

    .line 677
    .line 678
    array-length v6, v0

    .line 679
    const/4 v9, 0x0

    .line 680
    :goto_8
    if-ge v9, v6, :cond_10

    .line 681
    .line 682
    aget-object v7, v0, v9

    .line 683
    .line 684
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-eqz v8, :cond_f

    .line 689
    .line 690
    goto :goto_9

    .line 691
    :cond_f
    iget-object v8, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 692
    .line 693
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 697
    .line 698
    goto :goto_8

    .line 699
    :cond_10
    :goto_a
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 700
    .line 701
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_11

    .line 706
    .line 707
    new-instance v0, Ljava/util/ArrayList;

    .line 708
    .line 709
    sget-object v6, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    .line 710
    .line 711
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 712
    .line 713
    .line 714
    move-result-object v6

    .line 715
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 716
    .line 717
    .line 718
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 719
    .line 720
    :cond_11
    new-array v0, v5, [Ljava/lang/Long;

    .line 721
    .line 722
    const-wide/16 v5, 0x7d0

    .line 723
    .line 724
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 725
    .line 726
    .line 727
    move-result-object v7

    .line 728
    const/4 v8, 0x0

    .line 729
    aput-object v7, v0, v8

    .line 730
    .line 731
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    const/4 v9, 0x1

    .line 736
    aput-object v7, v0, v9

    .line 737
    .line 738
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    const/4 v9, 0x2

    .line 743
    aput-object v7, v0, v9

    .line 744
    .line 745
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->downloadRetryStrategy:[Ljava/lang/Long;

    .line 746
    .line 747
    const-string v0, "download_retry_strategy"

    .line 748
    .line 749
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v7

    .line 753
    if-eqz v7, :cond_15

    .line 754
    .line 755
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Ljava/lang/String;

    .line 760
    .line 761
    sget-object v2, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 762
    .line 763
    new-instance v7, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .line 767
    .line 768
    const-string v9, "download-file:  config -> download_retry_strategy = "

    .line 769
    .line 770
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    invoke-static {v2, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 784
    .line 785
    .line 786
    move-result v2

    .line 787
    if-nez v2, :cond_15

    .line 788
    .line 789
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    if-eqz v2, :cond_15

    .line 794
    .line 795
    array-length v0, v2

    .line 796
    if-lez v0, :cond_15

    .line 797
    .line 798
    new-instance v7, Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .line 802
    .line 803
    array-length v9, v2

    .line 804
    :goto_b
    if-ge v8, v9, :cond_14

    .line 805
    .line 806
    aget-object v0, v2, v8

    .line 807
    .line 808
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 809
    .line 810
    .line 811
    move-result v11

    .line 812
    if-eqz v11, :cond_12

    .line 813
    .line 814
    goto :goto_c

    .line 815
    :cond_12
    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 816
    .line 817
    .line 818
    move-result-wide v11

    .line 819
    cmp-long v0, v11, v3

    .line 820
    .line 821
    if-ltz v0, :cond_13

    .line 822
    .line 823
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    goto :goto_c

    .line 831
    :cond_13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 836
    .line 837
    .line 838
    goto :goto_c

    .line 839
    :catch_5
    move-exception v0

    .line 840
    new-instance v11, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    const-string v12, "config -> download_retry_strategy parse error: "

    .line 846
    .line 847
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    sget-object v11, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->TAG:Ljava/lang/String;

    .line 862
    .line 863
    new-instance v12, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-static {v11, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 889
    .line 890
    goto :goto_b

    .line 891
    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-nez v0, :cond_15

    .line 896
    .line 897
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    new-array v0, v0, [Ljava/lang/Long;

    .line 902
    .line 903
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    check-cast v0, [Ljava/lang/Long;

    .line 908
    .line 909
    iput-object v0, v1, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->downloadRetryStrategy:[Ljava/lang/Long;

    .line 910
    .line 911
    :cond_15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DownloadConfig{keepAliveDefaultTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveDefaultTime:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", progressCheckInterval="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressCheckInterval:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", progressFreezeCounts="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->progressFreezeCounts:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", keepAliveRetryStrategy="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveRetryStrategy:[Ljava/lang/Long;

    .line 42
    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", keepAliveWaitStrategy="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->keepAliveWaitStrategy:[Ljava/lang/Long;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", contentTypeList="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;->contentTypeList:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x7d

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
