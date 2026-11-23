.class final Lcom/kwad/sdk/core/video/videoview/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/video/videoview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZH:Lcom/kwad/sdk/core/video/videoview/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/videoview/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/video/a/c;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/video/videoview/a;->b(Lcom/kwad/sdk/core/video/videoview/a;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/a;->d(Lcom/kwad/sdk/core/video/videoview/a;)Lcom/kwad/sdk/core/video/videoview/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/kwad/sdk/core/video/videoview/a;->c(Lcom/kwad/sdk/core/video/videoview/a;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->onPlayStateChanged(I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "KSVideoPlayerViewView"

    .line 23
    .line 24
    const-string v1, "onPrepared \u2014\u2014> STATE_PREPARED"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/a;->e(Lcom/kwad/sdk/core/video/videoview/a;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/a;->release()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/kwad/sdk/core/video/a/c;->start()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/a;->f(Lcom/kwad/sdk/core/video/videoview/a;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/a;->g(Lcom/kwad/sdk/core/video/videoview/a;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/kwad/sdk/core/video/videoview/a;->h(Lcom/kwad/sdk/core/video/videoview/a;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ai;->ab(Landroid/content/Context;Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    long-to-int v1, v0

    .line 71
    int-to-long v0, v1

    .line 72
    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/core/video/a/c;->seekTo(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/a;->i(Lcom/kwad/sdk/core/video/videoview/a;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    cmp-long v4, v0, v2

    .line 84
    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/a$1;->aZH:Lcom/kwad/sdk/core/video/videoview/a;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/kwad/sdk/core/video/videoview/a;->i(Lcom/kwad/sdk/core/video/videoview/a;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    long-to-int v1, v0

    .line 94
    int-to-long v0, v1

    .line 95
    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/core/video/a/c;->seekTo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
