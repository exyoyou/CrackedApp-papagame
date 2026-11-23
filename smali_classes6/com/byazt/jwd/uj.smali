.class public Lcom/byazt/jwd/uj;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/el/SSWebView$ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x301,
        0xf
    }
.end annotation


# static fields
.field public static final sl:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public c:Lcom/byazt/tjs/uj;

.field public da:Z

.field public i:J

.field public n:Lcom/byazt/ddx/a;

.field public sp:Z

.field public final tt:Lcom/byazt/omf/d;

.field public final uj:Ljava/lang/String;

.field public final ve:Landroid/content/Context;

.field public volatile x:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/jwd/uj;->sl:Ljava/util/HashSet;

    .line 7
    .line 8
    const-string v1, "png"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, "ico"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "jpg"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v1, "gif"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v1, "svg"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v1, "jpeg"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->sp:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/jwd/uj;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/byazt/jwd/uj;->i:J

    .line 6
    iput-boolean v1, p0, Lcom/byazt/jwd/uj;->da:Z

    .line 7
    iput-object p1, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 9
    iput-object p3, p0, Lcom/byazt/jwd/uj;->uj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->a:Z

    .line 12
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->sp:Z

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/jwd/uj;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    .line 14
    iput-wide v2, p0, Lcom/byazt/jwd/uj;->i:J

    .line 15
    iput-boolean v1, p0, Lcom/byazt/jwd/uj;->da:Z

    .line 16
    iput-object p1, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 18
    iput-object p3, p0, Lcom/byazt/jwd/uj;->uj:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;Lcom/byazt/tjs/uj;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->sp:Z

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/jwd/uj;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    .line 24
    iput-wide v2, p0, Lcom/byazt/jwd/uj;->i:J

    .line 25
    iput-boolean v1, p0, Lcom/byazt/jwd/uj;->da:Z

    .line 26
    iput-object p1, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 28
    iput-object p3, p0, Lcom/byazt/jwd/uj;->uj:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 30
    iput-object p5, p0, Lcom/byazt/jwd/uj;->c:Lcom/byazt/tjs/uj;

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/byazt/jwd/uj$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/byazt/jwd/uj$1;-><init>(Lcom/byazt/jwd/uj;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    sget-object p3, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string p4, "internal"

    .line 15
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    .line 16
    invoke-static {p1, p2, v0, p3}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;Z)Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "weixin://wap/pay"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "weixin://dl/business/?ticket"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "alipays://platformapi/startapp?appId"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    invoke-virtual {p1}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    move-result-object p1

    const-string v0, "landingpage"

    const-string v1, "lp_pay"

    invoke-static {p1, v0, v1}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/byazt/nr/sp;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    return v2
.end method

.method private static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object v1, Lcom/byazt/jwd/uj;->sl:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public c(Landroid/view/MotionEvent;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rit"

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-static {p1}, Lcom/byazt/aas/gr;->c(Landroid/view/MotionEvent;)V

    if-nez v1, :cond_0

    .line 26
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object p1

    .line 27
    new-instance v1, Lcom/byazt/jwd/uj$2;

    invoke-direct {v1, p0, v0}, Lcom/byazt/jwd/uj$2;-><init>(Lcom/byazt/jwd/uj;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->ve(Z)V

    :cond_0
    return-void
.end method

.method public c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    .line 7
    iget-object v1, p0, Lcom/byazt/jwd/uj;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/byazt/jwd/uj;->tt()Z

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/byazt/ete/cu;->c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/byazt/omf/d;Landroid/webkit/WebResourceRequest;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Lcom/byazt/ouz/sp;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 8
    iget-object v1, p0, Lcom/byazt/jwd/uj;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/byazt/jwd/uj;->tt()Z

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/byazt/ete/cu;->c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/byazt/omf/d;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Lcom/byazt/ouz/sp;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/ddx/a;->c(Landroid/webkit/WebView;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/jwd/uj;->a:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->kp()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/jwd/uj;->uj:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/byazt/jwd/tt;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/byazt/nr/yp;->c(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/ddx/a;->c(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean p2, p0, Lcom/byazt/jwd/uj;->sp:Z

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 p3, 0x1

    .line 22
    invoke-virtual {p2, p3}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/byazt/jwd/tt;->c(Landroid/webkit/WebView;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p4}, Lcom/byazt/jwd/uj;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/byazt/ddx/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 6
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 8
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v1, "Accept"

    .line 9
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "accept"

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 13
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    invoke-static {p3}, Lm0/a;->a(Landroid/webkit/WebResourceError;)I

    move-result v1

    invoke-static {p3}, Lm0/b;->a(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/byazt/ddx/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-eqz p3, :cond_3

    .line 9
    .line 10
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "Accept"

    .line 29
    .line 30
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    move-object v0, p2

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v1, "accept"

    .line 45
    .line 46
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object v0, p2

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/byazt/ddx/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    nop

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    const-string p2, "SslError: unknown"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "SslError: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    move-object v0, p3

    .line 45
    :catchall_1
    :cond_1
    iget-object p3, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/jwd/uj;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/byazt/ddx/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-static {p2}, Lo0/a;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x1

    .line 17
    const-string v1, "WebChromeClient"

    .line 18
    .line 19
    if-nez p2, :cond_3

    .line 20
    .line 21
    const-string p2, "System killed the WebView rendering process to reclaim memory. Recreating..."

    .line 22
    .line 23
    invoke-static {v1, p2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/byazt/ol/n;->tt()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return v0

    .line 50
    :cond_3
    const-string p2, "The WebView rendering process crashed!"

    .line 51
    .line 52
    invoke-static {v1, p2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/byazt/ol/n;->tt()V

    .line 76
    .line 77
    .line 78
    :cond_5
    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byazt/jwd/uj;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/byazt/jwd/uj;->c:Lcom/byazt/tjs/uj;

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/byazt/tjs/tt;

    invoke-direct {v2, p2, v0}, Lcom/byazt/tjs/tt;-><init>(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/byazt/jwd/uj;->c:Lcom/byazt/tjs/uj;

    invoke-virtual {v3, p1, v2, v1}, Lcom/byazt/tjs/uj;->c(Landroid/webkit/WebView;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/jwd/uj;->c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, ""

    invoke-direct {p1, p2, p2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Lcom/byazt/aas/aw;->c()Lcom/byazt/aas/aw;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/byazt/aas/aw;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    invoke-static {}, Lcom/byazt/aas/aw;->c()Lcom/byazt/aas/aw;

    move-result-object v2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/byazt/ddx/a;->x()Ljava/util/Map;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v1, p2, p1, v0}, Lcom/byazt/aas/aw;->c(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byazt/jwd/uj;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/byazt/jwd/uj;->c:Lcom/byazt/tjs/uj;

    if-eqz v2, :cond_1

    .line 14
    new-instance v2, Lcom/byazt/tjs/tt;

    invoke-direct {v2, v0, p2}, Lcom/byazt/tjs/tt;-><init>(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/byazt/jwd/uj;->c:Lcom/byazt/tjs/uj;

    invoke-virtual {v3, p1, v2, v1}, Lcom/byazt/tjs/uj;->c(Landroid/webkit/WebView;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/jwd/uj;->c(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, ""

    invoke-direct {p1, p2, p2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 18
    :cond_2
    invoke-static {}, Lcom/byazt/aas/aw;->c()Lcom/byazt/aas/aw;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/aas/aw;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    invoke-static {}, Lcom/byazt/aas/aw;->c()Lcom/byazt/aas/aw;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/jwd/uj;->n:Lcom/byazt/ddx/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/byazt/ddx/a;->x()Ljava/util/Map;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v1, p2, p1, v0}, Lcom/byazt/aas/aw;->c(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcom/byazt/jwd/uj;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/jwd/uj;->c(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/byazt/jwd/uj;->c:Lcom/byazt/tjs/uj;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Lcom/byazt/tjs/uj;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "bytedance"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/byazt/aas/gt;->c(Landroid/net/Uri;Lcom/byazt/omf/d;)V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/16 v6, 0xf

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-class v6, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Lcom/byazt/aas/zb;

    .line 81
    .line 82
    invoke-direct {v6}, Lcom/byazt/aas/zb;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v7, "uri"

    .line 86
    .line 87
    invoke-virtual {v6, v7, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v4, v6}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v3, v5}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    iget-object v3, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 112
    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    iget-object v3, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v5, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v6, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/byazt/omf/d;->md()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-static {v1, v3, v5, v6, v7}, Lcom/byazt/qt/ve;->c(Landroid/net/Uri;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;I)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const/4 v3, 0x0

    .line 145
    :goto_0
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const-string v6, "is_landing_page_open_market"

    .line 150
    .line 151
    invoke-interface {v5, v6, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    if-eqz v3, :cond_4

    .line 155
    .line 156
    return v0

    .line 157
    :cond_4
    invoke-static {p2}, Lcom/byazt/nr/rh;->c(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_a

    .line 162
    .line 163
    iget-object v3, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 164
    .line 165
    if-eqz v3, :cond_a

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    iget-object v3, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/byazt/omf/d;->md()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-object v5, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    new-instance v6, Landroid/content/Intent;

    .line 186
    .line 187
    const-string v7, "android.intent.action.VIEW"

    .line 188
    .line 189
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    const/high16 v1, 0x10000000

    .line 196
    .line 197
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    new-instance v1, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v7, "source"

    .line 206
    .line 207
    const-string v8, "TTWebViewClient"

    .line 208
    .line 209
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v7, "scheme"

    .line 213
    .line 214
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    invoke-static {v5, v3, v1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_6

    .line 225
    .line 226
    invoke-static {v6}, Lcom/byazt/aas/nb;->c(Landroid/content/Intent;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    iget-object v1, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 233
    .line 234
    invoke-direct {p0, v1, v6, v5, v3}, Lcom/byazt/jwd/uj;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 239
    .line 240
    const-string v2, "query is true,install is false"

    .line 241
    .line 242
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v5, v3, v1, v0, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v6, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    if-eqz v1, :cond_7

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-nez v1, :cond_9

    .line 276
    .line 277
    :cond_7
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    and-int/lit16 v1, v1, 0xc3

    .line 282
    .line 283
    if-nez v1, :cond_8

    .line 284
    .line 285
    iget-object v1, p0, Lcom/byazt/jwd/uj;->ve:Landroid/content/Context;

    .line 286
    .line 287
    invoke-direct {p0, v1, v6, v5, v3}, Lcom/byazt/jwd/uj;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 292
    .line 293
    const-string v2, "webview client intent flag error"

    .line 294
    .line 295
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v5, v3, v1, v0, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :catchall_0
    move-exception v1

    .line 303
    :try_start_2
    invoke-static {v5, v3, v1, v0, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 304
    .line 305
    .line 306
    :cond_9
    :goto_1
    return v0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    const-string v2, "WebChromeClient"

    .line 309
    .line 310
    const-string v3, "shouldOverrideUrlLoading"

    .line 311
    .line 312
    invoke-static {v2, v3, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const-string v3, "wb_loading"

    .line 320
    .line 321
    invoke-virtual {v2, v3, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, Lcom/byazt/jwd/uj;->tt:Lcom/byazt/omf/d;

    .line 325
    .line 326
    if-eqz v1, :cond_a

    .line 327
    .line 328
    invoke-virtual {v1}, Lcom/byazt/omf/d;->i()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_a

    .line 333
    .line 334
    return v0

    .line 335
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    return p1
.end method

.method public tt(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    iget-boolean p1, p0, Lcom/byazt/jwd/uj;->da:Z

    if-eqz p1, :cond_1

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/jwd/uj;->i:J

    :cond_1
    return-void
.end method

.method public tt()Z
    .locals 5

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/jwd/uj;->i:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->xr()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/jwd/uj;->da:Z

    .line 3
    .line 4
    return-void
.end method
