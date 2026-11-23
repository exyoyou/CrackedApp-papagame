.class public Lcom/papa/gsyvideoplayer/player/f;
.super Lcom/papa/gsyvideoplayer/player/a;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

.field private d:Landroid/view/Surface;

.field private e:Z

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/player/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    .line 12
    .line 13
    return-void
.end method

.method private l(Landroid/content/Context;)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 11
    .line 12
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long p1, v2, v4

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    move-wide v2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x400

    .line 29
    .line 30
    div-long/2addr v2, v4

    .line 31
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iget-wide v6, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    .line 36
    .line 37
    sub-long v6, v4, v6

    .line 38
    .line 39
    cmp-long p1, v6, v0

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    return-wide v6

    .line 44
    :cond_2
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    .line 45
    .line 46
    sub-long v0, v2, v0

    .line 47
    .line 48
    const-wide/16 v8, 0x3e8

    .line 49
    .line 50
    mul-long v0, v0, v8

    .line 51
    .line 52
    div-long/2addr v0, v6

    .line 53
    iput-wide v4, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    .line 56
    .line 57
    return-wide v0
.end method

.method private m(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlayable()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v1, 0x17

    .line 27
    .line 28
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/sdk/core/video/a/g;->a()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/f;->a()Landroid/media/PlaybackParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, p1}, La2/b;->a(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 41
    .line 42
    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v0}, La2/c;->a(Landroid/media/MediaPlayer;Landroid/media/PlaybackParams;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p1, " not support setSpeed"

    .line 51
    .line 52
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/player/f;->m(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(FZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/player/f;->l(Landroid/content/Context;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public f()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getCurrentPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarDen()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarNum()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public h(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/papa/gsyvideoplayer/cache/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;",
            "Lcom/papa/gsyvideoplayer/cache/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/player/f;->b:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p3, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 8
    .line 9
    invoke-direct {p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setAudioStreamType(I)V

    .line 16
    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 20
    .line 21
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, Lcom/papa/gsyvideoplayer/model/a;

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->f()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->e()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->b()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->a()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object v0, p4

    .line 48
    move-object v1, p1

    .line 49
    invoke-interface/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/cache/b;->g(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->e()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->b()Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p3, p1, p4, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->g()Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-virtual {p1, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setLooping(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->d()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/high16 p3, 0x3f800000    # 1.0f

    .line 84
    .line 85
    cmpl-float p1, p1, p3

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->d()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 p3, 0x0

    .line 94
    cmpl-float p1, p1, p3

    .line 95
    .line 96
    if-lez p1, :cond_1

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/model/a;->d()F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/player/f;->m(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/player/a;->e(Lcom/papa/gsyvideoplayer/model/a;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public i(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz p1, :cond_2

    .line 19
    .line 20
    check-cast p1, Landroid/view/Surface;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/player/f;->d:Landroid/view/Surface;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/player/f;->pause()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public j(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->pause()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/player/f;->e:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->f:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/player/f;->g:J

    .line 16
    .line 17
    return-void
.end method

.method public releaseSurface()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->d:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->d:Landroid/view/Surface;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->seekTo(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->start()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/f;->c:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/player/f;->h:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method
