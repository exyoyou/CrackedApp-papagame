.class public final Lcom/kwad/framework/filedownloader/download/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/e$a;
    }
.end annotation


# instance fields
.field private final aAO:I

.field private final aAW:J

.field aAX:J

.field private final aAY:J

.field private final aBL:Lcom/kwad/framework/filedownloader/download/f;

.field private final aBN:I

.field private final aBd:Lcom/kwad/framework/filedownloader/b/a;

.field private final aBl:Z

.field private final aCd:Lcom/kwad/framework/filedownloader/download/c;

.field private final aCe:Lcom/kwad/framework/filedownloader/a/b;

.field private aCf:Lcom/kwad/framework/filedownloader/e/a;

.field private volatile aCg:J

.field private volatile aCh:J

.field private final apn:Ljava/lang/String;

.field private final contentLength:J

.field private volatile nJ:Z


# direct methods
.method private constructor <init>(Lcom/kwad/framework/filedownloader/a/b;Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/download/c;IIZLcom/kwad/framework/filedownloader/download/f;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aCg:J

    .line 4
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aCh:J

    .line 5
    iput-object p7, p0, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 6
    iput-object p8, p0, Lcom/kwad/framework/filedownloader/download/e;->apn:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/e;->aCe:Lcom/kwad/framework/filedownloader/a/b;

    .line 8
    iput-boolean p6, p0, Lcom/kwad/framework/filedownloader/download/e;->aBl:Z

    .line 9
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 10
    iput p5, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 11
    iput p4, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 12
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/download/b;->Cc()Lcom/kwad/framework/filedownloader/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/e;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 13
    iget-wide p3, p2, Lcom/kwad/framework/filedownloader/download/a;->aAW:J

    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 14
    iget-wide p3, p2, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 15
    iget-wide p3, p2, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 16
    iget-wide p1, p2, Lcom/kwad/framework/filedownloader/download/a;->contentLength:J

    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/download/e;->contentLength:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/framework/filedownloader/a/b;Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/download/c;IIZLcom/kwad/framework/filedownloader/download/f;Ljava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/kwad/framework/filedownloader/download/e;-><init>(Lcom/kwad/framework/filedownloader/a/b;Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/download/c;IIZLcom/kwad/framework/filedownloader/download/f;Ljava/lang/String;)V

    return-void
.end method

.method private CD()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aCg:J

    .line 8
    .line 9
    sub-long/2addr v2, v4

    .line 10
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aCh:J

    .line 11
    .line 12
    sub-long v4, v0, v4

    .line 13
    .line 14
    invoke-static {v2, v3, v4, v5}, Lcom/kwad/framework/filedownloader/f/f;->i(JJ)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/e;->sync()V

    .line 21
    .line 22
    .line 23
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aCg:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/e;->aCh:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private sync()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aCf:Lcom/kwad/framework/filedownloader/e/a;

    .line 8
    .line 9
    invoke-interface {v4}, Lcom/kwad/framework/filedownloader/e/a;->Du()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v4

    .line 15
    sget-boolean v5, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    new-array v5, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v4, v5, v3

    .line 22
    .line 23
    const-string v4, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    .line 24
    .line 25
    invoke-static {p0, v4, v5}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    :goto_0
    if-eqz v4, :cond_3

    .line 30
    .line 31
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    :goto_1
    if-eqz v4, :cond_2

    .line 39
    .line 40
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 41
    .line 42
    iget v5, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 43
    .line 44
    iget v6, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 45
    .line 46
    iget-wide v7, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 47
    .line 48
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/kwad/framework/filedownloader/b/a;->a(IIJ)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 53
    .line 54
    invoke-interface {v4}, Lcom/kwad/framework/filedownloader/download/f;->Cm()V

    .line 55
    .line 56
    .line 57
    :goto_2
    sget-boolean v4, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    new-array v4, v4, [Ljava/lang/Object;

    .line 63
    .line 64
    iget v5, p0, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    aput-object v5, v4, v3

    .line 71
    .line 72
    iget v3, p0, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    aput-object v3, v4, v2

    .line 79
    .line 80
    iget-wide v2, p0, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 81
    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x2

    .line 87
    aput-object v2, v4, v3

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    sub-long/2addr v2, v0

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x3

    .line 99
    aput-object v0, v4, v1

    .line 100
    .line 101
    const-string v0, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    .line 102
    .line 103
    invoke-static {p0, v0, v4}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z

    .line 3
    .line 4
    return-void
.end method

.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, v1, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 9
    .line 10
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/e;->aCe:Lcom/kwad/framework/filedownloader/a/b;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lcom/kwad/framework/filedownloader/f/f;->b(ILcom/kwad/framework/filedownloader/a/b;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x0

    .line 21
    cmp-long v8, v2, v4

    .line 22
    .line 23
    if-eqz v8, :cond_e

    .line 24
    .line 25
    iget-wide v8, v1, Lcom/kwad/framework/filedownloader/download/e;->contentLength:J

    .line 26
    .line 27
    const/4 v10, 0x5

    .line 28
    const/4 v11, 0x4

    .line 29
    const/4 v12, 0x3

    .line 30
    cmp-long v13, v8, v4

    .line 31
    .line 32
    if-lez v13, :cond_2

    .line 33
    .line 34
    cmp-long v13, v2, v8

    .line 35
    .line 36
    if-eqz v13, :cond_2

    .line 37
    .line 38
    iget-wide v8, v1, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 39
    .line 40
    cmp-long v13, v8, v4

    .line 41
    .line 42
    if-nez v13, :cond_1

    .line 43
    .line 44
    new-array v4, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    iget-wide v8, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 47
    .line 48
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    aput-object v5, v4, v7

    .line 53
    .line 54
    const-string v5, "range[%d-)"

    .line 55
    .line 56
    invoke-static {v5, v4}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-array v4, v0, [Ljava/lang/Object;

    .line 62
    .line 63
    iget-wide v8, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 64
    .line 65
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    aput-object v5, v4, v7

    .line 70
    .line 71
    iget-wide v8, v1, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 72
    .line 73
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    aput-object v5, v4, v6

    .line 78
    .line 79
    const-string v5, "range[%d-%d)"

    .line 80
    .line 81
    invoke-static {v5, v4}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_0
    new-instance v5, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 86
    .line 87
    new-array v8, v10, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v4, v8, v7

    .line 90
    .line 91
    iget-wide v9, v1, Lcom/kwad/framework/filedownloader/download/e;->contentLength:J

    .line 92
    .line 93
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    aput-object v4, v8, v6

    .line 98
    .line 99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    aput-object v2, v8, v0

    .line 104
    .line 105
    iget v0, v1, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    aput-object v0, v8, v12

    .line 112
    .line 113
    iget v0, v1, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    aput-object v0, v8, v11

    .line 120
    .line 121
    const-string v0, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    .line 122
    .line 123
    invoke-static {v0, v8}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {v5, v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v5

    .line 131
    :cond_2
    iget-wide v4, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 132
    .line 133
    const/4 v8, 0x0

    .line 134
    :try_start_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v9}, Lcom/kwad/framework/filedownloader/download/b;->Ce()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    iget-object v13, v1, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 143
    .line 144
    if-eqz v13, :cond_4

    .line 145
    .line 146
    if-eqz v9, :cond_3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/IllegalAccessException;

    .line 150
    .line 151
    const-string v2, "can\'t using multi-download when the output stream can\'t support seek"

    .line 152
    .line 153
    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_4
    :goto_1
    iget-object v13, v1, Lcom/kwad/framework/filedownloader/download/e;->apn:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v13}, Lcom/kwad/framework/filedownloader/f/f;->cs(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/e/a;

    .line 160
    .line 161
    .line 162
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    iput-object v13, v1, Lcom/kwad/framework/filedownloader/download/e;->aCf:Lcom/kwad/framework/filedownloader/e/a;

    .line 164
    .line 165
    if-eqz v9, :cond_5

    .line 166
    .line 167
    iget-wide v14, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 168
    .line 169
    invoke-interface {v13, v14, v15}, Lcom/kwad/framework/filedownloader/e/a;->seek(J)V

    .line 170
    .line 171
    .line 172
    :cond_5
    sget-boolean v9, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 173
    .line 174
    if-eqz v9, :cond_6

    .line 175
    .line 176
    const-string v9, "start fetch(%d): range [%d, %d), seek to[%d]"

    .line 177
    .line 178
    new-array v14, v11, [Ljava/lang/Object;

    .line 179
    .line 180
    iget v15, v1, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 181
    .line 182
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    aput-object v15, v14, v7

    .line 187
    .line 188
    iget-wide v10, v1, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 189
    .line 190
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    aput-object v10, v14, v6

    .line 195
    .line 196
    iget-wide v10, v1, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 197
    .line 198
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    aput-object v10, v14, v0

    .line 203
    .line 204
    iget-wide v10, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 205
    .line 206
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    aput-object v10, v14, v12

    .line 211
    .line 212
    invoke-static {v1, v9, v14}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    iget-object v9, v1, Lcom/kwad/framework/filedownloader/download/e;->aCe:Lcom/kwad/framework/filedownloader/a/b;

    .line 216
    .line 217
    invoke-interface {v9}, Lcom/kwad/framework/filedownloader/a/b;->getInputStream()Ljava/io/InputStream;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    const/16 v9, 0x1000

    .line 222
    .line 223
    new-array v9, v9, [B

    .line 224
    .line 225
    iget-boolean v10, v1, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .line 227
    if-eqz v10, :cond_7

    .line 228
    .line 229
    invoke-static {v8}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v13}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_7
    :goto_2
    :try_start_2
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    const/4 v11, -0x1

    .line 241
    if-eq v10, v11, :cond_a

    .line 242
    .line 243
    invoke-interface {v13, v9, v7, v10}, Lcom/kwad/framework/filedownloader/e/a;->write([BII)V

    .line 244
    .line 245
    .line 246
    iget-wide v6, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 247
    .line 248
    int-to-long v14, v10

    .line 249
    add-long/2addr v6, v14

    .line 250
    iput-wide v6, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 251
    .line 252
    iget-object v6, v1, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 253
    .line 254
    invoke-interface {v6, v14, v15}, Lcom/kwad/framework/filedownloader/download/f;->onProgress(J)V

    .line 255
    .line 256
    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/kwad/framework/filedownloader/download/e;->CD()V

    .line 258
    .line 259
    .line 260
    iget-boolean v6, v1, Lcom/kwad/framework/filedownloader/download/e;->nJ:Z

    .line 261
    .line 262
    if-nez v6, :cond_a

    .line 263
    .line 264
    iget-boolean v6, v1, Lcom/kwad/framework/filedownloader/download/e;->aBl:Z

    .line 265
    .line 266
    if-eqz v6, :cond_9

    .line 267
    .line 268
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/f;->DE()Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-nez v6, :cond_8

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_8
    new-instance v0, Lcom/kwad/framework/filedownloader/exception/FileDownloadNetworkPolicyException;

    .line 276
    .line 277
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_9
    :goto_3
    const/4 v6, 0x1

    .line 282
    const/4 v7, 0x0

    .line 283
    goto :goto_2

    .line 284
    :cond_a
    if-eqz v13, :cond_b

    .line 285
    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/kwad/framework/filedownloader/download/e;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    .line 288
    .line 289
    :cond_b
    invoke-static {v8}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v13}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 293
    .line 294
    .line 295
    iget-wide v6, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 296
    .line 297
    sub-long/2addr v6, v4

    .line 298
    const-wide/16 v8, -0x1

    .line 299
    .line 300
    cmp-long v10, v2, v8

    .line 301
    .line 302
    if-eqz v10, :cond_d

    .line 303
    .line 304
    cmp-long v8, v2, v6

    .line 305
    .line 306
    if-nez v8, :cond_c

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_c
    new-instance v8, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 310
    .line 311
    const/4 v9, 0x6

    .line 312
    new-array v9, v9, [Ljava/lang/Object;

    .line 313
    .line 314
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    const/4 v7, 0x0

    .line 319
    aput-object v6, v9, v7

    .line 320
    .line 321
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const/4 v3, 0x1

    .line 326
    aput-object v2, v9, v3

    .line 327
    .line 328
    iget-wide v2, v1, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 329
    .line 330
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    aput-object v2, v9, v0

    .line 335
    .line 336
    iget-wide v2, v1, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 337
    .line 338
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    aput-object v0, v9, v12

    .line 343
    .line 344
    iget-wide v2, v1, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 345
    .line 346
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const/4 v2, 0x4

    .line 351
    aput-object v0, v9, v2

    .line 352
    .line 353
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const/4 v2, 0x5

    .line 358
    aput-object v0, v9, v2

    .line 359
    .line 360
    const-string v0, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset"

    .line 361
    .line 362
    invoke-static {v0, v9}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-direct {v8, v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v8

    .line 370
    :cond_d
    :goto_4
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/e;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 371
    .line 372
    iget-object v3, v1, Lcom/kwad/framework/filedownloader/download/e;->aCd:Lcom/kwad/framework/filedownloader/download/c;

    .line 373
    .line 374
    iget-wide v4, v1, Lcom/kwad/framework/filedownloader/download/e;->aAW:J

    .line 375
    .line 376
    iget-wide v6, v1, Lcom/kwad/framework/filedownloader/download/e;->aAY:J

    .line 377
    .line 378
    invoke-interface/range {v2 .. v7}, Lcom/kwad/framework/filedownloader/download/f;->a(Lcom/kwad/framework/filedownloader/download/c;JJ)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    goto :goto_5

    .line 384
    :catchall_1
    move-exception v0

    .line 385
    move-object v13, v8

    .line 386
    :goto_5
    invoke-static {v8}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v13}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 390
    .line 391
    .line 392
    throw v0

    .line 393
    :cond_e
    new-instance v2, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 394
    .line 395
    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    .line 397
    iget v3, v1, Lcom/kwad/framework/filedownloader/download/e;->aAO:I

    .line 398
    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    const/4 v4, 0x0

    .line 404
    aput-object v3, v0, v4

    .line 405
    .line 406
    iget v3, v1, Lcom/kwad/framework/filedownloader/download/e;->aBN:I

    .line 407
    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    const/4 v4, 0x1

    .line 413
    aput-object v3, v0, v4

    .line 414
    .line 415
    const-string v3, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    .line 416
    .line 417
    invoke-static {v3, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-direct {v2, v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v2
.end method
