.class final Lcom/kwad/components/core/page/d/a/g$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/d/a/g$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeK:Ljava/lang/Object;

.field final synthetic aeL:Lcom/kwad/components/core/urlReplace/c;

.field final synthetic aeM:Lcom/kwad/sdk/core/webview/a/c$a;

.field final synthetic aeN:Lcom/kwad/components/core/page/d/a/g$1;


# direct methods
.method constructor <init>(Lcom/kwad/components/core/page/d/a/g$1;Ljava/lang/Object;Lcom/kwad/components/core/urlReplace/c;Lcom/kwad/sdk/core/webview/a/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeN:Lcom/kwad/components/core/page/d/a/g$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeK:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeL:Lcom/kwad/components/core/urlReplace/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeM:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeL:Lcom/kwad/components/core/urlReplace/c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/kwad/components/core/urlReplace/c;->wB()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeM:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/kwad/sdk/core/webview/a/c$a;->PE()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeM:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/kwad/sdk/core/webview/a/c$a;->Py()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeN:Lcom/kwad/components/core/page/d/a/g$1;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeM:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/kwad/components/core/page/d/a/g;->b(Lcom/kwad/components/core/page/d/a/g;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/sdk/core/webview/a/c$a;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeN:Lcom/kwad/components/core/page/d/a/g$1;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lcom/kwad/sdk/core/adlog/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$1$1;->aeN:Lcom/kwad/components/core/page/d/a/g$1;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lcom/kwad/sdk/core/adlog/c;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "LandPageWebViewLoadPresenter"

    .line 68
    .line 69
    const-string v2, "deeplink unable"

    .line 70
    .line 71
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw v1
.end method
