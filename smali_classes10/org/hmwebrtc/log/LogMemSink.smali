.class public Lorg/hmwebrtc/log/LogMemSink;
.super Lorg/hmwebrtc/log/LogApi$LogSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/log/LogMemSink$LogHandler;
    }
.end annotation


# static fields
.field public static final MAXSIZE_ZIP:I = 0x100000

.field public static final MINSIZE_ZIP:I = 0x1000

.field public static final MSG_ID_COMPRESS:I = 0x3e8

.field public static final MSG_ID_UPLOAD:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "LogMemSink"

.field private static mCurrentMemSize:I

.field private static mUploadLogCB:Lorg/hmwebrtc/log/LogUploadCallBack;


# instance fields
.field private final LOGDCNAME:Ljava/lang/String;

.field private mCacheLogStr:Ljava/lang/String;

.field private mInMemZipData:[B

.field private mLogBaseTimeMs:J

.field private mLogBaseTimeMsString:Ljava/lang/String;

.field private mLogHandler:Lorg/hmwebrtc/log/LogMemSink$LogHandler;

.field private mLogZipIndex:J

.field private mMaxMemSize:I


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogApi$LogSink;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "log_upload_dc"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->LOGDCNAME:Ljava/lang/String;

    .line 7
    .line 8
    long-to-int v0, p1

    .line 9
    iput v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mMaxMemSize:I

    .line 10
    .line 11
    const-wide/16 v0, 0x1000

    .line 12
    .line 13
    cmp-long v2, p1, v0

    .line 14
    .line 15
    if-ltz v2, :cond_0

    .line 16
    .line 17
    const-wide/32 v0, 0x100000

    .line 18
    .line 19
    .line 20
    cmp-long v2, p1, v0

    .line 21
    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    :cond_0
    const/high16 p1, 0x100000

    .line 25
    .line 26
    iput p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mMaxMemSize:I

    .line 27
    .line 28
    :cond_1
    iget p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mMaxMemSize:I

    .line 29
    .line 30
    new-array p1, p1, [B

    .line 31
    .line 32
    iput-object p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mInMemZipData:[B

    .line 33
    .line 34
    new-instance p1, Landroid/os/HandlerThread;

    .line 35
    .line 36
    const-string p2, "LogMemSink"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lorg/hmwebrtc/log/LogMemSink$LogHandler;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p0, p1}, Lorg/hmwebrtc/log/LogMemSink$LogHandler;-><init>(Lorg/hmwebrtc/log/LogMemSink;Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogHandler:Lorg/hmwebrtc/log/LogMemSink$LogHandler;

    .line 54
    .line 55
    const-string p1, ""

    .line 56
    .line 57
    iput-object p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 58
    .line 59
    const-wide/16 p1, 0x0

    .line 60
    .line 61
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMs:J

    .line 62
    .line 63
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogZipIndex:J

    .line 64
    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/log/LogMemSink;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/log/LogMemSink;->mInMemZipData:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/log/LogMemSink;[BI[B)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/hmwebrtc/log/LogMemSink;->compressLog([BI[B)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/log/LogMemSink;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/log/LogMemSink;->sendMessageForUpload([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300([B)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/log/LogMemSink;->uploadData([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private compressLog([BI[B)I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/hmwebrtc/log/JNILogCompress;->LibzipCompress([BI[B)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "compress log successfully, src size:"

    .line 18
    .line 19
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, ", zip size:"

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, ", cost time:"

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    sub-long/2addr v2, v0

    .line 43
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, "ms"

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p3, "compress exception, msg:"

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    return p1
.end method

.method private getFormatTime(J)Ljava/lang/String;
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMs:J

    .line 2
    .line 3
    sub-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    const-wide/32 v6, 0xea60

    .line 8
    .line 9
    .line 10
    cmp-long v8, v0, v4

    .line 11
    .line 12
    if-eqz v8, :cond_4

    .line 13
    .line 14
    cmp-long v0, v2, v6

    .line 15
    .line 16
    if-gez v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x5

    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ":"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-wide/16 v0, 0x3e8

    .line 49
    .line 50
    div-long v4, v2, v0

    .line 51
    .line 52
    const-string v6, "0"

    .line 53
    .line 54
    const-wide/16 v7, 0xa

    .line 55
    .line 56
    cmp-long v9, v4, v7

    .line 57
    .line 58
    if-ltz v9, :cond_1

    .line 59
    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :goto_0
    rem-long/2addr v2, v0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-wide/16 v0, 0x64

    .line 111
    .line 112
    cmp-long p2, v2, v0

    .line 113
    .line 114
    if-ltz p2, :cond_2

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    cmp-long p2, v2, v7

    .line 133
    .line 134
    if-ltz p2, :cond_3

    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    goto :goto_1

    .line 155
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, "00"

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_1
    return-object p1

    .line 176
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/Date;

    .line 177
    .line 178
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 182
    .line 183
    const-string v2, "MM-dd HH:mm:ss:SSS"

    .line 184
    .line 185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    add-int/lit8 v1, v1, -0x7

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 208
    .line 209
    div-long/2addr p1, v6

    .line 210
    mul-long p1, p1, v6

    .line 211
    .line 212
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogBaseTimeMs:J

    .line 213
    .line 214
    return-object v0
.end method

.method private sendMessageForCompress([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogHandler:Lorg/hmwebrtc/log/LogMemSink$LogHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogHandler:Lorg/hmwebrtc/log/LogMemSink$LogHandler;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private sendMessageForUpload([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogHandler:Lorg/hmwebrtc/log/LogMemSink$LogHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x3e9

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogHandler:Lorg/hmwebrtc/log/LogMemSink$LogHandler;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static uploadData([B)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lorg/hmwebrtc/log/LogMemSink;->mUploadLogCB:Lorg/hmwebrtc/log/LogUploadCallBack;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_0
    invoke-interface {v0, p0}, Lorg/hmwebrtc/log/LogUploadCallBack;->upload([B)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "upload log archvice result:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const-string p0, "success"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string p0, "false"

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "upload log exception, msg:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLog(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/log/LogApi$LogMessage;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogZipIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogZipIndex:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Archive Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/hmwebrtc/log/LogMemSink;->mLogZipIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mCacheLogStr:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hmwebrtc/log/LogApi$LogMessage;

    .line 5
    iget v1, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->level:I

    invoke-static {v1}, Lorg/hmwebrtc/log/LogApi;->getLevelString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->time:J

    invoke-direct {p0, v3, v4}, Lorg/hmwebrtc/log/LogMemSink;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->pid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->tid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/hmwebrtc/log/LogApi$LogMessage;->msg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/hmwebrtc/log/LogMemSink;->mCacheLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mCacheLogStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/log/LogMemSink;->mCacheLogStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lorg/hmwebrtc/log/LogMemSink;->mCacheLogStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/log/LogMemSink;->sendMessageForCompress([BI)V

    return-void
.end method

.method public setUploadLogCB(Lorg/hmwebrtc/log/LogUploadCallBack;)V
    .locals 0

    .line 1
    sput-object p1, Lorg/hmwebrtc/log/LogMemSink;->mUploadLogCB:Lorg/hmwebrtc/log/LogUploadCallBack;

    .line 2
    .line 3
    return-void
.end method
