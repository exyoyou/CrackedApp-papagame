.class public Lcom/byazt/cj/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x2a
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final bx:Lcom/byazt/at/tt;

.field public c:Lcom/byazt/lcf/TTBaseVideoActivity;
    .annotation runtime Lcom/byazt/ls/c;
        c = "activity"
    .end annotation
.end field

.field public cu:D

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public da:Ljava/lang/String;

.field public eo:D

.field public gr:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "show_type"
    .end annotation
.end field

.field public gt:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_reward"
    .end annotation
.end field

.field public gu:Landroid/webkit/DownloadListener;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_listener"
    .end annotation
.end field

.field public h:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "action_type"
    .end annotation
.end field

.field public i:I

.field public m:Lcom/byazt/at/sp;

.field public md:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "end_card_height"
    .end annotation
.end field

.field public my:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public n:Lcom/byazt/ddx/da;

.field public nb:Z

.field public nu:Ljava/lang/ref/WeakReference;
    .annotation runtime Lcom/byazt/ls/c;
        c = "web_view"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/el/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field public or:D

.field public p:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "end_card_width"
    .end annotation
.end field

.field public pf:Landroid/os/Handler;

.field public qp:Ljava/lang/String;

.field public qy:Landroid/view/View;
    .annotation runtime Lcom/byazt/ls/c;
        c = "close_button"
    .end annotation
.end field

.field public rh:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public rl:Ljava/util/Map;
    .annotation runtime Lcom/byazt/ls/c;
        c = "extra_map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public sl:Z

.field public sp:Lcom/byazt/jwd/uj;

.field public final sv:Lcom/byazt/bd/c;

.field public t:Z

.field public tt:I

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public uj:Lcom/byazt/omf/d;

.field public ve:I

.field public x:Lcom/byazt/ddx/a;

.field public yp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public yv:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "orientation"
    .end annotation
.end field

.field public z:Lcom/byazt/at/c;

.field public zb:D

.field public zm:Lcom/byazt/mr/c;
    .annotation runtime Lcom/byazt/ls/c;
        c = "end_card_param"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/cj/i;->d:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/byazt/cj/i;->tt:I

    .line 13
    .line 14
    iput v0, p0, Lcom/byazt/cj/i;->ve:I

    .line 15
    .line 16
    iput v0, p0, Lcom/byazt/cj/i;->i:I

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/cj/i;->da:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/byazt/cj/i;->sl:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/byazt/cj/i;->t:Z

    .line 25
    .line 26
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/byazt/cj/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance v1, Lcom/byazt/cj/i$1;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/byazt/cj/i$1;-><init>(Lcom/byazt/cj/i;Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/byazt/cj/i;->pf:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/byazt/cj/i;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance v0, Lcom/byazt/cj/i$6;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/byazt/cj/i$6;-><init>(Lcom/byazt/cj/i;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/byazt/cj/i;->z:Lcom/byazt/at/c;

    .line 58
    .line 59
    new-instance v0, Lcom/byazt/cj/i$7;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/byazt/cj/i$7;-><init>(Lcom/byazt/cj/i;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/byazt/cj/i;->m:Lcom/byazt/at/sp;

    .line 65
    .line 66
    new-instance v0, Lcom/byazt/cj/i$8;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/byazt/cj/i$8;-><init>(Lcom/byazt/cj/i;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/byazt/cj/i;->bx:Lcom/byazt/at/tt;

    .line 72
    .line 73
    new-instance v0, Lcom/byazt/cj/i$9;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/byazt/cj/i$9;-><init>(Lcom/byazt/cj/i;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/byazt/cj/i;->sv:Lcom/byazt/bd/c;

    .line 79
    .line 80
    return-void
.end method

.method public static synthetic a(Lcom/byazt/cj/i;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/cj/i;->cu:D

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/cj/i;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/cj/i;->c(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string v0, "csjclientimg://"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 57
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/byazt/cj/i;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 62
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/cj/i;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(II)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    .line 20
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 21
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    iget-object p1, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cj/i;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/cj/i;->c(II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cj/i;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/cj/i;->nb:Z

    return p1
.end method

.method private gr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/byazt/cj/i$5;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/byazt/cj/i$5;-><init>(Lcom/byazt/cj/i;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView$tt;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private gt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->zm:Lcom/byazt/mr/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/byazt/cj/i$10;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/byazt/cj/i$10;-><init>(Lcom/byazt/cj/i;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/mr/c;->c(Lcom/byazt/mr/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private gu()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [F

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    aput v4, v2, v3

    .line 31
    .line 32
    iget-object v3, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 33
    .line 34
    invoke-static {v3}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    aput v3, v2, v1

    .line 40
    .line 41
    const-string v1, "translationY"

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v2, 0x3e8

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/byazt/cj/i$4;

    .line 61
    .line 62
    invoke-direct {v2, p0, v0}, Lcom/byazt/cj/i$4;-><init>(Lcom/byazt/cj/i;Lcom/byazt/el/SSWebView;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static synthetic n(Lcom/byazt/cj/i;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/cj/i;->or:D

    return-wide v0
.end method

.method private qy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 21
    .line 22
    :try_start_0
    const-string v2, "translationY"

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    new-array v3, v3, [F

    .line 26
    .line 27
    iget-object v4, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 28
    .line 29
    invoke-static {v4}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-float v4, v4

    .line 34
    const/4 v5, 0x0

    .line 35
    aput v4, v3, v5

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput v4, v3, v1

    .line 39
    .line 40
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v1, 0x3e8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/byazt/cj/i$3;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/byazt/cj/i$3;-><init>(Lcom/byazt/cj/i;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private rl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/xd;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    iget v1, p0, Lcom/byazt/cj/i;->yv:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const-string v3, "?"

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "&orientation=portrait"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "?orientation=portrait"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 80
    .line 81
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const-string v2, "&aspect_ratio="

    .line 88
    .line 89
    const-string v3, "&width="

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, "&height="

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v4, p0, Lcom/byazt/cj/i;->md:I

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v3, p0, Lcom/byazt/cj/i;->p:I

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, "?height="

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v4, p0, Lcom/byazt/cj/i;->md:I

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v3, p0, Lcom/byazt/cj/i;->p:I

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 173
    .line 174
    :goto_1
    iget-object v0, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/byazt/biq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    .line 181
    .line 182
    :cond_3
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/cj/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cj/i;->qp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/cj/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/cj/i;->nb:Z

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/cj/i;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/cj/i;->zb:D

    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/cj/i;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/cj/i;->eo:D

    return-wide v0
.end method

.method public static synthetic x(Lcom/byazt/cj/i;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 5
    iget v2, p0, Lcom/byazt/cj/i;->gr:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;F)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/byazt/cj/i;->gr:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/byazt/cj/i;->qy()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    if-eqz v0, :cond_4

    .line 10
    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;Z)V

    .line 11
    :cond_4
    invoke-virtual {p0, v3}, Lcom/byazt/cj/i;->c(Z)V

    .line 12
    invoke-virtual {p0, v3}, Lcom/byazt/cj/i;->tt(Z)V

    .line 13
    invoke-virtual {p0, v1, v3}, Lcom/byazt/cj/i;->c(ZZ)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 17
    new-instance v2, Lcom/byazt/cj/i$11;

    invoke-direct {v2, p0, v0}, Lcom/byazt/cj/i$11;-><init>(Lcom/byazt/cj/i;Lcom/byazt/el/SSWebView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public c(DDDDLjava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/cj/i;->t:Z

    if-nez v0, :cond_1

    .line 43
    iput-wide p1, p0, Lcom/byazt/cj/i;->eo:D

    .line 44
    iput-wide p3, p0, Lcom/byazt/cj/i;->zb:D

    .line 45
    iput-wide p7, p0, Lcom/byazt/cj/i;->cu:D

    .line 46
    iput-wide p5, p0, Lcom/byazt/cj/i;->or:D

    .line 47
    iput-object p9, p0, Lcom/byazt/cj/i;->qp:Ljava/lang/String;

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/byazt/cj/i;->nb:Z

    return-void

    .line 49
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    .line 50
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "y"

    .line 51
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "width"

    .line 52
    invoke-virtual {v0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 53
    invoke-virtual {v0, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "videoFrameKey"

    .line 54
    invoke-virtual {v0, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object p1, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    const-string p2, "endcardTransform"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/el/SSWebView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->tt(Z)Lcom/byazt/jwd/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V

    .line 25
    sget v0, Lcom/byazt/omf/p;->uj:I

    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/ete/ic;->n(Lcom/byazt/ete/ic;)Z

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/byazt/aas/gt;->c(Lcom/byazt/nl/uj;IZ)V

    .line 26
    invoke-static {p1}, Lcom/byazt/aas/pf;->c(Lcom/byazt/nl/uj;)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setMixedContentMode(I)V

    const/16 v2, 0x18

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/byazt/qg/BizWebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "viewStatus"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    iget-object p1, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    const-string v1, "viewableChange"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(ZILjava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->tt()V

    return-void

    .line 13
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/byazt/ddx/da;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(ZZ)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    .line 37
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "endcard_show"

    .line 38
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    iget-object p1, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")Z"
        }
    .end annotation

    .line 5
    iget p1, p0, Lcom/byazt/cj/i;->h:I

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/byazt/cj/i;->a()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/cj/i;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/cj/i;->tt()V

    .line 9
    invoke-virtual {p0}, Lcom/byazt/cj/i;->ve()V

    .line 10
    invoke-direct {p0}, Lcom/byazt/cj/i;->gt()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public da()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->onResume()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/byazt/omf/d;->h()V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/byazt/cj/i;->c(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Lcom/byazt/cj/i;->c(ZZ)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/byazt/cj/i;->c(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/byazt/cj/i;->c(ZZ)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->uj()V

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lcom/byazt/cj/i;->sp:Lcom/byazt/jwd/uj;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/byazt/jwd/uj;->tt(Z)V

    .line 70
    .line 71
    .line 72
    :cond_5
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 3
    .line 4
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->sl()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public my()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string v1, "about:blank"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/byazt/cj/i;->sl:Z

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/cj/i;->sl:Z

    return-void
.end method

.method public nu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->t()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public rh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->ve()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->uj()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public sl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->onPause()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/omf/d;->d()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/byazt/cj/i;->c(Z)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/byazt/cj/i;->c(ZZ)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/byazt/cj/i;->sp:Lcom/byazt/jwd/uj;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/jwd/uj;->ve()V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public sp()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ddx/a;->c(J)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->n()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v2, Lcom/byazt/ddx/da;

    iget-object v3, p0, Lcom/byazt/cj/i;->my:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/byazt/ddx/da;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    const/4 v3, 0x2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "webview_source"

    invoke-virtual {v2, v1, v4, v3}, Lcom/byazt/ddx/da;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/byazt/ddx/a;

    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    invoke-direct {v1, v2, v0}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/ddx/a;->tt(Z)Lcom/byazt/ddx/a;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    .line 8
    invoke-virtual {v1, v2}, Lcom/byazt/ddx/a;->c(Z)V

    .line 9
    invoke-direct {p0}, Lcom/byazt/cj/i;->rl()V

    .line 10
    iget-object v1, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    invoke-virtual {p0}, Lcom/byazt/cj/i;->uj()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "landingpage_endcard"

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/byazt/cj/i;->gt:Z

    if-eqz v2, :cond_3

    const-string v2, "reward_endcard"

    goto :goto_0

    :cond_3
    const-string v2, "fullscreen_endcard"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/byazt/cj/i$12;

    iget-object v2, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v1, p0, v2}, Lcom/byazt/cj/i$12;-><init>(Lcom/byazt/cj/i;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 12
    invoke-virtual {v1, v0}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 13
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 14
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 15
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-boolean v2, p0, Lcom/byazt/cj/i;->gt:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    .line 16
    :goto_1
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cj/i;->z:Lcom/byazt/at/c;

    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/c;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 18
    invoke-static {v2}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    .line 20
    invoke-static {v1}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(I)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/rbg/c;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->my:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->rl:Ljava/util/Map;

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Ljava/util/Map;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->m:Lcom/byazt/at/sp;

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/sp;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->qy:Landroid/view/View;

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Landroid/view/View;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cj/i;->sv:Lcom/byazt/bd/c;

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/bd/c;)Lcom/byazt/omf/d;

    .line 27
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    iget-object v1, p0, Lcom/byazt/cj/i;->bx:Lcom/byazt/at/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/tt;)Lcom/byazt/omf/d;

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/omf/cu;->c(Landroid/content/Context;Lcom/byazt/nl/uj;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/omf/cu;->c(Lcom/byazt/nl/uj;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->destroy()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/omf/d;->eo()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/da;->c(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->m()V

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->a()V

    .line 58
    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/byazt/cj/i;->d:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public uj()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public ve()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v7, Lcom/byazt/cj/i$13;

    iget-object v3, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    iget-object v1, p0, Lcom/byazt/cj/i;->rh:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/cj/i$13;-><init>(Lcom/byazt/cj/i;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V

    iput-object v7, p0, Lcom/byazt/cj/i;->sp:Lcom/byazt/jwd/uj;

    .line 5
    invoke-virtual {v0, v7}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/cj/i;->c(Lcom/byazt/el/SSWebView;)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setDisplayZoomControls(Z)V

    .line 9
    new-instance v1, Lcom/byazt/cj/i$2;

    iget-object v2, p0, Lcom/byazt/cj/i;->uj:Lcom/byazt/omf/d;

    iget-object v3, p0, Lcom/byazt/cj/i;->x:Lcom/byazt/ddx/a;

    invoke-direct {v1, p0, v2, v3}, Lcom/byazt/cj/i$2;-><init>(Lcom/byazt/cj/i;Lcom/byazt/omf/d;Lcom/byazt/ddx/a;)V

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 10
    iget-object v1, p0, Lcom/byazt/cj/i;->gu:Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public x()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cj/i;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/fcd/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/byazt/cj/i;->gu()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    const/16 v1, 0x8

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public yp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->nu:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/byazt/el/SSWebView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->onResume()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->resumeTimers()V

    .line 19
    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;F)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/byazt/cj/i;->gr()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cj/i;->n:Lcom/byazt/ddx/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
