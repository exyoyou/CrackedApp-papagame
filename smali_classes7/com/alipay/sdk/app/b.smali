.class public final Lcom/alipay/sdk/app/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/sdk/widget/a;

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/alipay/sdk/app/f;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/f;-><init>(Lcom/alipay/sdk/app/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->f:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 12
    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/alipay/sdk/app/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    .line 2
    .line 3
    return p1
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/alipay/sdk/widget/a;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 8
    .line 9
    const-string v2, "\u6b63\u5728\u52a0\u8f7d"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method static synthetic e(Lcom/alipay/sdk/app/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alipay/sdk/app/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/b;->f()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/alipay/sdk/app/b;->f:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/alipay/sdk/widget/a;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 8
    .line 9
    const-string v2, "\u6b63\u5728\u52a0\u8f7d"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->d:Lcom/alipay/sdk/widget/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/alipay/sdk/app/b;->f:Ljava/lang/Runnable;

    .line 24
    .line 25
    const-wide/16 v2, 0x7530

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/alipay/sdk/app/b;->e:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    const-string p1, "SSLError"

    .line 2
    .line 3
    const-string p3, "\u8bc1\u4e66\u9519\u8bef"

    .line 4
    .line 5
    const-string v0, "net"

    .line 6
    .line 7
    invoke-static {v0, p1, p3}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/alipay/sdk/app/b;->b:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 22
    .line 23
    new-instance p3, Lcom/alipay/sdk/app/c;

    .line 24
    .line 25
    invoke-direct {p3, p0, p2}, Lcom/alipay/sdk/app/c;-><init>(Lcom/alipay/sdk/app/b;Landroid/webkit/SslErrorHandler;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/util/j;->j(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
