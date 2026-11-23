.class public Lcom/byazt/hz/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x9e
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/rn/RefreshableBannerView;

.field public c:I

.field public da:Lcom/byazt/oc/uj;

.field public i:Lcom/byazt/oc/c;

.field public final m:Ljava/lang/Runnable;

.field public n:Lcom/byazt/hz/a;

.field public sl:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Landroid/os/Handler;

.field public t:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/dhf/c;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/hz/a;

.field public ve:Lcom/byazt/ll/tt;

.field public final x:Landroid/os/Handler;

.field public final yp:Landroid/view/View$OnAttachStateChangeListener;

.field public final z:Lcom/byazt/oc/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/hz/sl;->c:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/hz/sl;->sl:Ljava/lang/ref/SoftReference;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/hz/sl;->t:Ljava/lang/ref/SoftReference;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/hz/sl;->u:Ljava/lang/ref/SoftReference;

    .line 28
    .line 29
    new-instance v0, Lcom/byazt/hz/sl$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/byazt/hz/sl$1;-><init>(Lcom/byazt/hz/sl;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/hz/sl;->yp:Landroid/view/View$OnAttachStateChangeListener;

    .line 35
    .line 36
    new-instance v1, Lcom/byazt/hz/sl$2;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/byazt/hz/sl$2;-><init>(Lcom/byazt/hz/sl;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/byazt/hz/sl;->z:Lcom/byazt/oc/c;

    .line 42
    .line 43
    new-instance v1, Lcom/byazt/hz/sl$3;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/byazt/hz/sl$3;-><init>(Lcom/byazt/hz/sl;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/byazt/hz/sl;->m:Ljava/lang/Runnable;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/byazt/hz/sl;->tt:Ljava/lang/ref/SoftReference;

    .line 56
    .line 57
    new-instance v1, Lcom/byazt/hz/a;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Lcom/byazt/hz/a;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    new-instance v1, Lcom/byazt/rn/RefreshableBannerView;

    .line 67
    .line 68
    invoke-direct {v1, p1}, Lcom/byazt/rn/RefreshableBannerView;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    .line 77
    .line 78
    new-instance v0, Lcom/byazt/hz/sl$4;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/byazt/hz/sl$4;-><init>(Lcom/byazt/hz/sl;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/byazt/rn/RefreshableBannerView;->setVisibilityChangeListener(Lcom/byazt/rn/RefreshableBannerView$c;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 87
    .line 88
    invoke-static {}, Lcom/byazt/eu/n;->tt()Landroid/os/Looper;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/byazt/hz/sl;->sp:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance p1, Landroid/os/Handler;

    .line 98
    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/byazt/hz/sl;->x:Landroid/os/Handler;

    .line 107
    .line 108
    return-void
.end method

.method public static synthetic a(Lcom/byazt/hz/sl;)Lcom/byazt/hz/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/sl;->n:Lcom/byazt/hz/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hz/sl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/hz/sl;->c:I

    return p0
.end method

.method private c(Lcom/byazt/hz/a;)V
    .locals 3
    .param p1    # Lcom/byazt/hz/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Lcom/byazt/hz/sl;->u:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "dislike_dialog"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    const-string v2, "dislike_ids"

    .line 40
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/byazt/hz/a;->c(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/sl;->sl:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 43
    iget-object v1, p0, Lcom/byazt/hz/sl;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dhf/c;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/byazt/hz/a;->c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/sl;Lcom/byazt/hz/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/hz/a;)V

    return-void
.end method

.method private c(Lcom/byazt/ll/tt;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, v2}, Lcom/byazt/nbs/tt;->sl(I)I

    move-result p1

    const/16 v0, 0x2710

    const-string v1, "TMe"

    if-lt p1, v0, :cond_1

    const v0, 0x2bf20

    if-gt p1, v0, :cond_1

    .line 5
    iput p1, p0, Lcom/byazt/hz/sl;->c:I

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/byazt/hz/sl;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\u4e0b\u53d1\u4e0d\u572810*1000\uff5e180*1000\u8303\u56f4\u5185\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u7981\u6b62banner\u8f6e\u64ad"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic da(Lcom/byazt/hz/sl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/sl;->x:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/hz/sl;)Lcom/byazt/hz/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->sp:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic n(Lcom/byazt/hz/sl;)Lcom/byazt/oc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/sl;->i:Lcom/byazt/oc/c;

    return-object p0
.end method

.method private nu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->tt:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/byazt/hz/a;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/byazt/hz/a;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/byazt/hz/sl;->n:Lcom/byazt/hz/a;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/hz/sl;->z:Lcom/byazt/oc/c;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/byazt/hz/a;->c(Lcom/byazt/oc/c;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/hz/sl;->n:Lcom/byazt/hz/a;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/hz/sl;->da:Lcom/byazt/oc/uj;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/hz/a;->c(Lcom/byazt/oc/uj;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/hz/sl;->ve:Lcom/byazt/ll/tt;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ll/tt;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/byazt/ll/tt;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/hz/sl;->ve:Lcom/byazt/ll/tt;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/byazt/ll/tt;-><init>(Lcom/byazt/ll/tt;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/hz/sl;->n:Lcom/byazt/hz/a;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/oc/tt;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/hz/sl;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/sl;->tt:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/hz/sl;Lcom/byazt/hz/a;)Lcom/byazt/hz/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/hz/sl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/hz/sl;->nu()V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/hz/sl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/hz/sl;->m()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/hz/sl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/hz/sl;->z()V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/hz/sl;)Lcom/byazt/rn/RefreshableBannerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    return-object p0
.end method

.method private z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->sp:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/hz/sl;->sp:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/hz/sl;->m:Ljava/lang/Runnable;

    .line 10
    .line 11
    iget v2, p0, Lcom/byazt/hz/sl;->c:I

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/a;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Lcom/byazt/hz/a;->c(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/byazt/hz/a;->a()V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/hz/sl;->sl:Ljava/lang/ref/SoftReference;

    .line 31
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/byazt/hz/sl;->t:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public c(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dislike_dialog"

    .line 33
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dislike_ids"

    .line 34
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/byazt/hz/sl;->u:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public c(Lcom/byazt/ft/ve;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lcom/byazt/hz/a;->c(Lcom/byazt/ft/ve;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/oc/tt;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/hz/sl;->tt:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iput-object p1, p0, Lcom/byazt/hz/sl;->ve:Lcom/byazt/ll/tt;

    .line 10
    invoke-direct {p0, p1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ll/tt;)V

    .line 11
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 12
    new-instance p1, Lcom/byazt/pp/c;

    const v0, 0xcd15f

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/byazt/oc/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->gr()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 14
    new-instance p1, Lcom/byazt/pp/c;

    const v0, 0xcd160

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/byazt/oc/tt;->c(Lcom/byazt/pp/c;)V

    :cond_1
    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    iget-object v0, p0, Lcom/byazt/hz/sl;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1, v0, p2}, Lcom/byazt/hz/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/oc/tt;)V

    :cond_3
    return-void
.end method

.method public c(Lcom/byazt/oc/c;)V
    .locals 1

    .line 16
    iput-object p1, p0, Lcom/byazt/hz/sl;->i:Lcom/byazt/oc/c;

    .line 17
    iget-object p1, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/byazt/hz/sl;->z:Lcom/byazt/oc/c;

    invoke-virtual {p1, v0}, Lcom/byazt/hz/a;->c(Lcom/byazt/oc/c;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/oc/uj;)V
    .locals 1

    .line 19
    iput-object p1, p0, Lcom/byazt/hz/sl;->da:Lcom/byazt/oc/uj;

    .line 20
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Lcom/byazt/hz/a;->c(Lcom/byazt/oc/uj;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/byazt/hz/a;->tt(Lcom/byazt/ocd/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ocd/ve;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/byazt/hz/a;->c(Lcom/byazt/ocd/ve;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lcom/byazt/hz/a;->uj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public da()Lcom/byazt/pp/ve;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->z()Lcom/byazt/pp/ve;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pp/ve;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->sl()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/byazt/hz/sl;->tt:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/byazt/hz/a;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    iget-object v2, v1, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1, v2}, Lcom/byazt/hz/tt;->c(Lcom/byazt/yl/ve;)V

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/byazt/hz/sl$5;

    invoke-direct {v1, p0}, Lcom/byazt/hz/sl$5;-><init>(Lcom/byazt/hz/sl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public sl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pp/ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->t()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public sp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->nu()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public t()Lcom/byazt/pp/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/a;->f_()Lcom/byazt/pp/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/hz/a;->rl()V

    :cond_0
    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->m()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public uj()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/a;->uj()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/byazt/hz/sl;->m()V

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/sl;->a:Lcom/byazt/rn/RefreshableBannerView;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/hz/sl;->yp:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/byazt/hz/a;->ve()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/sl;->n:Lcom/byazt/hz/a;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/byazt/hz/a;->ve()V

    :cond_2
    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pp/tt;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->da()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public yp()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sl;->uj:Lcom/byazt/hz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/a;->qy()Lcom/byazt/nc/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
