.class public Lcom/byazt/zd/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x647,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zd/c;


# direct methods
.method public constructor <init>(Lcom/byazt/zd/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBufferEnd(Lcom/byazt/fk/sp;I)V
    .locals 0

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string p2, "IVideoPlayerCallback onBufferEnd: "

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/zd/c;->qp(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/byazt/zd/c$2$7;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/byazt/zd/c$2$7;-><init>(Lcom/byazt/zd/c$2;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onBufferStart(Lcom/byazt/fk/sp;III)V
    .locals 0

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string p2, "IVideoPlayerCallback onBufferStart: "

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/byazt/rgb/ve;->uj(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/byazt/zd/c;->eo(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/byazt/zd/c$2$6;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/byazt/zd/c$2$6;-><init>(Lcom/byazt/zd/c$2;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onBufferingUpdate(Lcom/byazt/fk/sp;I)V
    .locals 0

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string p2, "IVideoPlayerCallback onBufferingUpdate: "

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCompletion(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string v0, "IVideoPlayerCallback onCompletion: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/byazt/rgb/ve;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/byazt/zd/c;->uj(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/byazt/zd/c$2$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/byazt/zd/c$2$1;-><init>(Lcom/byazt/zd/c$2;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {p1, v0}, Lcom/byazt/zd/c;->c(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/byazt/nj/c;->tt(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/rgb/ve;->ve(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "IVideoPlayerCallback video_pip_big_error onError: code:"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " msg:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "BaseVideoController"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/byazt/zd/c;->gr(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lcom/byazt/zd/c$2$4;

    .line 56
    .line 57
    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/zd/c$2$4;-><init>(Lcom/byazt/zd/c$2;Lcom/byazt/fk/ve;Lcom/byazt/fk/sp;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getCode()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 72
    .line 73
    invoke-static {v0, p1, p2}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/omf/x;->hd()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "start"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string p3, "sdk_dns_analysis_end"

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    const-string p3, "player_dns_analysis_end"

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-string p3, "tcp_connect_end"

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    const-string p3, "tcp_first_package_end"

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    const-string p3, "first_video_package_end"

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const-string p3, "first_frame_video_decode_end"

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    const-string p3, "first_frame_render_end"

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/byazt/zd/c;->lo(Lcom/byazt/zd/c;)Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/content/Context;

    .line 68
    .line 69
    iget-object p3, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 70
    .line 71
    invoke-static {p3}, Lcom/byazt/zd/c;->pu(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/byazt/zd/c;->lt(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "pangle_live_sdk_monitor"

    .line 82
    .line 83
    invoke-static {p1, p3, v0, v1, p2}, Lcom/byazt/ddx/uj;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onPause(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/zd/c;->uj(Lcom/byazt/zd/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/byazt/rgb/ve;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zd/c;->nb(Lcom/byazt/zd/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/zd/c;->pf(Lcom/byazt/zd/c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/byazt/zd/c;->uj(Lcom/byazt/zd/c;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/byazt/zd/c;->n(Lcom/byazt/zd/c;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, v1}, Lcom/byazt/rgb/ve;->tt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/zd/c;->bx(Lcom/byazt/zd/c;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    sub-long v3, p2, v3

    .line 45
    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    const-wide/16 v5, 0x32

    .line 51
    .line 52
    cmp-long v0, v3, v5

    .line 53
    .line 54
    if-gez v0, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x4

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v3, "IVideoPlayerCallback onPlayPositionUpdate: current = "

    .line 61
    .line 62
    aput-object v3, v0, v2

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    aput-object v3, v0, v2

    .line 70
    .line 71
    const-string v2, "; duration="

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    aput-object v2, v0, v1

    .line 81
    .line 82
    const-string v1, "BaseVideoController"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/zd/c;->l(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v8, Lcom/byazt/zd/c$2$8;

    .line 94
    .line 95
    move-object v1, v8

    .line 96
    move-object v2, p0

    .line 97
    move-wide v3, p2

    .line 98
    move-wide v5, p4

    .line 99
    move-object v7, p1

    .line 100
    invoke-direct/range {v1 .. v7}, Lcom/byazt/zd/c$2$8;-><init>(Lcom/byazt/zd/c$2;JJLcom/byazt/fk/sp;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onPrepared(Lcom/byazt/fk/sp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zd/c;->sl(Lcom/byazt/zd/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/byazt/rgb/ve;->ve(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v0, "BaseVideoController"

    .line 25
    .line 26
    const-string v1, "IVideoPlayerCallback onPrepared: "

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/zd/c;->t(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/byazt/fk/sp;->getCodec()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/byazt/zd/c;->u(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/byazt/ete/ic;->ve(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/byazt/zd/c;->nu(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lcom/byazt/zd/c$2$3;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/byazt/zd/c$2$3;-><init>(Lcom/byazt/zd/c$2;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onRelease(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string v0, "IVideoPlayerCallback onRelease: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {p1, v0}, Lcom/byazt/rgb/ve;->ve(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onRenderStart(Lcom/byazt/fk/sp;J)V
    .locals 1

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string v0, "IVideoPlayerCallback onRenderStart: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/zd/c;->n(Lcom/byazt/zd/c;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/zd/c;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v0}, Lcom/byazt/rgb/ve;->tt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/byazt/zd/c;->da(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lcom/byazt/zd/c$2$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/byazt/zd/c$2$2;-><init>(Lcom/byazt/zd/c$2;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p2, p3, v0}, Lcom/byazt/zd/c;->c(JZ)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide p2

    .line 57
    invoke-static {p1, p2, p3}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;J)J

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/byazt/zd/c;->l()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/byazt/zd/c;->tt(Lcom/byazt/zd/c;)Lcom/byazt/zd/c$c;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/byazt/zd/c;->tt(Lcom/byazt/zd/c;)Lcom/byazt/zd/c$c;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Lcom/byazt/zd/c$c;->ve()V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method public onResume(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/zd/c;->n(Lcom/byazt/zd/c;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSeekCompletion(Lcom/byazt/fk/sp;Z)V
    .locals 0

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string p2, "IVideoPlayerCallback onSeekCompletion: "

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/zd/c;->md(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/byazt/zd/c$2$5;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/byazt/zd/c$2$5;-><init>(Lcom/byazt/zd/c$2;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onStart(Lcom/byazt/fk/sp;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Lcom/byazt/fk/sp;II)V
    .locals 1

    .line 1
    const-string p1, "BaseVideoController"

    .line 2
    .line 3
    const-string v0, "IVideoPlayerCallback onVideoSizeChanged: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c;I)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 14
    .line 15
    invoke-static {p1, p3}, Lcom/byazt/zd/c;->tt(Lcom/byazt/zd/c;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/byazt/zd/c$2;->c:Lcom/byazt/zd/c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/byazt/zd/c;->lo()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
