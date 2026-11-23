.class final Lcom/kwad/components/ad/feed/widget/r$5$2;
.super Lcom/kwad/components/core/webview/jshandler/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/r$5;->a(Lcom/kwad/sdk/components/t;Lcom/kwad/sdk/core/webview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jI:Lcom/kwad/components/ad/feed/widget/r$5;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/feed/widget/r$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/jshandler/x;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/tachikoma/c/y;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/components/core/webview/jshandler/x;->a(Lcom/kwad/components/core/webview/tachikoma/c/y;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->o(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->p(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p1, Lcom/kwad/components/core/webview/tachikoma/c/y;->errorReason:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->n(Lcom/kwad/components/ad/feed/widget/r;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    sub-long/2addr v6, v8

    .line 41
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->q(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/y;->errorCode:I

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/tachikoma/c/y;->zw()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0, v1, v2, p1}, Lcom/kwad/components/core/p/a;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final b(Lcom/kwad/components/core/webview/tachikoma/c/y;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/components/core/webview/jshandler/x;->b(Lcom/kwad/components/core/webview/tachikoma/c/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/r;->i(Lcom/kwad/components/ad/feed/widget/r;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/kwad/components/core/t/a;->aO(Landroid/content/Context;)Lcom/kwad/components/core/t/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/kwad/components/core/t/a;->wD()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/r;->j(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/b/o;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    new-instance p1, Lcom/kwad/components/core/webview/tachikoma/c/n;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/kwad/components/core/webview/tachikoma/c/n;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p1, Lcom/kwad/components/core/webview/tachikoma/c/n;->aut:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->j(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/b/o;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/o;->c(Lcom/kwad/components/core/webview/tachikoma/c/n;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->k(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/l/a$b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/l/a;->a(Lcom/kwad/components/core/l/a$b;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/r;->l(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v2, 0x1

    .line 76
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/r;->m(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/r;->n(Lcom/kwad/components/ad/feed/widget/r;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    sub-long/2addr v5, v7

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final c(Lcom/kwad/components/core/webview/tachikoma/c/y;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/components/core/webview/jshandler/x;->c(Lcom/kwad/components/core/webview/tachikoma/c/y;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/components/core/l/a;->tm()Lcom/kwad/components/core/l/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$5$2;->jI:Lcom/kwad/components/ad/feed/widget/r$5;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/r$5;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->r(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/l/a$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/l/a;->c(Lcom/kwad/components/core/l/a$b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
