.class public abstract Lcom/byazt/ac/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x14
    }
.end annotation


# instance fields
.field public a:I

.field public c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public da:Ljava/lang/String;

.field public gr:Lcom/byazt/at/sp;

.field public gt:I

.field public gu:Lcom/byazt/at/c;

.field public i:Lcom/byazt/ddx/da;

.field public m:Z

.field public my:I

.field public n:I

.field public final nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public qy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rh:Ljava/util/concurrent/atomic/AtomicInteger;

.field public rl:I

.field public sl:Lcom/byazt/jwd/uj;

.field public sp:Lcom/byazt/el/SSWebView;

.field public t:Lcom/byazt/ddx/a;

.field public tt:Lcom/byazt/ete/ic;

.field public u:I

.field public uj:Z

.field public ve:Ljava/lang/String;

.field public x:Lcom/byazt/omf/d;

.field public yp:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ac/c;->n:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/ac/c;->a:I

    .line 8
    .line 9
    iput v0, p0, Lcom/byazt/ac/c;->u:I

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lcom/byazt/ac/c;->yp:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/byazt/ac/c;->z:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/byazt/ac/c;->m:Z

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/byazt/ac/c;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/byazt/ac/c;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance v0, Lcom/byazt/ac/c$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/byazt/ac/c$1;-><init>(Lcom/byazt/ac/c;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/ac/c;->gu:Lcom/byazt/at/c;

    .line 40
    .line 41
    new-instance v0, Lcom/byazt/ac/c$2;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/byazt/ac/c$2;-><init>(Lcom/byazt/ac/c;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/ac/c;->gr:Lcom/byazt/at/sp;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->by()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/byazt/ac/c;->my:I

    .line 59
    .line 60
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->qe()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    iget-object p1, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 81
    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .line 92
    int-to-float p3, p4

    .line 93
    invoke-static {p1, p3}, Lcom/byazt/aas/pf;->c(FF)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    int-to-float p3, p3

    .line 98
    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    iput p3, p0, Lcom/byazt/ac/c;->gt:I

    .line 103
    .line 104
    int-to-float p3, p5

    .line 105
    invoke-static {p1, p3}, Lcom/byazt/aas/pf;->c(FF)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    int-to-float p1, p1

    .line 110
    invoke-static {p2, p1}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Lcom/byazt/ac/c;->rl:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    iput p4, p0, Lcom/byazt/ac/c;->gt:I

    .line 118
    .line 119
    iput p5, p0, Lcom/byazt/ac/c;->rl:I

    .line 120
    .line 121
    :goto_0
    iput-boolean p6, p0, Lcom/byazt/ac/c;->uj:Z

    .line 122
    .line 123
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ac/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/ac/c;->tt(II)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method private md()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [F

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    aput v4, v2, v3

    .line 19
    .line 20
    iget-object v3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    int-to-float v3, v3

    .line 27
    aput v3, v2, v1

    .line 28
    .line 29
    const-string v1, "translationY"

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x3e8

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/byazt/ac/c$5;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/byazt/ac/c$5;-><init>(Lcom/byazt/ac/c;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 12
    .line 13
    const-string v2, "translationY"

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [F

    .line 17
    .line 18
    iget-object v4, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 19
    .line 20
    invoke-static {v4}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    const/4 v5, 0x0

    .line 26
    aput v4, v3, v5

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput v4, v3, v1

    .line 30
    .line 31
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x3e8

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/byazt/ac/c$4;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/byazt/ac/c$4;-><init>(Lcom/byazt/ac/c;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private tt(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/byazt/fcd/x;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/ac/c;->md()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/byazt/ac/c$3;

    invoke-direct {v1, p0}, Lcom/byazt/ac/c$3;-><init>(Lcom/byazt/ac/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;F)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/byazt/ac/c;->p()V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz p1, :cond_2

    .line 35
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->my()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->c(B)V

    .line 36
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "downloadStatus"

    .line 18
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "downloadProcessRate"

    .line 19
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string p2, "showDownloadStatus"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->ve(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(JJI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 22
    div-long/2addr p1, p3

    long-to-int p2, p1

    .line 23
    invoke-virtual {p0, p5, p2}, Lcom/byazt/ac/c;->c(II)V

    :cond_0
    return-void
.end method

.method public abstract c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V
.end method

.method public c(Lcom/byazt/el/SSWebView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

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

    iget-object v2, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/ete/ic;->n(Lcom/byazt/ete/ic;)Z

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/byazt/aas/gt;->c(Lcom/byazt/nl/uj;IZ)V

    .line 26
    invoke-static {p1}, Lcom/byazt/aas/pf;->c(Lcom/byazt/nl/uj;)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setMixedContentMode(I)V

    const/16 p1, 0x18

    if-ge v0, p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/byazt/qg/BizWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->getInnerIWebView()Lcom/byazt/nl/uj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/nl/c;->c(Ljava/lang/String;Lcom/byazt/nl/uj;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/byazt/ac/c;->z:Z

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/byazt/ddx/da;->da()V

    :cond_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-nez v0, :cond_0

    const-string p1, "BaseEndCard"

    const-string v0, "mJsObject is null!"

    .line 45
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "showPlayAgainEntrance"

    .line 46
    invoke-virtual {v0, v1, p1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
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

    .line 7
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string v1, "viewableChange"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(ZILjava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->tt()V

    return-void

    .line 41
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/byazt/ddx/da;->c(ILjava/lang/String;)V

    return-void
.end method

.method public abstract c(ZLjava/util/Map;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method public c(ZZ)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "endcard_show"

    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 14
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ac/c;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract gr()Ljava/lang/String;
.end method

.method public gt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->ve()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->uj()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public gu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "about:blank"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    .line 3
    .line 4
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->onResume()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->resumeTimers()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/ac/c;->yv()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public my()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

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

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ddx/a;->c(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public nu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

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

.method public qy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/ac/c;->c(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public rh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

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

.method public rl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/omf/d;->gu()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->yp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/omf/d;->h()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lcom/byazt/ac/c;->c(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/byazt/ac/c;->c(ZZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/byazt/ac/c;->c(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2, v1}, Lcom/byazt/ac/c;->c(ZZ)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->uj()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/byazt/ac/c;->sl:Lcom/byazt/jwd/uj;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/byazt/jwd/uj;->tt(Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public tt(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "endcard_mute"

    .line 9
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/byazt/ac/c;->m:Z

    return v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/omf/d;->d()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/byazt/ac/c;->c(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ac/c;->c(ZZ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/c;->sl:Lcom/byazt/jwd/uj;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/jwd/uj;->ve()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public uj()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ac/c;->z:Z

    return v0
.end method

.method public ve(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ac/c;->qy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->rh:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/c;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->goBack()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public yp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

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

.method public yv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/byazt/ac/c$6;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/byazt/ac/c$6;-><init>(Lcom/byazt/ac/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView$tt;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/d;->eo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/da;->c(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->m()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->a()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/byazt/omf/cu;->c(Landroid/content/Context;Lcom/byazt/nl/uj;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/byazt/omf/cu;->c(Lcom/byazt/nl/uj;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->destroy()V

    .line 45
    .line 46
    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 49
    .line 50
    return-void
.end method

.method public zm()V
    .locals 0

    return-void
.end method
