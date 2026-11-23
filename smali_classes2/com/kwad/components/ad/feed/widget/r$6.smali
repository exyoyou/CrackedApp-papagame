.class final Lcom/kwad/components/ad/feed/widget/r$6;
.super Lcom/kwad/components/core/webview/tachikoma/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/r;->cU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jG:Lcom/kwad/components/ad/feed/widget/r;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/a/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/tachikoma/c/y;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->P(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->Q(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p1, Lcom/kwad/components/core/webview/tachikoma/c/y;->errorReason:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->n(Lcom/kwad/components/ad/feed/widget/r;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v8

    .line 31
    sub-long/2addr v6, v8

    .line 32
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->R(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/y;->errorCode:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/tachikoma/c/y;->zw()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0, v1, v2, p1}, Lcom/kwad/components/core/p/a;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final bV()V
    .locals 0

    return-void
.end method

.method public final bW()V
    .locals 0

    return-void
.end method

.method public final bX()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->r(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/l/a$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final bY()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->S(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/kwad/components/core/t/a;->wD()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->g(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/c/n;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/c/n;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->B(Lcom/kwad/components/ad/feed/widget/r;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput-boolean v1, v0, Lcom/kwad/components/core/webview/tachikoma/c/n;->aut:Z

    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->g(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/i;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    const-string v3, "setVideoMuteStateListener"

    .line 54
    .line 55
    invoke-virtual {v1, v3, v0, v2}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/components/m;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->k(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/l/a$b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->T(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v2, 0x1

    .line 78
    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->U(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$6;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->n(Lcom/kwad/components/ad/feed/widget/r;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v8

    .line 100
    sub-long/2addr v6, v8

    .line 101
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
