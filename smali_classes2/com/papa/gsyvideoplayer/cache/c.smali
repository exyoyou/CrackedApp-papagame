.class public Lcom/papa/gsyvideoplayer/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/gsyvideoplayer/cache/b;
.implements Lcom/danikula/videocache/d;


# static fields
.field public static g:I = 0x20000000

.field private static h:Lcom/papa/gsyvideoplayer/cache/c;

.field private static i:Lcom/danikula/videocache/file/c;


# instance fields
.field protected b:Lcom/danikula/videocache/i;

.field protected c:Ljava/io/File;

.field protected d:Z

.field private e:Lcom/papa/gsyvideoplayer/cache/b$a;

.field protected f:Lcom/papa/gsyvideoplayer/cache/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa/gsyvideoplayer/cache/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/papa/gsyvideoplayer/cache/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/cache/c;->f:Lcom/papa/gsyvideoplayer/cache/d;

    .line 10
    .line 11
    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/papa/gsyvideoplayer/cache/c;->i:Lcom/danikula/videocache/file/c;

    .line 3
    .line 4
    return-void
.end method

.method protected static c(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Lcom/papa/gsyvideoplayer/cache/c;->k(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, v0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/i;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/cache/c;->c(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/cache/c;->c:Ljava/io/File;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/cache/c;->c:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/danikula/videocache/i;->r()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, p0, p1}, Lcom/papa/gsyvideoplayer/cache/c;->l(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/i;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iput-object p0, v0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/c;->j()Lcom/papa/gsyvideoplayer/cache/c;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, p0, p1}, Lcom/papa/gsyvideoplayer/cache/c;->l(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/i;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iput-object p0, v0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 83
    .line 84
    move-object v0, p0

    .line 85
    :cond_3
    return-object v0
.end method

.method public static declared-synchronized j()Lcom/papa/gsyvideoplayer/cache/c;
    .locals 2

    .line 1
    const-class v0, Lcom/papa/gsyvideoplayer/cache/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/papa/gsyvideoplayer/cache/c;->h:Lcom/papa/gsyvideoplayer/cache/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/papa/gsyvideoplayer/cache/c;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/papa/gsyvideoplayer/cache/c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/papa/gsyvideoplayer/cache/c;->h:Lcom/papa/gsyvideoplayer/cache/c;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/papa/gsyvideoplayer/cache/c;->h:Lcom/papa/gsyvideoplayer/cache/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public static m(Lcom/danikula/videocache/file/c;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa/gsyvideoplayer/cache/c;->i:Lcom/danikula/videocache/file/c;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lcom/papa/gsyvideoplayer/cache/c;->d(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    const-string p1, "http"

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    xor-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    return p1
.end method

.method public e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/p;->c(Landroid/content/Context;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/d;->a(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/danikula/videocache/file/f;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/danikula/videocache/file/f;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/papa/gsyvideoplayer/cache/c;->i:Lcom/danikula/videocache/file/c;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    :cond_1
    invoke-interface {v0, p3}, Lcom/danikula/videocache/file/c;->generate(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string v0, ".download"

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->a(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/b;->a(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/p;->c(Landroid/content/Context;)Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/p;->c(Landroid/content/Context;)Ljava/io/File;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/b;->a(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->a(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/cache/c;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public g(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa/gsyvideoplayer/cache/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string v0, "http"

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, ".m3u8"

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const-string v1, "127.0.0.1"

    .line 23
    .line 24
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, p5}, Lcom/papa/gsyvideoplayer/cache/c;->d(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/i;

    .line 41
    .line 42
    .line 43
    move-result-object p5

    .line 44
    if-eqz p5, :cond_3

    .line 45
    .line 46
    invoke-virtual {p5, p3}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    xor-int/2addr v0, v2

    .line 55
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/cache/c;->d:Z

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p5, p0, p3}, Lcom/danikula/videocache/i;->p(Lcom/danikula/videocache/d;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    move-object p3, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p5

    .line 68
    if-nez p5, :cond_3

    .line 69
    .line 70
    const-string p5, "rtmp"

    .line 71
    .line 72
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p5

    .line 76
    if-nez p5, :cond_3

    .line 77
    .line 78
    const-string p5, "rtsp"

    .line 79
    .line 80
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    if-nez p5, :cond_3

    .line 85
    .line 86
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p5

    .line 90
    if-nez p5, :cond_3

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/cache/c;->d:Z

    .line 93
    .line 94
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-interface {p2, p1, p3, p4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public h(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/cache/c;->e:Lcom/papa/gsyvideoplayer/cache/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b$a;->h(Ljava/io/File;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public i(Lcom/papa/gsyvideoplayer/cache/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/cache/c;->e:Lcom/papa/gsyvideoplayer/cache/b$a;

    .line 2
    .line 3
    return-void
.end method

.method public k(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/i$b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/danikula/videocache/i$b;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/cache/c;->f:Lcom/papa/gsyvideoplayer/cache/d;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/i$b;->g(Ly2/b;)Lcom/danikula/videocache/i$b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/danikula/videocache/i$b;->b()Lcom/danikula/videocache/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public l(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/i;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcom/danikula/videocache/i$b;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/danikula/videocache/i$b;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/i$b;->d(Ljava/io/File;)Lcom/danikula/videocache/i$b;

    .line 16
    .line 17
    .line 18
    sget p1, Lcom/papa/gsyvideoplayer/cache/c;->g:I

    .line 19
    .line 20
    int-to-long v1, p1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/i$b;->i(J)Lcom/danikula/videocache/i$b;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/cache/c;->f:Lcom/papa/gsyvideoplayer/cache/d;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/i$b;->g(Ly2/b;)Lcom/danikula/videocache/i$b;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/papa/gsyvideoplayer/cache/c;->i:Lcom/danikula/videocache/file/c;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/i$b;->f(Lcom/danikula/videocache/file/c;)Lcom/danikula/videocache/i$b;

    .line 34
    .line 35
    .line 36
    :cond_1
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/cache/c;->c:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/danikula/videocache/i$b;->b()Lcom/danikula/videocache/i;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public n(Lcom/danikula/videocache/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/cache/c;->b:Lcom/danikula/videocache/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/danikula/videocache/i;->u(Lcom/danikula/videocache/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method
