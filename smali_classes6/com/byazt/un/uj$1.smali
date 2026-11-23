.class public Lcom/byazt/un/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/un/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

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
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->q(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/byazt/un/uj$1$8;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/byazt/un/uj$1$8;-><init>(Lcom/byazt/un/uj$1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onBufferStart(Lcom/byazt/fk/sp;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/byazt/rgb/ve;->uj(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/un/uj;->to(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lcom/byazt/un/uj$1$7;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/byazt/un/uj$1$7;-><init>(Lcom/byazt/un/uj$1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onBufferingUpdate(Lcom/byazt/fk/sp;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/byazt/rgb/ve;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/un/uj;->ve(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/byazt/un/uj$1$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/byazt/un/uj$1$1;-><init>(Lcom/byazt/un/uj$1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-virtual {p1, v0}, Lcom/byazt/un/uj;->c(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/byazt/nj/c;->tt(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/byazt/rgb/ve;->ve(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/un/uj;->aw(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/byazt/un/uj$1$4;

    .line 18
    .line 19
    invoke-direct {v0, p0, p2}, Lcom/byazt/un/uj$1$4;-><init>(Lcom/byazt/un/uj$1;Lcom/byazt/fk/ve;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 34
    .line 35
    invoke-static {v0, p1, p2}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
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
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/byazt/un/uj;->s(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

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
    iget-object p3, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 70
    .line 71
    invoke-static {p3}, Lcom/byazt/un/uj;->y(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/byazt/un/uj;->iu(Lcom/byazt/un/uj;)Ljava/lang/String;

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
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/un/uj;->uj(Lcom/byazt/un/uj;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

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
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->kk(Lcom/byazt/un/uj;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/un/uj;->tx(Lcom/byazt/un/uj;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Lcom/byazt/un/uj;->uj(Lcom/byazt/un/uj;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/byazt/un/uj;->n(Lcom/byazt/un/uj;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x2

    .line 35
    invoke-static {p1, v0}, Lcom/byazt/rgb/ve;->tt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/un/uj;->v(Lcom/byazt/un/uj;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    sub-long v0, p2, v0

    .line 45
    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x32

    .line 51
    .line 52
    cmp-long p1, v0, v2

    .line 53
    .line 54
    if-gez p1, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/byazt/un/uj;->r(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v6, Lcom/byazt/un/uj$1$9;

    .line 64
    .line 65
    move-object v0, v6

    .line 66
    move-object v1, p0

    .line 67
    move-wide v2, p2

    .line 68
    move-wide v4, p4

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/byazt/un/uj$1$9;-><init>(Lcom/byazt/un/uj$1;JJ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onPrepared(Lcom/byazt/fk/sp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/un/uj;->z(Lcom/byazt/un/uj;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/byazt/un/uj;->ve(Lcom/byazt/un/uj;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/un/uj;->m(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/byazt/fk/sp;->getCodec()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/un/uj;->nu(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/byazt/ete/ic;->ve(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/byazt/un/uj;->rh(Lcom/byazt/un/uj;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/byazt/un/uj;->my(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/byazt/un/uj;->u(Lcom/byazt/un/uj;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/byazt/un/uj;->gr(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lcom/byazt/un/uj$1$3;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/byazt/un/uj$1$3;-><init>(Lcom/byazt/un/uj$1;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public onRelease(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {p1, v0}, Lcom/byazt/rgb/ve;->ve(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/un/uj;->lr(Lcom/byazt/un/uj;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onRenderStart(Lcom/byazt/fk/sp;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->uj(Lcom/byazt/un/uj;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-static {p1, p2}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p2}, Lcom/byazt/rgb/ve;->tt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/byazt/un/uj;->t(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lcom/byazt/un/uj$1$2;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/byazt/un/uj$1$2;-><init>(Lcom/byazt/un/uj$1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/un/uj;->u(Lcom/byazt/un/uj;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {p1, p2, p3}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;J)J

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/byazt/un/uj;->yp(Lcom/byazt/un/uj;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onResume(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/un/uj;->n(Lcom/byazt/un/uj;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSeekCompletion(Lcom/byazt/fk/sp;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->bm(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/byazt/un/uj$1$5;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/byazt/un/uj$1$5;-><init>(Lcom/byazt/un/uj$1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStart(Lcom/byazt/fk/sp;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Lcom/byazt/fk/sp;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/un/uj;->l(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/byazt/un/uj$1$6;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2, p3}, Lcom/byazt/un/uj$1$6;-><init>(Lcom/byazt/un/uj$1;II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
