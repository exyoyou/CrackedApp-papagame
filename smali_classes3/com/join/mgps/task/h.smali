.class public Lcom/join/mgps/task/h;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/h$a;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public d:Z

.field e:Lcom/join/mgps/task/h$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/h;->d:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/join/mgps/task/h;->e:Lcom/join/mgps/task/h$a;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p2, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ExtBean;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->getDown_from()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/roms/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/task/h;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "context",
            "pathRom"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/task/h;->d:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/task/h;->e:Lcom/join/mgps/task/h$a;

    .line 15
    iput-object p1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    iput-object p2, p0, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 17
    iput-object p3, p0, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/task/h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/h;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/task/h;->e:Lcom/join/mgps/task/h$a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/task/h$a;->a(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method d()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, ".zip"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, ".zip/"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    :cond_1
    return v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return v0
.end method

.method public interrupt()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/task/h;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "]::"

    .line 4
    .line 5
    const-string v3, ",model="

    .line 6
    .line 7
    const-string v4, ",brand="

    .line 8
    .line 9
    const-string v5, ",size="

    .line 10
    .line 11
    const-string v6, "zip error[gameId="

    .line 12
    .line 13
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 14
    .line 15
    .line 16
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v9, 0x1

    .line 23
    if-eqz v7, :cond_0

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v7, 0x0

    .line 38
    :goto_0
    :try_start_0
    new-instance v11, Ljava/io/File;

    .line 39
    .line 40
    iget-object v12, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    const-string v13, ""

    .line 54
    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    if-eqz v12, :cond_c

    .line 58
    .line 59
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v14, "zip len="

    .line 65
    .line 66
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 70
    .line 71
    .line 72
    move-result-wide v14

    .line 73
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14

    .line 80
    iget-object v12, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-eq v12, v9, :cond_2

    .line 87
    .line 88
    iget-object v12, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v12}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    iget-object v8, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iget-object v10, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v10}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v10}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v12, v8, v10, v7}, Lcom/papa/sim/statistic/t;->l1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v8, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 114
    .line 115
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 116
    .line 117
    .line 118
    move-result-wide v17

    .line 119
    const-wide/32 v19, 0x6400000

    .line 120
    .line 121
    .line 122
    const-wide v21, 0x80000000L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    cmp-long v8, v17, v19

    .line 128
    .line 129
    if-ltz v8, :cond_4

    .line 130
    .line 131
    iget-object v8, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 134
    .line 135
    .line 136
    move-result-wide v17

    .line 137
    cmp-long v8, v17, v21

    .line 138
    .line 139
    if-lez v8, :cond_3

    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-static {v11, v8, v10}, Lcom/join/mgps/Util/x;->d(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 161
    .line 162
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-static {v11, v8, v10}, Lcom/join/mgps/Util/s3;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v12, "get rom path"

    .line 176
    .line 177
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    new-instance v10, Lcom/join/mgps/task/h$a;

    .line 184
    .line 185
    new-instance v12, Ljava/io/File;

    .line 186
    .line 187
    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-direct {v10, v1, v8}, Lcom/join/mgps/task/h$a;-><init>(Lcom/join/mgps/task/h;Ljava/io/File;)V

    .line 195
    .line 196
    .line 197
    iput-object v10, v1, Lcom/join/mgps/task/h;->e:Lcom/join/mgps/task/h$a;

    .line 198
    .line 199
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    iput-boolean v9, v1, Lcom/join/mgps/task/h;->d:Z

    .line 204
    .line 205
    :goto_2
    iget-object v8, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_7

    .line 212
    .line 213
    new-instance v8, Ljava/io/File;

    .line 214
    .line 215
    iget-object v10, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 216
    .line 217
    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-nez v10, :cond_5

    .line 225
    .line 226
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 227
    .line 228
    .line 229
    :cond_5
    iget-object v8, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 230
    .line 231
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 232
    .line 233
    .line 234
    move-result-wide v17

    .line 235
    cmp-long v8, v17, v21

    .line 236
    .line 237
    if-lez v8, :cond_6

    .line 238
    .line 239
    iget-object v8, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 242
    .line 243
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-static {v1, v11, v8, v10}, Lcom/join/mgps/Util/x;->g(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    goto :goto_3

    .line 252
    :cond_6
    iget-object v8, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 255
    .line 256
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-static {v1, v11, v8, v10}, Lcom/join/mgps/Util/s3;->g(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    goto :goto_3

    .line 265
    :cond_7
    iget-object v8, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 266
    .line 267
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 268
    .line 269
    .line 270
    move-result-wide v17

    .line 271
    cmp-long v8, v17, v21

    .line 272
    .line 273
    if-lez v8, :cond_8

    .line 274
    .line 275
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 280
    .line 281
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-static {v1, v11, v8, v10}, Lcom/join/mgps/Util/x;->g(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    goto :goto_3

    .line 290
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 295
    .line 296
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-static {v1, v11, v8, v10}, Lcom/join/mgps/Util/s3;->g(Lcom/join/mgps/task/h;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UNZipPathBackBean;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/task/h;->d()Z

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    if-eqz v10, :cond_b

    .line 309
    .line 310
    new-instance v10, Ljava/io/File;

    .line 311
    .line 312
    iget-object v12, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 313
    .line 314
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    iget-object v9, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 326
    .line 327
    if-eqz v9, :cond_9

    .line 328
    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    sget-object v18, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 335
    .line 336
    move-object/from16 v19, v12

    .line 337
    .line 338
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 339
    .line 340
    .line 341
    move-result v12

    .line 342
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    iget-object v12, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 353
    .line 354
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    if-eqz v9, :cond_a

    .line 363
    .line 364
    iget-object v12, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_9
    move-object/from16 v19, v12

    .line 368
    .line 369
    :cond_a
    move-object/from16 v12, v19

    .line 370
    .line 371
    :goto_4
    iget-object v9, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 372
    .line 373
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    invoke-static {v10, v12, v9}, Lcom/join/mgps/Util/s3;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_b
    move-object/from16 v10, v16

    .line 382
    .line 383
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    const-string v12, "romsPath-"

    .line 389
    .line 390
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_c
    move-object/from16 v8, v16

    .line 402
    .line 403
    move-object v10, v8

    .line 404
    const-wide/16 v14, -0x1

    .line 405
    .line 406
    :goto_6
    :try_start_3
    iget-boolean v2, v1, Lcom/join/mgps/task/h;->d:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    .line 408
    if-nez v2, :cond_d

    .line 409
    .line 410
    :goto_7
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 411
    .line 412
    const/4 v3, 0x0

    .line 413
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :cond_d
    const/4 v3, 0x0

    .line 418
    :try_start_4
    iget-object v2, v1, Lcom/join/mgps/task/h;->e:Lcom/join/mgps/task/h$a;

    .line 419
    .line 420
    if-eqz v2, :cond_e

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Lcom/join/mgps/task/h$a;->a(Z)V

    .line 423
    .line 424
    .line 425
    :cond_e
    if-eqz v8, :cond_f

    .line 426
    .line 427
    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-nez v2, :cond_f

    .line 436
    .line 437
    new-instance v2, Ljava/io/File;

    .line 438
    .line 439
    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    move-object/from16 v16, v2

    .line 447
    .line 448
    :cond_f
    if-eqz v8, :cond_22

    .line 449
    .line 450
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-nez v2, :cond_22

    .line 455
    .line 456
    if-eqz v16, :cond_22

    .line 457
    .line 458
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-nez v2, :cond_10

    .line 463
    .line 464
    goto/16 :goto_c

    .line 465
    .line 466
    :cond_10
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 467
    .line 468
    const-wide/16 v3, 0x64

    .line 469
    .line 470
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 471
    .line 472
    .line 473
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 474
    .line 475
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 476
    .line 477
    .line 478
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 479
    .line 480
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    const/4 v5, 0x2

    .line 485
    if-eq v2, v5, :cond_11

    .line 486
    .line 487
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 488
    .line 489
    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getGameZipPath()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 497
    .line 498
    invoke-virtual {v8}, Lcom/join/mgps/dto/UNZipPathBackBean;->getSoucePath()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    const-string v5, "romsPath3-"

    .line 511
    .line 512
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 516
    .line 517
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    :cond_11
    const-wide/16 v5, -0x1

    .line 525
    .line 526
    cmp-long v2, v14, v5

    .line 527
    .line 528
    if-eqz v2, :cond_12

    .line 529
    .line 530
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 531
    .line 532
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 533
    .line 534
    .line 535
    move-result-wide v5

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 537
    .line 538
    .line 539
    move-result-wide v7

    .line 540
    sub-long/2addr v7, v14

    .line 541
    div-long/2addr v5, v7

    .line 542
    invoke-virtual {v2, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 543
    .line 544
    .line 545
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    const-string v5, "romsPath4-"

    .line 551
    .line 552
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 556
    .line 557
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    const-string v5, "file-"

    .line 570
    .line 571
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 582
    .line 583
    .line 584
    if-eqz v10, :cond_13

    .line 585
    .line 586
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 587
    .line 588
    .line 589
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v5, "romsPath5-"

    .line 595
    .line 596
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 600
    .line 601
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 609
    .line 610
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    const/4 v5, 0x1

    .line 615
    if-eq v2, v5, :cond_15

    .line 616
    .line 617
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 618
    .line 619
    if-eqz v2, :cond_14

    .line 620
    .line 621
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-nez v2, :cond_14

    .line 630
    .line 631
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 632
    .line 633
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    const-string v5, "/Quark/Download"

    .line 642
    .line 643
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    if-eqz v2, :cond_14

    .line 652
    .line 653
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 654
    .line 655
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 659
    :try_start_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    if-nez v5, :cond_14

    .line 664
    .line 665
    new-instance v5, Lorg/json/JSONObject;

    .line 666
    .line 667
    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    const-string v2, "qkPosition"

    .line 671
    .line 672
    const-string v6, "qk"

    .line 673
    .line 674
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 675
    .line 676
    .line 677
    :catch_0
    :cond_14
    :try_start_6
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 678
    .line 679
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 680
    .line 681
    sget-object v6, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 682
    .line 683
    invoke-static {v2, v5, v6}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 684
    .line 685
    .line 686
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    const-string v5, "romsPath6-"

    .line 692
    .line 693
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 697
    .line 698
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 706
    .line 707
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 708
    .line 709
    .line 710
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 711
    const-string v5, "crc_sign_id"

    .line 712
    .line 713
    const/4 v6, 0x5

    .line 714
    if-eqz v2, :cond_19

    .line 715
    .line 716
    const/4 v7, 0x1

    .line 717
    if-eq v2, v7, :cond_19

    .line 718
    .line 719
    const/4 v7, 0x2

    .line 720
    if-eq v2, v7, :cond_16

    .line 721
    .line 722
    :try_start_7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 727
    .line 728
    invoke-virtual {v2, v5}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 729
    .line 730
    .line 731
    goto/16 :goto_8

    .line 732
    .line 733
    :catch_1
    move-exception v0

    .line 734
    move-object v2, v0

    .line 735
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_8

    .line 739
    .line 740
    :cond_16
    invoke-static {}, Lt6/n;->o()Lt6/n;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 745
    .line 746
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v7

    .line 750
    invoke-virtual {v2, v7}, Lt6/n;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownlodTaskCopyTable;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 755
    .line 756
    .line 757
    move-result-object v7

    .line 758
    if-eqz v2, :cond_1b

    .line 759
    .line 760
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->getDownloadTask()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v8

    .line 764
    if-eqz v8, :cond_1b

    .line 765
    .line 766
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->getDownloadTask()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v8

    .line 770
    const-class v9, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 771
    .line 772
    invoke-virtual {v7, v8, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v8

    .line 776
    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 777
    .line 778
    iget-object v9, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 779
    .line 780
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v9

    .line 784
    const-class v10, Ljava/util/ArrayList;

    .line 785
    .line 786
    const/4 v11, 0x1

    .line 787
    new-array v12, v11, [Ljava/lang/Class;

    .line 788
    .line 789
    const-class v11, Lcom/join/mgps/dto/TipBean;

    .line 790
    .line 791
    const/4 v13, 0x0

    .line 792
    aput-object v11, v12, v13

    .line 793
    .line 794
    invoke-virtual {v7, v10, v12}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 795
    .line 796
    .line 797
    move-result-object v10

    .line 798
    invoke-virtual {v7, v9, v10}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v7

    .line 802
    check-cast v7, Ljava/util/ArrayList;

    .line 803
    .line 804
    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 805
    .line 806
    .line 807
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 808
    .line 809
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 810
    .line 811
    .line 812
    move-result v7

    .line 813
    if-eqz v7, :cond_17

    .line 814
    .line 815
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 816
    .line 817
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 818
    .line 819
    .line 820
    move-result v7

    .line 821
    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 822
    .line 823
    .line 824
    :cond_17
    new-instance v7, Ljava/util/HashMap;

    .line 825
    .line 826
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 827
    .line 828
    .line 829
    iget-object v9, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 830
    .line 831
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v9

    .line 835
    invoke-interface {v7, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    invoke-static {}, Lt6/q;->o()Lt6/q;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    invoke-virtual {v5, v7}, Lq5/b;->h(Ljava/util/Map;)Ljava/util/List;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    if-eqz v5, :cond_18

    .line 847
    .line 848
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 849
    .line 850
    .line 851
    move-result v7

    .line 852
    if-lez v7, :cond_18

    .line 853
    .line 854
    const/4 v7, 0x0

    .line 855
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    check-cast v5, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 860
    .line 861
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v7

    .line 865
    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver_name()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v7

    .line 872
    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_down_url()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v5

    .line 879
    invoke-virtual {v8, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    :cond_18
    const/4 v5, 0x1

    .line 883
    invoke-virtual {v8, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v8, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 887
    .line 888
    .line 889
    invoke-static {}, Lt6/n;->o()Lt6/n;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    invoke-virtual {v5, v2}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 894
    .line 895
    .line 896
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    invoke-virtual {v2, v8}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    goto/16 :goto_8

    .line 904
    .line 905
    :cond_19
    new-instance v2, Ljava/util/HashMap;

    .line 906
    .line 907
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 908
    .line 909
    .line 910
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 911
    .line 912
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v7

    .line 916
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    invoke-static {}, Lt6/q;->o()Lt6/q;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    invoke-virtual {v5, v2}, Lq5/b;->h(Ljava/util/Map;)Ljava/util/List;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    if-eqz v2, :cond_1a

    .line 928
    .line 929
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 930
    .line 931
    .line 932
    move-result v5

    .line 933
    if-lez v5, :cond_1a

    .line 934
    .line 935
    const/4 v5, 0x0

    .line 936
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    check-cast v2, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 941
    .line 942
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 943
    .line 944
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v7

    .line 948
    invoke-virtual {v5, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 952
    .line 953
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver_name()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v7

    .line 957
    invoke-virtual {v5, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 961
    .line 962
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_down_url()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-virtual {v5, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    :cond_1a
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 970
    .line 971
    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 972
    .line 973
    .line 974
    :try_start_9
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 975
    .line 976
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    iget-object v7, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 981
    .line 982
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v7

    .line 986
    invoke-virtual {v5, v7}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 987
    .line 988
    .line 989
    move-result-object v5

    .line 990
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 991
    .line 992
    .line 993
    move-result v5

    .line 994
    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 995
    .line 996
    .line 997
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1002
    .line 1003
    invoke-virtual {v2, v5}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 1004
    .line 1005
    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    const-string v5, "mDownloadTask.romwpath="

    .line 1012
    .line 1013
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1017
    .line 1018
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v5

    .line 1022
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1023
    .line 1024
    .line 1025
    goto :goto_8

    .line 1026
    :catch_2
    move-exception v0

    .line 1027
    move-object v2, v0

    .line 1028
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1029
    .line 1030
    .line 1031
    :cond_1b
    :goto_8
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1032
    .line 1033
    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 1034
    .line 1035
    .line 1036
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1041
    .line 1042
    invoke-virtual {v2, v5, v6, v3, v4}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 1043
    .line 1044
    .line 1045
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1046
    .line 1047
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1048
    .line 1049
    invoke-static {v2, v3, v6}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1050
    .line 1051
    .line 1052
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1053
    .line 1054
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    if-eqz v2, :cond_1d

    .line 1059
    .line 1060
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1061
    .line 1062
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v2

    .line 1066
    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 1067
    .line 1068
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v2

    .line 1076
    if-nez v2, :cond_1d

    .line 1077
    .line 1078
    invoke-static {}, Lt6/k;->n()Lt6/k;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1083
    .line 1084
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v3

    .line 1088
    invoke-virtual {v2, v3}, Lt6/k;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownloadHistoryTable;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v2

    .line 1092
    if-eqz v2, :cond_1c

    .line 1093
    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1095
    .line 1096
    .line 1097
    move-result-wide v3

    .line 1098
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_9

    .line 1102
    :cond_1c
    new-instance v2, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    .line 1103
    .line 1104
    invoke-direct {v2}, Lcom/join/mgps/db/tables/DownloadHistoryTable;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1108
    .line 1109
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    invoke-virtual {v2, v3}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1117
    .line 1118
    .line 1119
    move-result-wide v3

    .line 1120
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 1121
    .line 1122
    .line 1123
    :goto_9
    invoke-static {}, Lt6/k;->n()Lt6/k;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    invoke-virtual {v3, v2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    :cond_1d
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1131
    .line 1132
    if-eqz v2, :cond_1e

    .line 1133
    .line 1134
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v2

    .line 1138
    if-eqz v2, :cond_1e

    .line 1139
    .line 1140
    new-instance v2, Ljava/io/File;

    .line 1141
    .line 1142
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1143
    .line 1144
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3

    .line 1148
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1149
    .line 1150
    .line 1151
    :try_start_b
    const-string v3, ".downloadTask"

    .line 1152
    .line 1153
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v4

    .line 1161
    iget-object v5, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1162
    .line 1163
    invoke-virtual {v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v4

    .line 1167
    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/o3;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1168
    .line 1169
    .line 1170
    goto :goto_a

    .line 1171
    :catch_3
    move-exception v0

    .line 1172
    move-object v2, v0

    .line 1173
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1174
    .line 1175
    .line 1176
    :cond_1e
    :goto_a
    new-instance v2, Landroid/content/Intent;

    .line 1177
    .line 1178
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1179
    .line 1180
    .line 1181
    const-string v3, "gameId"

    .line 1182
    .line 1183
    iget-object v4, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1184
    .line 1185
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    .line 1191
    .line 1192
    const-string v3, "com.join.android.app.mgsim.wufun.broadcast.down_and_unzip_success"

    .line 1193
    .line 1194
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    .line 1196
    .line 1197
    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1198
    .line 1199
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1200
    .line 1201
    .line 1202
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1207
    .line 1208
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->o(Ljava/lang/String;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v2

    .line 1219
    new-instance v3, Lcom/join/mgps/event/p;

    .line 1220
    .line 1221
    iget-object v4, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1222
    .line 1223
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v4

    .line 1227
    const/16 v5, 0x26

    .line 1228
    .line 1229
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    new-instance v3, Lcom/join/mgps/event/r;

    .line 1240
    .line 1241
    iget-object v4, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1242
    .line 1243
    invoke-direct {v3, v4, v6}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1247
    .line 1248
    .line 1249
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1250
    .line 1251
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    invoke-static {v2}, Lcom/papa/sim/statistic/s;->v(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v2, v1, Lcom/join/mgps/task/h;->f:Ljava/lang/String;

    .line 1259
    .line 1260
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v2

    .line 1264
    if-nez v2, :cond_1f

    .line 1265
    .line 1266
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v2

    .line 1270
    new-instance v3, Lcom/join/mgps/event/e0;

    .line 1271
    .line 1272
    iget-object v4, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1273
    .line 1274
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v4

    .line 1278
    const/16 v5, 0x9

    .line 1279
    .line 1280
    invoke-direct {v3, v5, v4}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    :cond_1f
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1287
    .line 1288
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 1289
    .line 1290
    .line 1291
    move-result v2

    .line 1292
    const/16 v3, 0x78

    .line 1293
    .line 1294
    if-eq v2, v3, :cond_21

    .line 1295
    .line 1296
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v2

    .line 1300
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1301
    .line 1302
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v3

    .line 1306
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1307
    .line 1308
    .line 1309
    move-result v3

    .line 1310
    invoke-virtual {v2, v3}, Lq5/f;->c0(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v2

    .line 1314
    if-eqz v2, :cond_20

    .line 1315
    .line 1316
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    const/4 v3, 0x2

    .line 1321
    if-ne v2, v3, :cond_20

    .line 1322
    .line 1323
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1324
    .line 1325
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1326
    .line 1327
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v3

    .line 1331
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    goto :goto_b

    .line 1335
    :cond_20
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v2

    .line 1339
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1340
    .line 1341
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v3

    .line 1345
    invoke-virtual {v2, v3}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v2

    .line 1349
    iget-object v3, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1350
    .line 1351
    invoke-static {v3}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v3

    .line 1355
    iget-object v4, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1356
    .line 1357
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    invoke-virtual {v3, v4, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    if-eqz v2, :cond_21

    .line 1366
    .line 1367
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1368
    .line 1369
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1370
    .line 1371
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Ljava/lang/String;)V

    .line 1376
    .line 1377
    .line 1378
    :cond_21
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    const-string v3, "mDownloadTask.fina="

    .line 1384
    .line 1385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1389
    .line 1390
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    goto/16 :goto_f

    .line 1398
    .line 1399
    :cond_22
    :goto_c
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1400
    .line 1401
    const/16 v3, 0xd

    .line 1402
    .line 1403
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 1404
    .line 1405
    .line 1406
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v2

    .line 1410
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1411
    .line 1412
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1413
    .line 1414
    .line 1415
    goto/16 :goto_7

    .line 1416
    .line 1417
    :catchall_0
    move-exception v0

    .line 1418
    move-object v2, v0

    .line 1419
    goto/16 :goto_e

    .line 1420
    .line 1421
    :catch_4
    move-exception v0

    .line 1422
    move-object v8, v0

    .line 1423
    :try_start_d
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1424
    .line 1425
    .line 1426
    iget-object v9, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1427
    .line 1428
    invoke-static {v9}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v9

    .line 1432
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1433
    .line 1434
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v10

    .line 1438
    iget-object v12, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1439
    .line 1440
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v12

    .line 1444
    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v12

    .line 1448
    invoke-virtual {v9, v10, v12, v7}, Lcom/papa/sim/statistic/t;->h2(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1449
    .line 1450
    .line 1451
    :try_start_e
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1452
    .line 1453
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v7

    .line 1457
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    .line 1464
    .line 1465
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1466
    .line 1467
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v10

    .line 1471
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 1478
    .line 1479
    .line 1480
    move-result-wide v12

    .line 1481
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    .line 1486
    .line 1487
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1488
    .line 1489
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1496
    .line 1497
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    .line 1502
    .line 1503
    invoke-static {v8}, Lcom/join/mgps/Util/m;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v10

    .line 1507
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v9

    .line 1514
    invoke-virtual {v7, v9}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1515
    .line 1516
    .line 1517
    :catch_5
    :try_start_f
    iget-object v7, v1, Lcom/join/mgps/task/h;->e:Lcom/join/mgps/task/h$a;

    .line 1518
    .line 1519
    const/4 v9, 0x0

    .line 1520
    if-eqz v7, :cond_23

    .line 1521
    .line 1522
    invoke-virtual {v7, v9}, Lcom/join/mgps/task/h$a;->a(Z)V

    .line 1523
    .line 1524
    .line 1525
    :cond_23
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1526
    .line 1527
    iget-object v10, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1528
    .line 1529
    invoke-static {v7, v10, v9}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 1530
    .line 1531
    .line 1532
    move-result v7

    .line 1533
    if-nez v7, :cond_24

    .line 1534
    .line 1535
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1536
    .line 1537
    new-instance v3, Landroid/content/Intent;

    .line 1538
    .line 1539
    const-string v4, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    .line 1540
    .line 1541
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1545
    .line 1546
    .line 1547
    iget-object v2, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1548
    .line 1549
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v2

    .line 1553
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1556
    .line 1557
    .line 1558
    const-string v4, "zip...insufficient storage. gameId="

    .line 1559
    .line 1560
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    .line 1562
    .line 1563
    iget-object v4, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1564
    .line 1565
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v4

    .line 1569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v3

    .line 1576
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1577
    .line 1578
    .line 1579
    goto :goto_d

    .line 1580
    :cond_24
    :try_start_10
    iget-object v7, v1, Lcom/join/mgps/task/h;->b:Landroid/content/Context;

    .line 1581
    .line 1582
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v7

    .line 1586
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    .line 1594
    iget-object v6, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1595
    .line 1596
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v6

    .line 1600
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 1607
    .line 1608
    .line 1609
    move-result-wide v5

    .line 1610
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    .line 1616
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1617
    .line 1618
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1625
    .line 1626
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    invoke-static {v8}, Lcom/join/mgps/Util/m;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v2

    .line 1636
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v2

    .line 1643
    invoke-virtual {v7, v2}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1644
    .line 1645
    .line 1646
    :catch_6
    :goto_d
    :try_start_11
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v2

    .line 1650
    iget-object v3, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1651
    .line 1652
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1653
    .line 1654
    .line 1655
    goto/16 :goto_7

    .line 1656
    .line 1657
    :goto_e
    :try_start_12
    throw v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1658
    :catchall_1
    move-exception v0

    .line 1659
    move-object v2, v0

    .line 1660
    const/4 v3, 0x0

    .line 1661
    goto :goto_10

    .line 1662
    :catch_7
    move-exception v0

    .line 1663
    move-object v2, v0

    .line 1664
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1665
    .line 1666
    .line 1667
    :goto_f
    iget-object v2, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1668
    .line 1669
    const/4 v3, 0x0

    .line 1670
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 1671
    .line 1672
    .line 1673
    return-void

    .line 1674
    :catchall_2
    move-exception v0

    .line 1675
    const/4 v3, 0x0

    .line 1676
    move-object v2, v0

    .line 1677
    :goto_10
    iget-object v4, v1, Lcom/join/mgps/task/h;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1678
    .line 1679
    invoke-virtual {v4, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 1680
    .line 1681
    .line 1682
    throw v2
.end method
