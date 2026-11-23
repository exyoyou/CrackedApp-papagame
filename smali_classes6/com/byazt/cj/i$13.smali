.class public Lcom/byazt/cj/i$13;
.super Lcom/byazt/jwd/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x9a1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cj/i;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cj/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cj/i;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/jwd/uj;-><init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->sp()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/jwd/uj;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/jwd/uj;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iget-object v0, v0, Lcom/byazt/cj/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iput p2, v0, Lcom/byazt/cj/i;->i:I

    .line 3
    iput-object p3, v0, Lcom/byazt/cj/i;->da:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "code"

    .line 7
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 8
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iget-object v1, v1, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    invoke-virtual {v1, v0}, Lcom/byazt/ddx/da;->tt(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/jwd/uj;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iget-object v0, v0, Lcom/byazt/cj/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iget-object v0, v0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    if-eqz v0, :cond_2

    .line 14
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "code"

    .line 16
    invoke-static {p3}, Lm0/a;->a(Landroid/webkit/WebResourceError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 17
    invoke-static {p3}, Lm0/b;->a(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iget-object v1, v1, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    invoke-virtual {v1, v0}, Lcom/byazt/ddx/da;->tt(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    invoke-static {p3}, Lm0/a;->a(Landroid/webkit/WebResourceError;)I

    move-result v1

    iput v1, v0, Lcom/byazt/cj/i;->i:I

    .line 20
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    invoke-static {p3}, Lm0/b;->a(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/cj/i;->da:Ljava/lang/String;

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/jwd/uj;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "code"

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v1, "msg"

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/byazt/ddx/da;->tt(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    nop

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/byazt/cj/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    if-eqz p3, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, v0, Lcom/byazt/cj/i;->i:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    .line 82
    .line 83
    const-string v1, "onReceivedHttpError"

    .line 84
    .line 85
    iput-object v1, v0, Lcom/byazt/cj/i;->da:Ljava/lang/String;

    .line 86
    .line 87
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/jwd/uj;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 3
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    invoke-static {v1}, Lcom/byazt/cj/i;->x(Lcom/byazt/cj/i;)Lcom/byazt/ete/ic;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-super {p0, p1, v0}, Lcom/byazt/jwd/uj;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    invoke-static {v1, v0}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    invoke-static {v1}, Lcom/byazt/cj/i;->x(Lcom/byazt/cj/i;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ve()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-super {p0, p1, v0}, Lcom/byazt/jwd/uj;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    iget v2, v1, Lcom/byazt/cj/i;->tt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/byazt/cj/i;->tt:I

    .line 11
    invoke-super {p0, p1, v0}, Lcom/byazt/jwd/uj;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 12
    :catchall_0
    invoke-super {p0, p1, p2}, Lcom/byazt/jwd/uj;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i$13;->c:Lcom/byazt/cj/i;

    invoke-static {v0, p2}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/jwd/uj;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
