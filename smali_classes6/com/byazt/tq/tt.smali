.class public Lcom/byazt/tq/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tq/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x46e,
        0xd
    }
.end annotation


# static fields
.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/tq/tt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public da:Ljava/io/RandomAccessFile;

.field public volatile i:Z

.field public n:Ljava/io/File;

.field public final sl:Lcom/byazt/jzl/a;

.field public volatile sp:J

.field public t:Lcom/byazt/tq/tt;

.field public volatile tt:J

.field public u:Lcom/byazt/jzl/tt;

.field public uj:Ljava/io/File;

.field public final ve:Ljava/lang/Object;

.field public volatile x:Z

.field public yp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/tq/tt;->c:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/jzl/tt;Lcom/byazt/jzl/a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x80000000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/byazt/tq/tt;->tt:J

    .line 8
    .line 9
    new-instance p1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/byazt/tq/tt;->a:J

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/byazt/tq/tt;->sp:J

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/byazt/tq/tt;->x:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/byazt/tq/tt;->i:Z

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    .line 31
    .line 32
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/byazt/tq/tt;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/byazt/tq/tt;->u:Lcom/byazt/jzl/tt;

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getCacheParentDir()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p2, v2}, Lcom/byazt/vv/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getCacheParentDir()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {p2, v2}, Lcom/byazt/vv/ve;->ve(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/byazt/tq/tt;->sp()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    .line 80
    .line 81
    const-string v3, "r"

    .line 82
    .line 83
    invoke-direct {p2, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    .line 92
    .line 93
    const-string v3, "rw"

    .line 94
    .line 95
    invoke-direct {p2, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    .line 99
    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/byazt/tq/tt;->sp()Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_5

    .line 105
    .line 106
    iget-object p2, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    iput-wide v2, p0, Lcom/byazt/tq/tt;->a:J

    .line 113
    .line 114
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getVideoSize()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    cmp-long p2, v2, v4

    .line 119
    .line 120
    if-nez p2, :cond_1

    .line 121
    .line 122
    iget-wide v2, p0, Lcom/byazt/tq/tt;->a:J

    .line 123
    .line 124
    cmp-long p2, v2, v0

    .line 125
    .line 126
    if-eqz p2, :cond_1

    .line 127
    .line 128
    iget-object p2, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    .line 129
    .line 130
    invoke-static {p2}, Lcom/byazt/lt/c;->c(Ljava/io/File;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {p2, v0}, Lcom/byazt/lt/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    if-eqz p2, :cond_1

    .line 146
    .line 147
    iget-wide v0, p0, Lcom/byazt/tq/tt;->a:J

    .line 148
    .line 149
    invoke-direct {p0, v0, v1}, Lcom/byazt/tq/tt;->c(J)V

    .line 150
    .line 151
    .line 152
    iget-wide v0, p0, Lcom/byazt/tq/tt;->a:J

    .line 153
    .line 154
    iput-wide v0, p0, Lcom/byazt/tq/tt;->tt:J

    .line 155
    .line 156
    return-void

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/byazt/tq/tt;->uj()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_2

    .line 162
    .line 163
    const-string p2, "CSJ_MediaDLPlay"

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "no process lock, no download "

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0}, Lcom/byazt/tq/tt;->n()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {p2, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_2
    const-class p2, Lcom/byazt/tq/tt;

    .line 188
    .line 189
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    invoke-direct {p0}, Lcom/byazt/tq/tt;->a()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    invoke-direct {p0}, Lcom/byazt/tq/tt;->x()V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/byazt/tq/tt;->t:Lcom/byazt/tq/tt;

    .line 201
    .line 202
    if-eqz v0, :cond_4

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/byazt/tq/tt;->c()J

    .line 205
    .line 206
    .line 207
    move-result-wide v0

    .line 208
    iput-wide v0, p0, Lcom/byazt/tq/tt;->tt:J

    .line 209
    .line 210
    :cond_4
    :goto_1
    monitor-exit p2

    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :cond_5
    return-void

    .line 216
    :catchall_1
    const-string p2, "CSJ_MediaDLPlay"

    .line 217
    .line 218
    const/4 v0, 0x3

    .line 219
    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    .line 221
    const-string v1, "Error using file "

    .line 222
    .line 223
    aput-object v1, v0, p1

    .line 224
    .line 225
    const/4 p1, 0x1

    .line 226
    invoke-virtual {p3}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    aput-object p3, v0, p1

    .line 231
    .line 232
    const/4 p1, 0x2

    .line 233
    const-string p3, " as disc cache"

    .line 234
    .line 235
    aput-object p3, v0, p1

    .line 236
    .line 237
    invoke-static {p2, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public static synthetic a(Lcom/byazt/tq/tt;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    return-object p0
.end method

.method private a()Z
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/byazt/tq/tt;->n()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-class v1, Lcom/byazt/tq/tt;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/byazt/tq/tt;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/tq/tt;

    iput-object v3, p0, Lcom/byazt/tq/tt;->t:Lcom/byazt/tq/tt;

    if-eqz v3, :cond_0

    .line 5
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic c(Lcom/byazt/tq/tt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/tq/tt;->tt:J

    return-wide p1
.end method

.method private c(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_0

    .line 42
    iget-object p1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    iget-object p1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    .line 43
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    iget-object p2, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 46
    iget-object p1, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 48
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/tq/tt;->x:Z

    if-nez p1, :cond_2

    .line 49
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {p1, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    iget-object p1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    .line 51
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error renaming file "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for completion!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "CSJ_MediaDLPlay"

    const-string v1, "complete error"

    .line 53
    invoke-static {p2, v1, p1}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :goto_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 55
    throw p1

    :catchall_2
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private c(JJJJZJ)V
    .locals 2

    if-nez p9, :cond_0

    .line 11
    iget-object p9, p0, Lcom/byazt/tq/tt;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p9, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p9

    if-eqz p9, :cond_3

    :cond_0
    const-string p9, "event"

    .line 12
    invoke-static {p9}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Lcom/byazt/dna/z;

    if-eqz p9, :cond_3

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/byazt/tq/tt;->u:Lcom/byazt/jzl/tt;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Lcom/byazt/jzl/tt;->c()Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    :try_start_0
    const-string v1, "totalLength"

    .line 16
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "position"

    .line 17
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "cacheLength"

    .line 18
    invoke-virtual {v0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "waitTime"

    .line 19
    invoke-virtual {v0, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "videoUrl"

    .line 22
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "startSaveLength"

    .line 23
    invoke-virtual {v0, p1, p10, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "video_wait"

    const/4 p2, 0x0

    .line 24
    invoke-interface {p9, p1, v0, p2}, Lcom/byazt/dna/z;->onExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/byazt/tq/tt;->n()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-class v1, Lcom/byazt/tq/tt;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    sget-object p1, Lcom/byazt/tq/tt;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/byazt/tq/tt;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/tq/tt;

    if-ne v2, p0, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic c(Lcom/byazt/tq/tt;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/tq/tt;->i:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/tq/tt;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/tq/tt;->i:Z

    return p1
.end method

.method private i()J
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/byazt/tq/tt;->sp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic i(Lcom/byazt/tq/tt;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/tq/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/tq/tt;->tt:J

    return-wide v0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sp()Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic sp(Lcom/byazt/tq/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/tq/tt;->x:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/tq/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/tq/tt;->a:J

    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/tq/tt;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/tq/tt;->c(J)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/tq/tt;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/tq/tt;->c(Z)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/tq/tt;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    return-object p0
.end method

.method private uj()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return v1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 5
    throw v0

    :catch_2
    return v1
.end method

.method public static synthetic ve(Lcom/byazt/tq/tt;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/tq/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/tq/tt;->sp:J

    return-wide v0
.end method

.method private x()V
    .locals 6

    .line 2
    invoke-static {}, Lcom/byazt/oy/tt;->ve()Lcom/byazt/gqp/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/oy/tt;->ve()Lcom/byazt/gqp/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/t;->tt()Lcom/byazt/gqp/t$c;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/gqp/t$c;

    const-string v1, "v_cache"

    invoke-direct {v0, v1}, Lcom/byazt/gqp/t$c;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getConnectTimeOutMills()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/gqp/t$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    .line 6
    invoke-virtual {v2}, Lcom/byazt/jzl/a;->getReadTimeOutMills()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/byazt/gqp/t$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    .line 7
    invoke-virtual {v2}, Lcom/byazt/jzl/a;->getWriteTimeOutMills()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/byazt/gqp/t$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    .line 8
    invoke-virtual {v0}, Lcom/byazt/gqp/t$c;->c()Lcom/byazt/gqp/t;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 10
    new-instance v1, Lcom/byazt/gqp/yp$c;

    invoke-direct {v1}, Lcom/byazt/gqp/yp$c;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/byazt/tq/tt;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/tq/tt;->sl:Lcom/byazt/jzl/a;

    .line 12
    invoke-virtual {v2}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/byazt/gqp/yp$c;->c()Lcom/byazt/gqp/yp$c;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/byazt/tq/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/tq/tt$1;-><init>(Lcom/byazt/tq/tt;)V

    invoke-interface {v0, v1}, Lcom/byazt/gqp/tt;->c(Lcom/byazt/gqp/ve;)V

    return-void
.end method


# virtual methods
.method public c(J[BII)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    .line 25
    :try_start_0
    iget-wide v0, v13, Lcom/byazt/tq/tt;->tt:J

    const/16 v16, -0x1

    cmp-long v2, v14, v0

    if-nez v2, :cond_0

    return v16

    :cond_0
    const-wide/16 v17, -0x1

    const/4 v0, 0x0

    move-wide/from16 v1, v17

    const/16 v19, 0x0

    .line 26
    :goto_0
    iget-boolean v3, v13, Lcom/byazt/tq/tt;->x:Z

    if-nez v3, :cond_6

    .line 27
    iget-object v11, v13, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/byazt/tq/tt;->i()J

    move-result-wide v6

    cmp-long v3, v1, v17

    if-nez v3, :cond_1

    move-wide/from16 v20, v6

    goto :goto_1

    :cond_1
    move-wide/from16 v20, v1

    :goto_1
    cmp-long v1, v14, v6

    if-gez v1, :cond_3

    .line 29
    iget-object v1, v13, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    iget-object v1, v13, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    move-object/from16 v12, p3

    move/from16 v10, p4

    move/from16 v8, p5

    invoke-virtual {v1, v12, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    move/from16 v19, v1

    :cond_2
    move-object/from16 v22, v11

    goto :goto_2

    :cond_3
    move-object/from16 v12, p3

    move/from16 v10, p4

    move/from16 v8, p5

    add-int/lit8 v0, v0, 0x21

    .line 31
    iget-object v1, v13, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    const-wide/16 v2, 0x21

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    const/16 v1, 0xfa0

    if-lt v0, v1, :cond_2

    .line 32
    iget-wide v2, v13, Lcom/byazt/tq/tt;->tt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v0

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v23, v4

    move-wide/from16 v4, p1

    move-wide/from16 v8, v23

    move/from16 v10, v22

    move-object/from16 v22, v11

    move-wide/from16 v11, v20

    :try_start_2
    invoke-direct/range {v1 .. v12}, Lcom/byazt/tq/tt;->c(JJJJZJ)V

    .line 33
    :goto_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v19, :cond_4

    return v19

    :cond_4
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_5

    move-wide/from16 v1, v20

    goto :goto_0

    .line 34
    :cond_5
    :try_start_3
    iget-wide v2, v13, Lcom/byazt/tq/tt;->tt:J

    invoke-direct/range {p0 .. p0}, Lcom/byazt/tq/tt;->i()J

    move-result-wide v6

    int-to-long v8, v0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-wide/from16 v11, v20

    invoke-direct/range {v1 .. v12}, Lcom/byazt/tq/tt;->c(JJJJZJ)V

    .line 35
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_0
    move-exception v0

    move-object/from16 v22, v11

    .line 36
    :goto_3
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_6
    return v16

    :catchall_2
    move-exception v0

    .line 37
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_7

    .line 38
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 39
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public c()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/byazt/tq/tt;->tt:J

    return-wide v0
.end method

.method public tt()V
    .locals 4

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/tq/tt;->x:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/tq/tt;->da:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/tq/tt;->uj:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "CSJ_MediaDLPlay"

    const-string v3, "close error"

    .line 10
    invoke-static {v2, v3, v1}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/tq/tt;->c(Z)V

    .line 12
    iget-object v1, p0, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 13
    :try_start_2
    iput-boolean v0, p0, Lcom/byazt/tq/tt;->x:Z

    .line 14
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 15
    invoke-direct {p0, v0}, Lcom/byazt/tq/tt;->c(Z)V

    .line 16
    throw v1
.end method

.method public ve()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/tq/tt;->sp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/tq/tt;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/tq/tt;->tt:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    .line 5
    :cond_1
    :try_start_0
    iget-wide v3, p0, Lcom/byazt/tq/tt;->tt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v5, -0x80000000

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/byazt/tq/tt;->t:Lcom/byazt/tq/tt;

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/byazt/tq/tt;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/tq/tt;->tt:J

    :cond_2
    add-int/lit8 v2, v2, 0xf

    .line 8
    iget-object v3, p0, Lcom/byazt/tq/tt;->ve:Ljava/lang/Object;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x2710

    if-le v2, v3, :cond_1

    .line 9
    :try_start_2
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception v1

    .line 10
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-string v0, "CSJ_MediaDLPlay"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "totalLength= "

    aput-object v3, v2, v1

    .line 13
    iget-wide v3, p0, Lcom/byazt/tq/tt;->tt:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-wide v0, p0, Lcom/byazt/tq/tt;->tt:J

    return-wide v0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
