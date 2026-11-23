.class Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/JankStatisticsTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfCatCounter"
.end annotation


# static fields
.field private static final DEFAULT_DATA_PATH:Ljava/lang/String; = "/data/local/tmp/out.csv"

.field private static final DEFAULT_LOG_PATH:Ljava/lang/String; = "/data/local/tmp/output.log"


# instance fields
.field private mCSVFirstTimestampMs:J

.field private mFileSize:J

.field private mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

.field private mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

.field private mSF:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/utils/PerfdogJankReport;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mFileSize:J

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mCSVFirstTimestampMs:J

    .line 11
    .line 12
    const-string v2, "pcat_jank"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v2, v3}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 19
    .line 20
    const-string v4, "pcat_bjank"

    .line 21
    .line 22
    invoke-virtual {v2, v4, v3}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 26
    .line 27
    const-string v4, "pcat_JT"

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-virtual {v2, v4, v5}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 34
    .line 35
    const-string v4, "pcat_fps"

    .line 36
    .line 37
    invoke-virtual {v2, v4, v3}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 41
    .line 42
    const-string v4, "pcat_1sJT"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 48
    .line 49
    const-string v4, "pcat_1sJTms"

    .line 50
    .line 51
    invoke-virtual {v2, v4, v3}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    new-instance v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 55
    .line 56
    invoke-direct {v2}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 60
    .line 61
    new-instance v2, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    invoke-direct {v2, v4}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v5}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$602(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Z)Z

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v0, v1}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$002(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;J)J

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->access$102(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Z)Z

    .line 75
    .line 76
    .line 77
    new-instance v0, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 78
    .line 79
    const-string v1, "SF"

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v0, p1, v1, v2, v3}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;-><init>(Lorg/hmwebrtc/utils/PerfdogJankReport;Ljava/lang/String;Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Lorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mSF:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 86
    .line 87
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 88
    .line 89
    const-string v0, "/data/local/tmp/out.csv"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    iput-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    :catch_0
    :cond_0
    return-void
.end method

.method private isOpend()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    const-string v2, "/data/local/tmp/out.csv"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-wide v3, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    cmp-long v5, v1, v3

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :catch_0
    :cond_0
    return v0
.end method

.method private mergeData(J)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string v3, "yyyy-MM-dd"

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 26
    .line 27
    const-string v5, "/data/local/tmp/out.csv"

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Ljava/io/InputStreamReader;

    .line 33
    .line 34
    const-string v6, "UTF-8"

    .line 35
    .line 36
    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/io/BufferedReader;

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    move-wide v7, v2

    .line 46
    move-wide v9, v7

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    if-eqz v11, :cond_4

    .line 53
    .line 54
    add-int/lit8 v12, v6, 0x1

    .line 55
    .line 56
    if-nez v6, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const-string v6, ","

    .line 60
    .line 61
    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    array-length v11, v6

    .line 66
    const/16 v13, 0x8

    .line 67
    .line 68
    if-ge v11, v13, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    aget-object v11, v6, v5

    .line 72
    .line 73
    new-instance v14, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v15, " "

    .line 82
    .line 83
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-static {v11}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v11}, Ljava/sql/Timestamp;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v14

    .line 101
    move-object/from16 v16, v6

    .line 102
    .line 103
    iget-wide v5, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mCSVFirstTimestampMs:J

    .line 104
    .line 105
    cmp-long v17, v5, v2

    .line 106
    .line 107
    if-nez v17, :cond_2

    .line 108
    .line 109
    iput-wide v14, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mCSVFirstTimestampMs:J

    .line 110
    .line 111
    :cond_2
    cmp-long v5, v14, p1

    .line 112
    .line 113
    if-gez v5, :cond_3

    .line 114
    .line 115
    :goto_1
    move v6, v12

    .line 116
    :goto_2
    const/4 v5, 0x0

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const/4 v5, 0x5

    .line 119
    aget-object v5, v16, v5

    .line 120
    .line 121
    const/4 v6, 0x6

    .line 122
    aget-object v6, v16, v6

    .line 123
    .line 124
    const/16 v17, 0x7

    .line 125
    .line 126
    aget-object v17, v16, v17

    .line 127
    .line 128
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    aget-object v13, v16, v13

    .line 133
    .line 134
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    const/high16 v17, 0x42c80000    # 100.0f

    .line 139
    .line 140
    div-float v13, v13, v17

    .line 141
    .line 142
    const-wide/16 v18, 0x3e8

    .line 143
    .line 144
    add-long v7, v7, v18

    .line 145
    .line 146
    add-long/2addr v9, v2

    .line 147
    iget-object v11, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 148
    .line 149
    move-object/from16 v18, v0

    .line 150
    .line 151
    const-string v0, "pcat_jank"

    .line 152
    .line 153
    move-object/from16 v19, v4

    .line 154
    .line 155
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    long-to-float v4, v4

    .line 160
    invoke-virtual {v11, v0, v14, v15, v4}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 161
    .line 162
    .line 163
    iget-object v0, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 164
    .line 165
    const-string v4, "pcat_bjank"

    .line 166
    .line 167
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    long-to-float v5, v5

    .line 172
    invoke-virtual {v0, v4, v14, v15, v5}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 173
    .line 174
    .line 175
    iget-object v0, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 176
    .line 177
    const-string v4, "pcat_1sJT"

    .line 178
    .line 179
    invoke-virtual {v0, v4, v14, v15, v13}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 180
    .line 181
    .line 182
    iget-object v0, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 183
    .line 184
    const-string v4, "pcat_fps"

    .line 185
    .line 186
    const/4 v5, 0x4

    .line 187
    aget-object v5, v16, v5

    .line 188
    .line 189
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v5

    .line 193
    long-to-float v5, v5

    .line 194
    invoke-virtual {v0, v4, v14, v15, v5}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 195
    .line 196
    .line 197
    iget-object v0, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 198
    .line 199
    const-string v4, "pcat_JT"

    .line 200
    .line 201
    long-to-float v5, v9

    .line 202
    long-to-float v6, v7

    .line 203
    div-float/2addr v5, v6

    .line 204
    invoke-virtual {v0, v4, v14, v15, v5}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 205
    .line 206
    .line 207
    iget-object v0, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 208
    .line 209
    const-string v4, "pcat_1sJTms"

    .line 210
    .line 211
    long-to-float v2, v2

    .line 212
    invoke-virtual {v0, v4, v14, v15, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 213
    .line 214
    .line 215
    move v6, v12

    .line 216
    move-object/from16 v0, v18

    .line 217
    .line 218
    move-object/from16 v4, v19

    .line 219
    .line 220
    const-wide/16 v2, 0x0

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_4
    move-object/from16 v19, v4

    .line 224
    .line 225
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :catch_0
    move-exception v0

    .line 230
    move-wide v2, v7

    .line 231
    goto :goto_3

    .line 232
    :catch_1
    move-exception v0

    .line 233
    const-wide/16 v2, 0x0

    .line 234
    .line 235
    const-wide/16 v9, 0x0

    .line 236
    .line 237
    :goto_3
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->access$700()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v5, " perfcat merge data failed: "

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-wide v7, v2

    .line 258
    :goto_4
    iget-object v0, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 259
    .line 260
    iput-wide v9, v0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    .line 261
    .line 262
    iput-wide v7, v0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->duration:J

    .line 263
    .line 264
    return-void
.end method

.method private parseLog(J)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    const-string v3, "/data/local/tmp/output.log"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/io/InputStreamReader;

    .line 13
    .line 14
    const-string v4, "UTF-8"

    .line 15
    .line 16
    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/io/BufferedReader;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v6, ""

    .line 28
    .line 29
    move-wide v8, v3

    .line 30
    move-wide v10, v8

    .line 31
    const/4 v7, 0x0

    .line 32
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    if-eqz v12, :cond_6

    .line 37
    .line 38
    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    array-length v13, v12

    .line 43
    const/16 v14, 0x8

    .line 44
    .line 45
    if-eq v13, v14, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    aget-object v13, v12, v5

    .line 49
    .line 50
    const-string v14, "/"

    .line 51
    .line 52
    const-string v15, "-"

    .line 53
    .line 54
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    const/4 v14, 0x1

    .line 59
    aget-object v15, v12, v14

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Ljava/sql/Timestamp;->getTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v16

    .line 87
    if-nez v7, :cond_1

    .line 88
    .line 89
    iget-wide v7, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mCSVFirstTimestampMs:J

    .line 90
    .line 91
    sub-long v8, v7, v16

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    :cond_1
    add-long v13, v16, v8

    .line 95
    .line 96
    cmp-long v5, v13, p1

    .line 97
    .line 98
    if-gez v5, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/4 v5, 0x6

    .line 102
    aget-object v5, v12, v5

    .line 103
    .line 104
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v16

    .line 108
    cmp-long v5, v10, v3

    .line 109
    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    cmp-long v5, v16, v10

    .line 114
    .line 115
    if-gtz v5, :cond_4

    .line 116
    .line 117
    :goto_1
    move-object v6, v15

    .line 118
    :goto_2
    const/4 v5, 0x0

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    const-wide/32 v10, 0xf4240

    .line 121
    .line 122
    .line 123
    div-long v10, v16, v10

    .line 124
    .line 125
    iget-object v5, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mSF:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 126
    .line 127
    invoke-static {v5}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->access$500(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v10, v11}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->onRenderFrameTimestamp(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_5

    .line 139
    .line 140
    iget-object v5, v1, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mSF:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 141
    .line 142
    invoke-virtual {v5, v13, v14, v3, v4}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->update(JJ)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_3
    move-object v6, v15

    .line 146
    move-wide/from16 v10, v16

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->access$700()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v3, " perfcat parse log failed: "

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :goto_4
    return-void
.end method


# virtual methods
.method public dump(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->isOpend()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mergeData(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->access$700()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "mergeData failed! "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->access$700()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->parseLog(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception p1

    .line 41
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->access$700()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "parseLog failed! "

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {p0}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->writeSummary()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->access$700()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public writeSummary()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->isOpend()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mSF:Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;

    .line 9
    .line 10
    invoke-static {v0}, Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;->access$400(Lorg/webrtc/haima/JankStatisticsTool$PerfdogJankCounterHelper;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 14
    .line 15
    const-string v1, "-----------------"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "pcat \u4e91\u73a9\u65f6\u957f:"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 33
    .line 34
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->duration:J

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "pcat\u5361\u987f\u65f6\u957f:"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lorg/webrtc/haima/JankStatisticsTool$PerfCatCounter;->mJankInfo:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 59
    .line 60
    iget-wide v2, v2, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
