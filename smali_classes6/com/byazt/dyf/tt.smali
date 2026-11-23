.class public Lcom/byazt/dyf/tt;
.super Lcom/byazt/nc/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/dyf/tt$c;,
        Lcom/byazt/dyf/tt$tt;
    }
.end annotation


# static fields
.field public static final AD_TAG_BANNER:Ljava/lang/String; = "banner_ad"

.field public static final AD_TAG_DISLIKE:Ljava/lang/String; = "dislike"

.field public static final AD_TAG_EXPRESS_BANNER:Ljava/lang/String; = "slide_banner_ad"

.field public static final AD_TAG_FEED:Ljava/lang/String; = "embeded_ad"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Landroid/content/Context;

.field public da:Lcom/byazt/dyf/tt$c;

.field public i:Lcom/byazt/dyf/tt$tt;

.field public n:Lcom/byazt/dyf/TTDislikeToast;

.field public final sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/sif/c;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Z

.field public tt:Lcom/byazt/vo/tt;

.field public uj:Lcom/byazt/dyf/ve;

.field public ve:Lcom/byazt/dyf/uj;

.field public x:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/sp;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/dyf/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/dyf/tt;->sl:Ljava/util/List;

    .line 4
    invoke-virtual {p2, p3}, Lcom/byazt/vo/tt;->tt(Ljava/lang/String;)V

    const-string p3, "other"

    .line 5
    invoke-virtual {p2, p3}, Lcom/byazt/vo/tt;->c(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "Dislike \u521d\u59cb\u5316\u5fc5\u987b\u4f7f\u7528activity,\u8bf7\u5728TTAdManager.createAdNative(activity)\u4e2d\u4f20\u5165"

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iput-object p2, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    .line 10
    iput-boolean p4, p0, Lcom/byazt/dyf/tt;->sp:Z

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 12
    invoke-direct {p0, p5}, Lcom/byazt/dyf/tt;->c(Lcom/byazt/dyf/c;)V

    return-void

    .line 13
    :cond_2
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/dyf/tt$1;

    invoke-direct {p2, p0, p5}, Lcom/byazt/dyf/tt$1;-><init>(Lcom/byazt/dyf/tt;Lcom/byazt/dyf/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/vo/tt;ZLcom/byazt/dyf/c;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/dyf/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    .line 13
    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    invoke-virtual {v0}, Lcom/byazt/dyf/ve;->show()V

    :cond_1
    return-void
.end method

.method private c(Lcom/byazt/dyf/c;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/byazt/dyf/uj;

    iget-object v1, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dyf/uj;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Lcom/byazt/dyf/c;)V

    iput-object v0, p0, Lcom/byazt/dyf/tt;->ve:Lcom/byazt/dyf/uj;

    .line 4
    new-instance p1, Lcom/byazt/dyf/tt$2;

    invoke-direct {p1, p0}, Lcom/byazt/dyf/tt$2;-><init>(Lcom/byazt/dyf/tt;)V

    invoke-virtual {v0, p1}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/sif/ve;)V

    .line 5
    new-instance p1, Lcom/byazt/dyf/ve;

    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    invoke-direct {p1, v0, v1}, Lcom/byazt/dyf/ve;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;)V

    iput-object p1, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    .line 6
    new-instance v0, Lcom/byazt/dyf/tt$3;

    invoke-direct {v0, p0}, Lcom/byazt/dyf/tt$3;-><init>(Lcom/byazt/dyf/tt;)V

    invoke-virtual {p1, v0}, Lcom/byazt/dyf/ve;->c(Lcom/byazt/sif/tt;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/byazt/dyf/tt;->sp:Z

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/byazt/dyf/TTDislikeToast;

    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/byazt/dyf/TTDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/byazt/dyf/tt;->n:Lcom/byazt/dyf/TTDislikeToast;

    .line 9
    iget-object p1, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/dyf/tt;->n:Lcom/byazt/dyf/TTDislikeToast;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dyf/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/dyf/tt;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/dyf/tt;Lcom/byazt/dyf/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/dyf/tt;->c(Lcom/byazt/dyf/c;)V

    return-void
.end method

.method public static synthetic da(Lcom/byazt/dyf/tt;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->x:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/dyf/tt;)Lcom/byazt/dyf/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->ve:Lcom/byazt/dyf/uj;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/dyf/tt;)Lcom/byazt/vo/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/dyf/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/dyf/tt;)Lcom/byazt/dyf/TTDislikeToast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->n:Lcom/byazt/dyf/TTDislikeToast;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/dyf/tt;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->sl:Ljava/util/List;

    return-object p0
.end method

.method private tt()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/vo/tt;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slide_banner_ad"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "banner_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "embeded_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/byazt/dyf/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    invoke-virtual {v1}, Lcom/byazt/vo/tt;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/byazt/dyf/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/byazt/dyf/tt;->i:Lcom/byazt/dyf/tt$tt;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Lcom/byazt/dyf/tt$tt;

    iget-object v2, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/byazt/dyf/tt$tt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/dyf/tt;->i:Lcom/byazt/dyf/tt$tt;

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/byazt/dyf/tt;->i:Lcom/byazt/dyf/tt$tt;

    new-instance v2, Lcom/byazt/dyf/tt$5;

    invoke-direct {v2, p0, v0}, Lcom/byazt/dyf/tt$5;-><init>(Lcom/byazt/dyf/tt;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/dyf/tt;)Lcom/byazt/dyf/tt$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->da:Lcom/byazt/dyf/tt$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/dyf/tt;)Lcom/byazt/dyf/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/dyf/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/dyf/tt;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addInterceptor(Lcom/byazt/sif/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->sl:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/dyf/ve;->c(Lcom/byazt/sif/c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/dyf/tt;->ve:Lcom/byazt/dyf/uj;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    or-int/2addr v1, v0

    .line 26
    :cond_2
    return v1
.end method

.method public resetData(Lcom/byazt/vo/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->ve:Lcom/byazt/dyf/uj;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/vo/tt;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/byazt/dyf/ve;->c(Lcom/byazt/vo/tt;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public resetDislikeStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/dyf/tt;->ve:Lcom/byazt/dyf/uj;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->uj:Lcom/byazt/dyf/ve;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/dyf/ve;->c()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/byazt/dyf/tt;->n:Lcom/byazt/dyf/TTDislikeToast;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/dyf/TTDislikeToast;->c()V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/byazt/dyf/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dyf/tt$4;

    invoke-direct {v0, p0, p1}, Lcom/byazt/dyf/tt$4;-><init>(Lcom/byazt/dyf/tt;Lcom/byazt/dhf/c;)V

    iput-object v0, p0, Lcom/byazt/dyf/tt;->da:Lcom/byazt/dyf/tt$c;

    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/byazt/dyf/tt$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dyf/tt;->da:Lcom/byazt/dyf/tt$c;

    return-void
.end method

.method public setDislikeSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->tt:Lcom/byazt/vo/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/vo/tt;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMonitorView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/dyf/tt;->x:Ljava/lang/ref/SoftReference;

    .line 7
    .line 8
    return-void
.end method

.method public showDislikeDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/byazt/dyf/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/byazt/dyf/tt;->sp:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/dyf/tt;->n:Lcom/byazt/dyf/TTDislikeToast;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :try_start_0
    const-string v0, "\u60a8\u5df2\u6210\u529f\u63d0\u4ea4\u53cd\u9988\uff0c\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4\u54e6\uff01"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/byazt/dyf/TTDislikeToast;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/byazt/dyf/tt;->isShow()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/dyf/tt;->ve:Lcom/byazt/dyf/uj;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/dyf/uj;->show()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method
