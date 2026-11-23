.class Lcom/join/mgps/task/h$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private b:Z

.field c:Ljava/io/File;

.field final synthetic d:Lcom/join/mgps/task/h;


# direct methods
.method public constructor <init>(Lcom/join/mgps/task/h;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "file"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/task/h$a;->b:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/task/h$a;->c:Ljava/io/File;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/task/h$a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/task/h$a;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->c:Ljava/io/File;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N1(Ljava/io/File;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "zip currentSize ="

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const-wide/16 v4, 0x2

    .line 50
    .line 51
    mul-long v2, v2, v4

    .line 52
    .line 53
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 54
    .line 55
    invoke-static {v4}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v4

    .line 69
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_1
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    cmp-long v6, v2, v4

    .line 75
    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    cmp-long v6, v0, v4

    .line 79
    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-wide/16 v5, 0x64

    .line 90
    .line 91
    mul-long v0, v0, v5

    .line 92
    .line 93
    div-long/2addr v0, v2

    .line 94
    invoke-virtual {v4, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-wide/16 v4, 0x1

    .line 105
    .line 106
    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 107
    .line 108
    .line 109
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v1, "totalSize="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ";zip progress ="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/join/mgps/task/h;->c(Lcom/join/mgps/task/h;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 166
    .line 167
    iget-object v2, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 168
    .line 169
    invoke-static {v2}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v3, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 178
    .line 179
    invoke-static {v3}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 184
    .line 185
    .line 186
    move-result-wide v3

    .line 187
    const/4 v5, 0x6

    .line 188
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    const-wide/16 v0, 0x3e8

    .line 195
    .line 196
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :catchall_0
    move-exception v0

    .line 202
    throw v0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->d:Lcom/join/mgps/task/h;

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/join/mgps/task/h;->a()V

    .line 210
    .line 211
    .line 212
    :cond_5
    return-void
.end method
