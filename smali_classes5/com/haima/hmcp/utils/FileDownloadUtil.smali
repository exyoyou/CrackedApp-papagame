.class public Lcom/haima/hmcp/utils/FileDownloadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;
    }
.end annotation


# static fields
.field public static final SPEED_COEFFICIENT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FileDownloadUtil"


# instance fields
.field public isAllowDownloadFlag:Z

.field private mOnSpeedTestCompletionListener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

.field public retry:I

.field private speedInfo:Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

.field private stopSpeedTest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest:Z

    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lcom/haima/hmcp/utils/FileUtil;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sput-object p1, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/SpeedGather$URLInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->speedInfo:Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->mOnSpeedTestCompletionListener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/utils/FileDownloadUtil;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/utils/FileDownloadUtil;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public advertDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const-string v2, "advert_name"

    .line 8
    .line 9
    const-string v3, "FileDownloadUtil"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "advert_url_isEmpty"

    .line 14
    .line 15
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "advertDownloadFile PERMISSION_GRANTED !"

    .line 35
    .line 36
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-object v0, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v0, "S_DEFAULT_STORAGE_PATH is null !"

    .line 49
    .line 50
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    sget-object v5, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    new-instance v7, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    const-string v0, "advert_file_exists"

    .line 97
    .line 98
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    const-string v3, "12024"

    .line 103
    .line 104
    invoke-static {v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v8, Ljava/io/File;

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v9, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    new-instance v9, Lcom/haima/hmcp/utils/FileDownloadUtil$1;

    .line 143
    .line 144
    move-object v0, v9

    .line 145
    move-object v1, p0

    .line 146
    move-object v2, p1

    .line 147
    move-object v3, v7

    .line 148
    move-object v4, p2

    .line 149
    move-object v6, p3

    .line 150
    move-object v7, v8

    .line 151
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/utils/FileDownloadUtil$1;-><init>(Lcom/haima/hmcp/utils/FileDownloadUtil;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public declared-synchronized downFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    move-object v1, p5

    .line 8
    const/4 v2, 0x0

    .line 9
    :cond_0
    :goto_0
    if-nez v2, :cond_11

    .line 10
    .line 11
    iget v3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    if-ge v3, v4, :cond_11

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    .line 18
    if-eqz v3, :cond_11

    .line 19
    .line 20
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 21
    .line 22
    sget-object v5, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 34
    .line 35
    .line 36
    :cond_1
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 39
    .line 40
    .line 41
    :cond_2
    new-instance v3, Ljava/net/URL;

    .line 42
    .line 43
    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/16 v5, 0x1388

    .line 51
    .line 52
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    const/16 v3, 0x400

    .line 60
    .line 61
    new-array v3, v3, [B

    .line 62
    .line 63
    new-instance v5, Ljava/io/FileOutputStream;

    .line 64
    .line 65
    invoke-direct {v5, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    .line 68
    :goto_1
    :try_start_2
    invoke-virtual {p5, v3}, Ljava/io/InputStream;->read([B)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v6, -0x1

    .line 73
    if-eq v1, v6, :cond_3

    .line 74
    .line 75
    iget-boolean v6, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {v5, v3, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-boolean v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    const-string v1, "FileDownloadUtil"

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, ":download_finshed = "

    .line 98
    .line 99
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    if-eqz p2, :cond_5

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 119
    .line 120
    .line 121
    :cond_5
    const-string v1, "FileDownloadUtil"

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, ":stop_download"

    .line 132
    .line 133
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :goto_2
    :try_start_3
    const-string v1, "FileDownloadUtil"

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v6, "DownloadFile finally "

    .line 154
    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v6, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 159
    .line 160
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 168
    .line 169
    .line 170
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    move-exception v1

    .line 178
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, "DownloadFile2::"

    .line 190
    .line 191
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :goto_3
    iget-boolean v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 209
    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    iget v1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 213
    .line 214
    if-lt v1, v4, :cond_7

    .line 215
    .line 216
    :cond_6
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 217
    .line 218
    :cond_7
    move-object v1, v5

    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :catchall_0
    move-exception p1

    .line 222
    move-object v1, v5

    .line 223
    goto/16 :goto_8

    .line 224
    .line 225
    :catch_1
    move-exception v3

    .line 226
    move-object v1, v5

    .line 227
    goto :goto_4

    .line 228
    :catchall_1
    move-exception p1

    .line 229
    goto/16 :goto_8

    .line 230
    .line 231
    :catch_2
    move-exception v3

    .line 232
    :goto_4
    :try_start_6
    const-string v5, "FileDownloadUtil"

    .line 233
    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v7, "DownloadFile Exception "

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget v7, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 248
    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    if-eqz p2, :cond_8

    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 265
    .line 266
    .line 267
    :cond_8
    iget v5, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 268
    .line 269
    if-ge v5, v4, :cond_9

    .line 270
    .line 271
    iget-boolean v6, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 272
    .line 273
    if-eqz v6, :cond_9

    .line 274
    .line 275
    add-int/lit8 v5, v5, 0x1

    .line 276
    .line 277
    iput v5, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 278
    .line 279
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v6, "DownloadFile1::"

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 304
    .line 305
    .line 306
    :try_start_7
    const-string v3, "FileDownloadUtil"

    .line 307
    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v6, "DownloadFile finally "

    .line 317
    .line 318
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget v6, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 322
    .line 323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-static {v3, v5}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 331
    .line 332
    .line 333
    if-eqz v1, :cond_a

    .line 334
    .line 335
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :catch_3
    move-exception v3

    .line 340
    goto :goto_6

    .line 341
    :cond_a
    :goto_5
    if-eqz p5, :cond_b

    .line 342
    .line 343
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 344
    .line 345
    .line 346
    goto :goto_7

    .line 347
    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    .line 349
    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v6, "DownloadFile2::"

    .line 359
    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-static {v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_b
    :goto_7
    iget-boolean v3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 378
    .line 379
    if-eqz v3, :cond_c

    .line 380
    .line 381
    iget v3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 382
    .line 383
    if-lt v3, v4, :cond_0

    .line 384
    .line 385
    :cond_c
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :goto_8
    const-string p2, "FileDownloadUtil"

    .line 390
    .line 391
    new-instance p4, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v2, "DownloadFile finally "

    .line 400
    .line 401
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget v2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 405
    .line 406
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p4

    .line 413
    invoke-static {p2, p4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 414
    .line 415
    .line 416
    if-eqz v1, :cond_d

    .line 417
    .line 418
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 419
    .line 420
    .line 421
    goto :goto_9

    .line 422
    :catch_4
    move-exception p2

    .line 423
    goto :goto_a

    .line 424
    :cond_d
    :goto_9
    if-eqz p5, :cond_e

    .line 425
    .line 426
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 427
    .line 428
    .line 429
    goto :goto_b

    .line 430
    :goto_a
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    .line 432
    .line 433
    new-instance p4, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string p3, "DownloadFile2::"

    .line 442
    .line 443
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p2

    .line 457
    invoke-static {p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :cond_e
    :goto_b
    iget-boolean p2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 461
    .line 462
    if-eqz p2, :cond_f

    .line 463
    .line 464
    iget p2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->retry:I

    .line 465
    .line 466
    if-lt p2, v4, :cond_10

    .line 467
    .line 468
    :cond_f
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->isAllowDownloadFlag:Z

    .line 469
    .line 470
    :cond_10
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 471
    :cond_11
    monitor-exit p0

    .line 472
    return v2

    .line 473
    :catchall_2
    move-exception p1

    .line 474
    monitor-exit p0

    .line 475
    throw p1
.end method

.method public downloadImage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "downloadImage url ="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "FileDownloadUtil"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string p1, "downloadImage PERMISSION_GRANTED !"

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string p1, "S_DEFAULT_STORAGE_PATH is null !"

    .line 47
    .line 48
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    invoke-static {p2}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lcom/haima/hmcp/utils/FileUtil;->S_DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    new-instance v6, Ljava/io/File;

    .line 74
    .line 75
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v3, ""

    .line 83
    .line 84
    invoke-virtual {v0, p2, v3}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v4, "oldFileName = "

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    const-string p1, "Image_file_exists"

    .line 121
    .line 122
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x1

    .line 126
    return p1

    .line 127
    :cond_2
    new-instance v0, Lcom/haima/hmcp/utils/FileDownloadUtil$2;

    .line 128
    .line 129
    move-object v3, v0

    .line 130
    move-object v4, p0

    .line 131
    move-object v5, p1

    .line 132
    move-object v7, p2

    .line 133
    invoke-direct/range {v3 .. v9}, Lcom/haima/hmcp/utils/FileDownloadUtil$2;-><init>(Lcom/haima/hmcp/utils/FileDownloadUtil;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    .line 138
    .line 139
    return v2
.end method

.method public setURLInfo(Lcom/haima/hmcp/utils/SpeedGather$URLInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->speedInfo:Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "url: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->url:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p1, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->playTime:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "standardDeviationCoefficient = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p1, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->standardDeviationCoefficient:F

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ",    skipNumber: "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p1, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->skipNumber:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", peakRateCoefficient "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget p1, p1, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->peakRateCoefficient:F

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "FileDownloadUtil"

    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public speedTest(Landroid/content/Context;Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)V
    .locals 2

    .line 1
    const-string p1, "FileDownloadUtil"

    .line 2
    .line 3
    const-string v0, "speed test->prepare to speed test"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "status"

    .line 14
    .line 15
    const-string v1, "prepare"

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "13704"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest:Z

    .line 35
    .line 36
    iput-object p2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->mOnSpeedTestCompletionListener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 37
    .line 38
    new-instance v0, Lcom/haima/hmcp/utils/FileDownloadUtil$3;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/utils/FileDownloadUtil$3;-><init>(Lcom/haima/hmcp/utils/FileDownloadUtil;Ljava/util/Map;Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public stopSpeedTest()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/utils/FileDownloadUtil;->mOnSpeedTestCompletionListener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 6
    .line 7
    const-string v0, "FileDownloadUtil"

    .line 8
    .line 9
    const-string v1, "stop speed test by interface called"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
