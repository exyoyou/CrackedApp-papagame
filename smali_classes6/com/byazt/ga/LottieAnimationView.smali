.class public Lcom/byazt/ga/LottieAnimationView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x20b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ga/LottieAnimationView$c;,
        Lcom/byazt/ga/LottieAnimationView$tt;,
        Lcom/byazt/ga/LottieAnimationView$uj;,
        Lcom/byazt/ga/LottieAnimationView$ve;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "LottieAnimationView"

.field public static final tt:Lcom/byazt/ga/da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/ga/da<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public aw:Lorg/json/JSONArray;

.field public final bm:Ljava/lang/Runnable;

.field public bx:I

.field public cu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zk/t;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Runnable;

.field public da:Z

.field public eo:Lcom/byazt/zk/a;

.field public gr:Lcom/byazt/qm/tt;

.field public gt:Lcom/byazt/zk/ve;

.field public final gu:Lcom/byazt/qm/c;

.field public volatile h:I

.field public hd:I

.field public i:I
    .annotation build Lcom/bytedance/component/sdk/annotation/RawRes;
    .end annotation
.end field

.field public ic:I

.field public l:Lcom/byazt/ga/LottieAnimationView$c;

.field public lr:Lcom/byazt/ga/LottieAnimationView$tt;

.field public m:Lcom/byazt/ga/a;

.field public md:J

.field public my:Lcom/byazt/jzl/tt;

.field public n:Lcom/byazt/ga/da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/ga/da<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public nb:I

.field public final nu:Landroid/os/Handler;

.field public or:Lcom/byazt/zk/t;

.field public p:Landroid/os/Handler;

.field public pf:I

.field public qp:I

.field public final qy:Landroid/graphics/RectF;

.field public final rh:Landroid/os/Handler;

.field public final rl:Landroid/graphics/RectF;

.field public sl:Z

.field public final sp:Lcom/byazt/ga/x;

.field public sv:Ljava/lang/String;

.field public t:Z

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/byazt/ga/LottieAnimationView$uj;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Lcom/byazt/ga/da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/ga/da<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Lcom/byazt/ga/da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/ga/da<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/String;

.field public final yp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public yv:I

.field public z:Lcom/byazt/ga/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/ga/u<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation
.end field

.field public zb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zk/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile zm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ga/LottieAnimationView$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ga/LottieAnimationView;->tt:Lcom/byazt/ga/da;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/byazt/ga/LottieAnimationView$9;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/byazt/ga/LottieAnimationView$9;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->ve:Lcom/byazt/ga/da;

    .line 10
    .line 11
    new-instance p1, Lcom/byazt/ga/LottieAnimationView$11;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/byazt/ga/LottieAnimationView$11;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->uj:Lcom/byazt/ga/da;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/byazt/ga/LottieAnimationView;->a:I

    .line 20
    .line 21
    new-instance v0, Lcom/byazt/ga/x;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/byazt/ga/x;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/byazt/ga/LottieAnimationView;->da:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/byazt/ga/LottieAnimationView;->sl:Z

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->yp:Ljava/util/Set;

    .line 48
    .line 49
    new-instance v0, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->nu:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v0, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->rh:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v0, Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->rl:Landroid/graphics/RectF;

    .line 77
    .line 78
    new-instance v0, Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->qy:Landroid/graphics/RectF;

    .line 84
    .line 85
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$12;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/byazt/ga/LottieAnimationView$12;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->gu:Lcom/byazt/qm/c;

    .line 91
    .line 92
    iput-boolean p1, p0, Lcom/byazt/ga/LottieAnimationView;->zm:Z

    .line 93
    .line 94
    iput p1, p0, Lcom/byazt/ga/LottieAnimationView;->yv:I

    .line 95
    .line 96
    const-wide/16 v0, 0x0

    .line 97
    .line 98
    iput-wide v0, p0, Lcom/byazt/ga/LottieAnimationView;->md:J

    .line 99
    .line 100
    iput p1, p0, Lcom/byazt/ga/LottieAnimationView;->h:I

    .line 101
    .line 102
    new-instance p1, Lcom/byazt/ga/LottieAnimationView$6;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Lcom/byazt/ga/LottieAnimationView$6;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->d:Ljava/lang/Runnable;

    .line 108
    .line 109
    new-instance p1, Lcom/byazt/ga/LottieAnimationView$7;

    .line 110
    .line 111
    invoke-direct {p1, p0}, Lcom/byazt/ga/LottieAnimationView$7;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->bm:Ljava/lang/Runnable;

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->x()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->yv:I

    return p0
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ga/LottieAnimationView;->h:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->p:Landroid/os/Handler;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/byazt/ga/i;
    .locals 2

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/byazt/ga/a;->nu()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ga/i;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private c(I)Lcom/byazt/ga/u;
    .locals 2
    .param p1    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/byazt/ga/u<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/byazt/ga/u;

    new-instance v1, Lcom/byazt/ga/LottieAnimationView$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/LottieAnimationView$3;-><init>(Lcom/byazt/ga/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/byazt/ga/u;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;I)Lcom/byazt/ga/u;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;ILjava/lang/String;)Lcom/byazt/ga/u;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/zk/uj;Ljava/lang/String;)Lcom/byazt/zk/t;
    .locals 2

    .line 105
    invoke-virtual {p1}, Lcom/byazt/zk/uj;->yp()Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zk/ve;

    .line 107
    instance-of v1, v0, Lcom/byazt/zk/uj;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Lcom/byazt/zk/uj;

    invoke-direct {p0, v0, p2}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/zk/uj;Ljava/lang/String;)Lcom/byazt/zk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/byazt/zk/t;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/byazt/zk/t;

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/view/MotionEvent;)Lcom/byazt/zk/ve;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/x;->ve()Lcom/byazt/zk/uj;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 59
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/zk/uj;Landroid/view/MotionEvent;)Lcom/byazt/zk/ve;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/zk/ve;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->gt:Lcom/byazt/zk/ve;

    return-object p0
.end method

.method private c(Lcom/byazt/zk/uj;Landroid/view/MotionEvent;)Lcom/byazt/zk/ve;
    .locals 5

    .line 60
    invoke-virtual {p1}, Lcom/byazt/zk/uj;->yp()Ljava/util/List;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zk/ve;

    .line 62
    instance-of v1, v0, Lcom/byazt/zk/uj;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->da()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/byazt/zk/ve;->x()F

    move-result v1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 65
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->a()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 66
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    .line 67
    check-cast v0, Lcom/byazt/zk/uj;

    invoke-direct {p0, v0, p2}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/zk/uj;Landroid/view/MotionEvent;)Lcom/byazt/zk/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->da()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/byazt/zk/ve;->x()F

    move-result v1

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/byazt/ga/x;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->a()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 72
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v2}, Lcom/byazt/ga/x;->eo()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 73
    invoke-direct {p0, v1, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 74
    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 75
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->a()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 76
    invoke-direct {p0, v1, v2}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 77
    :cond_3
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/view/MotionEvent;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    sget-object v0, Lcom/byazt/ga/LottieAnimationView$uj;->tt:Lcom/byazt/ga/LottieAnimationView$uj;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {p2, p1}, Lcom/byazt/ga/x;->uj(F)V

    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lottie zip download failed, errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorDesc: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(J)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalConfig()Lcom/byazt/ga/a$tt;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->l:Lcom/byazt/ga/LottieAnimationView$c;

    if-eqz v1, :cond_1

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "duration"

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 19
    iget-object p1, v0, Lcom/byazt/ga/a$tt;->tt:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 20
    iget-object p1, v0, Lcom/byazt/ga/a$tt;->tt:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->l:Lcom/byazt/ga/LottieAnimationView$c;

    invoke-interface {p1, v1}, Lcom/byazt/ga/LottieAnimationView$c;->c(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    div-float v0, p4, p5

    div-float v1, p2, p3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    div-float/2addr p3, p5

    .line 92
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p3

    sub-float/2addr p4, p2

    div-float/2addr p4, v2

    neg-float p2, p4

    .line 93
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    div-float/2addr p2, p4

    .line 94
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p5, p5, p2

    sub-float/2addr p5, p3

    div-float/2addr p5, v2

    neg-float p2, p5

    .line 95
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 83
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 84
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 p2, 0x0

    cmpl-float v0, v3, p2

    if-eqz v0, :cond_5

    cmpl-float v0, v4, p2

    if-eqz v0, :cond_5

    cmpl-float v0, v5, p2

    if-eqz v0, :cond_5

    cmpl-float p2, v6, p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    sget-object v0, Lcom/byazt/ga/LottieAnimationView$8;->c:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p2

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->uj(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p2

    .line 88
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->ve(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, p2

    .line 89
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, p2

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/graphics/Matrix;FFFF)V

    .line 91
    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/ga/LottieAnimationView;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/ga/LottieAnimationView;->c(J)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/ga/a;Lcom/byazt/rs/uj;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/a;Lcom/byazt/rs/uj;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/zk/ve;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/zk/ve;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ga/LottieAnimationView;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lcom/byazt/ga/a$c;)V
    .locals 3

    .line 36
    iget-object v0, p1, Lcom/byazt/ga/a$c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const-string v2, "x"

    invoke-static {v2, v0, v1}, Lcom/byazt/kk/da;->c(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v0

    iput v0, p1, Lcom/byazt/ga/a$c;->n:F

    .line 37
    iget-object v0, p1, Lcom/byazt/ga/a$c;->tt:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const-string v2, "y"

    invoke-static {v2, v0, v1}, Lcom/byazt/kk/da;->c(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v0

    iput v0, p1, Lcom/byazt/ga/a$c;->a:F

    .line 38
    iget-object v0, p1, Lcom/byazt/ga/a$c;->ve:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/byazt/kk/da;->c(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v0

    iput v0, p1, Lcom/byazt/ga/a$c;->sp:F

    .line 39
    iget-object v0, p1, Lcom/byazt/ga/a$c;->uj:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/byazt/kk/da;->c(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v0

    iput v0, p1, Lcom/byazt/ga/a$c;->x:F

    return-void
.end method

.method private c(Lcom/byazt/ga/a;Lcom/byazt/rs/uj;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object v0

    new-instance v1, Lcom/byazt/ga/LottieAnimationView$10;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/LottieAnimationView$10;-><init>(Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/ga/a;)V

    invoke-virtual {v0, p2, v1}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V

    return-void
.end method

.method private c(Lcom/byazt/zk/ve;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "CSJCLOSE"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->rh()V

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/zk/ve;->sp()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;)Lcom/byazt/ga/i;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/byazt/ga/i;->x()[[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c([[I)V

    return-void

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalEvent()Lcom/byazt/ga/a$ve;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalEvent()Lcom/byazt/ga/a$ve;

    move-result-object p1

    iget-object p1, p1, Lcom/byazt/ga/a$ve;->tt:[[I

    if-eqz p1, :cond_3

    .line 56
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c([[I)V

    :cond_3
    return-void
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1

    .line 11
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->a:I

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setImageResource(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->n:Lcom/byazt/ga/da;

    if-nez v0, :cond_1

    sget-object v0, Lcom/byazt/ga/LottieAnimationView;->tt:Lcom/byazt/ga/da;

    .line 14
    :cond_1
    invoke-interface {v0, p1}, Lcom/byazt/ga/da;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c([[I)V
    .locals 4

    if-eqz p1, :cond_2

    .line 27
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    :try_start_0
    aget-object p1, p1, v0

    aget v0, p1, v0

    const/4 v1, 0x1

    .line 29
    aget p1, p1, v1

    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    const-string v1, "TMe"

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--==--- inel enter, play anim, startframe: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->rh()V

    .line 32
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setFrame(I)V

    .line 34
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ga/LottieAnimationView$2;-><init>(Lcom/byazt/ga/LottieAnimationView;I)V

    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;Landroid/graphics/RectF;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 80
    iget v2, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private c(Lcom/byazt/ga/i;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p1}, Lcom/byazt/ga/i;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ga/i;->i()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/byazt/ga/i;->i()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    return v0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ga/i;->x()[[I

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ga/i;->x()[[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    return v0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ga/i;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    .line 44
    :cond_3
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalEvent()Lcom/byazt/ga/a$ve;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 45
    iget-object v1, p1, Lcom/byazt/ga/a$ve;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 46
    :cond_4
    iget-object v1, p1, Lcom/byazt/ga/a$ve;->ve:Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    return v0

    .line 47
    :cond_5
    iget-object v1, p1, Lcom/byazt/ga/a$ve;->tt:[[I

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    return v0

    .line 48
    :cond_6
    iget-object p1, p1, Lcom/byazt/ga/a$ve;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic da(Lcom/byazt/ga/LottieAnimationView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getPlayDelayedELExpressTimeS()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private da()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$14;

    invoke-direct {v0, p0}, Lcom/byazt/ga/LottieAnimationView$14;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private getArea()Lcom/byazt/ga/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ga/a;->da()Lcom/byazt/ga/a$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private getGlobalConfig()Lcom/byazt/ga/a$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ga/a;->t()Lcom/byazt/ga/a$tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private getGlobalEvent()Lcom/byazt/ga/a$ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ga/a;->sl()Lcom/byazt/ga/a$ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private getPlayDelayedELExpressTimeS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ga/a;->i()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public static synthetic gr(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->pf:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic gt(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->nb:I

    return p0
.end method

.method private gt()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->sl()V

    return-void
.end method

.method public static synthetic gu(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/byazt/ga/LottieAnimationView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ga/LottieAnimationView;->md:J

    return-wide v0
.end method

.method private i()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$13;

    invoke-direct {v0, p0}, Lcom/byazt/ga/LottieAnimationView$13;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic m(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->hd:I

    return p0
.end method

.method private m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->rh:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic my(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    return p0
.end method

.method private my()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 3
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->tt(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    array-length v5, v0

    if-ne v5, v4, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 7
    iget-object v6, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/zk/a;

    if-eqz v6, :cond_0

    .line 8
    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Lcom/byazt/zk/a;->c(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->eo:Lcom/byazt/zk/a;

    if-eqz v0, :cond_3

    .line 10
    iget v5, p0, Lcom/byazt/ga/LottieAnimationView;->ic:I

    if-ne v5, v3, :cond_2

    .line 11
    iget v5, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    invoke-direct {p0, v5}, Lcom/byazt/ga/LottieAnimationView;->tt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/zk/a;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/zk/a;->c(Ljava/lang/String;)V

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 14
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->tt(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    array-length v2, v0

    if-ne v2, v4, :cond_5

    :goto_2
    if-ge v1, v4, :cond_5

    .line 18
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/zk/t;

    if-eqz v2, :cond_4

    .line 19
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/byazt/zk/t;->c(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->or:Lcom/byazt/zk/t;

    if-eqz v0, :cond_8

    .line 21
    iget v1, p0, Lcom/byazt/ga/LottieAnimationView;->ic:I

    if-ne v1, v3, :cond_7

    .line 22
    iget v1, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    invoke-direct {p0, v1}, Lcom/byazt/ga/LottieAnimationView;->tt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/zk/t;->c(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/zk/t;->c(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static synthetic n(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/a$tt;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalConfig()Lcom/byazt/ga/a$tt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->h:I

    return p0
.end method

.method private nu()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->rh()V

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->nu:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->bm:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic p(Lcom/byazt/ga/LottieAnimationView;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->aw:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->my()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private rh()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->nu:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic rh(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->rh()V

    return-void
.end method

.method public static synthetic rl(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    return v0
.end method

.method private rl()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->n()Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lcom/byazt/ga/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {p0, v1}, Lcom/byazt/ga/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->yp()V

    :cond_0
    return-void
.end method

.method private setCompositionTask(Lcom/byazt/ga/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ga/u<",
            "Lcom/byazt/ga/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->c:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->gt()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->u()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->ve:Lcom/byazt/ga/da;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/byazt/ga/u;->c(Lcom/byazt/ga/da;)Lcom/byazt/ga/u;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->uj:Lcom/byazt/ga/da;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/byazt/ga/u;->ve(Lcom/byazt/ga/da;)Lcom/byazt/ga/u;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->z:Lcom/byazt/ga/u;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic sl(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    return-object p0
.end method

.method private sl()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalConfig()Lcom/byazt/ga/a$tt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget v1, v0, Lcom/byazt/ga/a$tt;->n:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/byazt/ga/a$tt;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/byazt/ga/a$tt;->sp:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 4
    :cond_0
    iget v1, v0, Lcom/byazt/ga/a$tt;->n:I

    int-to-float v2, v1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->getMaxFrame()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->getMaxFrame()F

    move-result v1

    float-to-int v1, v1

    :cond_1
    int-to-float v1, v1

    .line 7
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->getMaxFrame()F

    move-result v2

    div-float/2addr v1, v2

    .line 8
    new-instance v2, Lcom/byazt/ga/LottieAnimationView$15;

    invoke-direct {v2, p0, v1, v0}, Lcom/byazt/ga/LottieAnimationView$15;-><init>(Lcom/byazt/ga/LottieAnimationView;FLcom/byazt/ga/a$tt;)V

    invoke-virtual {p0, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/LottieAnimationView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->l:Lcom/byazt/ga/LottieAnimationView$c;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/ga/LottieAnimationView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private t()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$16;

    invoke-direct {v0, p0}, Lcom/byazt/ga/LottieAnimationView$16;-><init>(Lcom/byazt/ga/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private tt(Ljava/lang/String;)Lcom/byazt/ga/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/ga/u<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/byazt/ga/u;

    new-instance v1, Lcom/byazt/ga/LottieAnimationView$4;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ga/LottieAnimationView$4;-><init>(Lcom/byazt/ga/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/byazt/ga/u;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/ga/sp;->tt(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/ga/u;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/byazt/ga/sp;->tt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/u;

    move-result-object p1

    return-object p1
.end method

.method private tt(Lcom/byazt/zk/uj;Ljava/lang/String;)Lcom/byazt/zk/a;
    .locals 2

    .line 26
    invoke-virtual {p1}, Lcom/byazt/zk/uj;->yp()Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zk/ve;

    .line 28
    instance-of v1, v0, Lcom/byazt/zk/uj;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/byazt/zk/uj;

    invoke-direct {p0, v0, p2}, Lcom/byazt/ga/LottieAnimationView;->tt(Lcom/byazt/zk/uj;Ljava/lang/String;)Lcom/byazt/zk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/byazt/zk/a;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/byazt/zk/a;

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private tt(I)Ljava/lang/String;
    .locals 5

    .line 32
    div-int/lit16 v0, p1, 0xe10

    .line 33
    rem-int/lit16 p1, p1, 0xe10

    .line 34
    div-int/lit8 v1, p1, 0x3c

    .line 35
    rem-int/lit8 p1, p1, 0x3c

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v4, :cond_1

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v4, :cond_2

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tt(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p4, p2

    if-gez v1, :cond_1

    cmpl-float v1, p5, p3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p4

    div-float/2addr p2, v0

    sub-float/2addr p3, p5

    div-float/2addr p3, v0

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    :goto_0
    div-float v1, p4, p5

    div-float v2, p2, p3

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    div-float/2addr p2, p4

    .line 14
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p5, p5, p2

    sub-float/2addr p3, p5

    div-float/2addr p3, v0

    .line 15
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    div-float/2addr p3, p5

    .line 16
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    div-float/2addr p2, v0

    .line 17
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private tt(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 4
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    .line 5
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    const/4 v0, 0x0

    cmpl-float v1, v3, v0

    if-eqz v1, :cond_5

    cmpl-float v1, v4, v0

    if-eqz v1, :cond_5

    cmpl-float v1, v5, v0

    if-eqz v1, :cond_5

    cmpl-float v0, v6, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$8;->c:[I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, v0

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->uj(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, v0

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->ve(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, v0

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/graphics/Matrix;FFFF)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, v0

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/graphics/Matrix;FFFF)V

    .line 12
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->yp()V

    return-void
.end method

.method private u()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->z:Lcom/byazt/ga/u;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->ve:Lcom/byazt/ga/da;

    invoke-virtual {v0, v1}, Lcom/byazt/ga/u;->tt(Lcom/byazt/ga/da;)Lcom/byazt/ga/u;

    .line 4
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->z:Lcom/byazt/ga/u;

    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->uj:Lcom/byazt/ga/da;

    invoke-virtual {v0, v1}, Lcom/byazt/ga/u;->uj(Lcom/byazt/ga/da;)Lcom/byazt/ga/u;

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/byazt/ga/LottieAnimationView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->yv:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/byazt/ga/LottieAnimationView;->yv:I

    return v0
.end method

.method private uj(Ljava/lang/String;)Lcom/byazt/zk/a;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/x;->ve()Lcom/byazt/zk/uj;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 12
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/byazt/ga/LottieAnimationView;->tt(Lcom/byazt/zk/uj;Ljava/lang/String;)Lcom/byazt/zk/a;

    move-result-object p1

    return-object p1
.end method

.method private uj(Landroid/graphics/Matrix;FFFF)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p4, p2

    if-gez v2, :cond_2

    cmpl-float v2, p5, p3

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    div-float v2, p4, p5

    div-float v3, p2, p3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    div-float/2addr p2, p4

    .line 2
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p5, p5, p2

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    .line 3
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    div-float/2addr p3, p5

    .line 4
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_2
    :goto_0
    div-float v2, p4, p5

    div-float v3, p2, p3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    div-float/2addr p2, p4

    .line 6
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p5, p5, p2

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    .line 7
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_3
    div-float/2addr p3, p5

    .line 8
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private ve(Ljava/lang/String;)Lcom/byazt/zk/t;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ga/x;->ve()Lcom/byazt/zk/uj;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/zk/uj;Ljava/lang/String;)Lcom/byazt/zk/t;

    move-result-object p1

    return-object p1
.end method

.method private ve(Landroid/graphics/Matrix;FFFF)V
    .locals 0

    sub-float/2addr p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    sub-float/2addr p3, p5

    div-float/2addr p3, p4

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->sl()V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/LottieAnimationView$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->lr:Lcom/byazt/ga/LottieAnimationView$tt;

    return-object p0
.end method

.method private x()V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setFallbackResource(I)V

    const-string v2, ""

    .line 5
    invoke-virtual {p0, v2}, Lcom/byazt/ga/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v2, v0}, Lcom/byazt/ga/LottieAnimationView;->c(FZ)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/byazt/ga/LottieAnimationView;->c(ZLandroid/content/Context;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 9
    iget-object v3, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/kk/da;->c(Landroid/content/Context;)F

    move-result v4

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/byazt/ga/x;->c(Ljava/lang/Boolean;)V

    .line 10
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->i()V

    .line 11
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->da()V

    .line 12
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->t()V

    return-void
.end method

.method private yp()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    invoke-virtual {v1}, Lcom/byazt/ga/a;->x()Lcom/byazt/ga/a$uj;

    move-result-object v7

    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    .line 5
    iget v4, v7, Lcom/byazt/ga/a$uj;->c:I

    const-string v1, "TMe"

    if-gez v4, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--==--- timer fail, ke is invalid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v2, v7, Lcom/byazt/ga/a$uj;->n:[I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eqz v2, :cond_1

    array-length v8, v2

    if-lt v8, v5, :cond_1

    .line 8
    aget v8, v2, v3

    const/4 v9, 0x1

    .line 9
    aget v2, v2, v9

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    const/4 v8, -0x1

    .line 10
    :goto_0
    iget-object v9, v7, Lcom/byazt/ga/a$uj;->ve:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/byazt/ga/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    iget-object v10, v7, Lcom/byazt/ga/a$uj;->uj:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/byazt/ga/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v9, -0x1

    .line 14
    :goto_1
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 15
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "--==--- prepare timer, startS: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", lenS: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v0, v7, Lcom/byazt/ga/a$uj;->sl:I

    if-ne v0, v5, :cond_5

    iget-object v0, v7, Lcom/byazt/ga/a$uj;->t:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    .line 19
    iget-object v0, v7, Lcom/byazt/ga/a$uj;->t:[Ljava/lang/String;

    array-length v10, v0

    :goto_3
    if-ge v3, v10, :cond_4

    aget-object v11, v0, v3

    .line 20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 21
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "--==--- timers, id:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v7, Lcom/byazt/ga/a$uj;->tt:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, v11}, Lcom/byazt/ga/LottieAnimationView;->uj(Ljava/lang/String;)Lcom/byazt/zk/a;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 23
    iget-object v13, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_2
    invoke-direct {p0, v11}, Lcom/byazt/ga/LottieAnimationView;->ve(Ljava/lang/String;)Lcom/byazt/zk/t;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 25
    iget-object v12, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--==--- timer layers size != 3, is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timer is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==--- textTimer layers size != 3, is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_5
    iget-object v0, v7, Lcom/byazt/ga/a$uj;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==--- timer, id:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/byazt/ga/a$uj;->tt:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, v7, Lcom/byazt/ga/a$uj;->tt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->uj(Ljava/lang/String;)Lcom/byazt/zk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->eo:Lcom/byazt/zk/a;

    .line 36
    iget-object v0, v7, Lcom/byazt/ga/a$uj;->tt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->ve(Ljava/lang/String;)Lcom/byazt/zk/t;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->or:Lcom/byazt/zk/t;

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->zb:Ljava/util/List;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->eo:Lcom/byazt/zk/a;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->cu:Ljava/util/List;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->or:Lcom/byazt/zk/t;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 38
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--==--- timer fail, id is invalid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/byazt/ga/a$uj;->tt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 39
    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==--- timer success, timer tp: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/byazt/ga/a$uj;->sl:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget v0, v7, Lcom/byazt/ga/a$uj;->sl:I

    iput v0, p0, Lcom/byazt/ga/LottieAnimationView;->ic:I

    .line 41
    iget-object v0, v7, Lcom/byazt/ga/a$uj;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sv:Ljava/lang/String;

    .line 42
    iget-object v0, v7, Lcom/byazt/ga/a$uj;->sp:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->aw:Lorg/json/JSONArray;

    .line 43
    iget v0, v7, Lcom/byazt/ga/a$uj;->u:I

    iput v0, p0, Lcom/byazt/ga/LottieAnimationView;->hd:I

    .line 44
    iput v9, p0, Lcom/byazt/ga/LottieAnimationView;->qp:I

    sub-int v0, v9, v6

    .line 45
    iput v0, p0, Lcom/byazt/ga/LottieAnimationView;->nb:I

    .line 46
    iput v8, p0, Lcom/byazt/ga/LottieAnimationView;->pf:I

    .line 47
    iput v2, p0, Lcom/byazt/ga/LottieAnimationView;->bx:I

    .line 48
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->my()V

    .line 49
    new-instance v0, Lcom/byazt/ga/LottieAnimationView$5;

    move-object v2, v0

    move-object v3, p0

    move v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/byazt/ga/LottieAnimationView$5;-><init>(Lcom/byazt/ga/LottieAnimationView;IIILcom/byazt/ga/a$uj;)V

    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public static synthetic yp(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->z()V

    return-void
.end method

.method public static synthetic yv(Lcom/byazt/ga/LottieAnimationView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ga/LottieAnimationView;->sv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private z()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->m()V

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->rh:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic z(Lcom/byazt/ga/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->nu()V

    return-void
.end method

.method public static synthetic zm(Lcom/byazt/ga/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ga/LottieAnimationView;->bx:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->a:Lcom/byazt/ga/LottieAnimationView$uj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->md()V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ga/x;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 5
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 111
    iget-wide v0, p0, Lcom/byazt/ga/LottieAnimationView;->md:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ga/LottieAnimationView;->md:J

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->a:Lcom/byazt/ga/LottieAnimationView$uj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->t()V

    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public c(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-static {p1, p2}, Lcom/byazt/ga/sp;->c(Ljava/io/InputStream;Ljava/lang/String;)Lcom/byazt/ga/u;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->setCompositionTask(Lcom/byazt/ga/u;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/rs/i;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 122
    invoke-interface {p2}, Lcom/byazt/rs/i;->c()V

    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/byazt/rs/c;->c()Lcom/byazt/rs/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    invoke-virtual {v1}, Lcom/byazt/ga/a;->t()Lcom/byazt/ga/a$tt;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/rs/c;->c(Lcom/byazt/ga/a$tt;Ljava/lang/String;Lcom/byazt/rs/i;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->zm:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5fc5\u987b\u5148\u8bbe\u7f6esetImageAssetDelegate\uff0c\u518dsetAnimationFromJson"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->n(I)V

    return-void
.end method

.method public c(ZLandroid/content/Context;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ga/x;->c(ZLandroid/content/Context;)V

    return-void
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->uj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getComposition()Lcom/byazt/ga/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ga/a;->n()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->gt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->m()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->z()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPerformanceTracker()Lcom/byazt/ga/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->i()Lcom/byazt/ga/rh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->d()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRenderMode()Lcom/byazt/ga/my;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->sp()Lcom/byazt/ga/my;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->qy()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->rl()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->nu()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoStats()Lcom/byazt/jzl/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->my:Lcom/byazt/jzl/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/byazt/ga/x;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/byazt/ga/x;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ga/x;->sp()Lcom/byazt/ga/my;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/byazt/ga/my;->ve:Lcom/byazt/ga/my;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/ga/x;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public n()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->gu()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->sl:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ga/x;->t()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->rh()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->m()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->p:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->uj()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->ve()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->a()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/byazt/ga/LottieAnimationView$ve;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->x:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 23
    .line 24
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->c:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->x:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->x:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;->tt:I

    .line 46
    .line 47
    iput v0, p0, Lcom/byazt/ga/LottieAnimationView;->i:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->i:I

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setAnimation(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 65
    .line 66
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->tt:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;->ve:F

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/byazt/ga/LottieAnimationView;->c(FZ)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 81
    .line 82
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->a:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    iget-boolean v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;->uj:Z

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 98
    .line 99
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->n:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    iget-object v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;->n:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 113
    .line 114
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->ve:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    iget v0, p1, Lcom/byazt/ga/LottieAnimationView$ve;->a:I

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->setRepeatMode(I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 128
    .line 129
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->uj:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 130
    .line 131
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    iget p1, p1, Lcom/byazt/ga/LottieAnimationView$ve;->sp:I

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->setRepeatCount(I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/ga/LottieAnimationView$ve;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/byazt/ga/LottieAnimationView$ve;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->x:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, p0, Lcom/byazt/ga/LottieAnimationView;->i:I

    .line 15
    .line 16
    iput v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->tt:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/ga/x;->d()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->ve:F

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/ga/x;->gr()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->uj:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/byazt/ga/x;->n()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->n:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/byazt/ga/x;->rl()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->a:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/byazt/ga/x;->qy()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, v1, Lcom/byazt/ga/LottieAnimationView$ve;->sp:I

    .line 57
    .line 58
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getArea()Lcom/byazt/ga/a$c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v3, v0, Lcom/byazt/ga/a$c;->n:F

    .line 16
    .line 17
    const/high16 v4, -0x40800000    # -1.0f

    .line 18
    .line 19
    cmpl-float v3, v3, v4

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/a$c;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget v5, v0, Lcom/byazt/ga/a$c;->n:F

    .line 35
    .line 36
    cmpg-float v6, v3, v5

    .line 37
    .line 38
    if-ltz v6, :cond_1

    .line 39
    .line 40
    iget v6, v0, Lcom/byazt/ga/a$c;->sp:F

    .line 41
    .line 42
    add-float/2addr v5, v6

    .line 43
    cmpl-float v5, v3, v5

    .line 44
    .line 45
    if-gtz v5, :cond_1

    .line 46
    .line 47
    iget v5, v0, Lcom/byazt/ga/a$c;->a:F

    .line 48
    .line 49
    cmpg-float v6, v4, v5

    .line 50
    .line 51
    if-ltz v6, :cond_1

    .line 52
    .line 53
    iget v6, v0, Lcom/byazt/ga/a$c;->x:F

    .line 54
    .line 55
    add-float/2addr v5, v6

    .line 56
    cmpl-float v5, v4, v5

    .line 57
    .line 58
    if-lez v5, :cond_2

    .line 59
    .line 60
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "--==--:width: "

    .line 63
    .line 64
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", height: "

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v1, "TMe"

    .line 91
    .line 92
    invoke-static {v1, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v5, "--==--:"

    .line 98
    .line 99
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "--==--:pintx: "

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ", pointY: "

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v1, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return v2

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/view/MotionEvent;)Lcom/byazt/zk/ve;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    instance-of v3, v0, Lcom/byazt/zk/uj;

    .line 145
    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    const-string v4, "CSJNTP"

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    return v2

    .line 164
    :cond_4
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->gt:Lcom/byazt/zk/ve;

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalConfig()Lcom/byazt/ga/a$tt;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalConfig()Lcom/byazt/ga/a$tt;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget v0, v0, Lcom/byazt/ga/a$tt;->c:I

    .line 178
    .line 179
    if-ne v0, v1, :cond_6

    .line 180
    .line 181
    return v2

    .line 182
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    return p1

    .line 187
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->gt:Lcom/byazt/zk/ve;

    .line 188
    .line 189
    if-eqz v0, :cond_d

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->sp()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;)Lcom/byazt/ga/i;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    if-eqz v5, :cond_d

    .line 200
    .line 201
    invoke-direct {p0, v5}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/i;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_d

    .line 206
    .line 207
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->gr:Lcom/byazt/qm/tt;

    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    if-eqz v0, :cond_b

    .line 211
    .line 212
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->gt:Lcom/byazt/zk/ve;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->sl()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->getGlobalEvent()Lcom/byazt/ga/a$ve;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_8

    .line 223
    .line 224
    iget-object v3, v2, Lcom/byazt/ga/a$ve;->c:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v6, v2, Lcom/byazt/ga/a$ve;->ve:Lorg/json/JSONArray;

    .line 227
    .line 228
    iget v7, v2, Lcom/byazt/ga/a$ve;->uj:I

    .line 229
    .line 230
    iget-object v2, v2, Lcom/byazt/ga/a$ve;->n:Ljava/lang/String;

    .line 231
    .line 232
    move-object v9, v2

    .line 233
    move v8, v7

    .line 234
    move-object v7, v6

    .line 235
    move-object v6, v3

    .line 236
    goto :goto_2

    .line 237
    :cond_8
    const/16 v2, 0xa

    .line 238
    .line 239
    move-object v6, v12

    .line 240
    move-object v7, v6

    .line 241
    move-object v9, v7

    .line 242
    const/16 v8, 0xa

    .line 243
    .line 244
    :goto_2
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 245
    .line 246
    if-eqz v2, :cond_9

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/byazt/ga/x;->x()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_9

    .line 253
    .line 254
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->rl:Landroid/graphics/RectF;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->a()Landroid/graphics/Matrix;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/byazt/ga/x;->eo()Landroid/graphics/RectF;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->rl:Landroid/graphics/RectF;

    .line 272
    .line 273
    invoke-direct {p0, v2, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->qy:Landroid/graphics/RectF;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/byazt/zk/ve;->a()Landroid/graphics/Matrix;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->rl:Landroid/graphics/RectF;

    .line 287
    .line 288
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->qy:Landroid/graphics/RectF;

    .line 289
    .line 290
    invoke-direct {p0, v0, v2}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 291
    .line 292
    .line 293
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->rl:Landroid/graphics/RectF;

    .line 294
    .line 295
    invoke-direct {p0, p1, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/view/MotionEvent;Landroid/graphics/RectF;)Z

    .line 296
    .line 297
    .line 298
    move-result v11

    .line 299
    iget-object v2, p0, Lcom/byazt/ga/LottieAnimationView;->gr:Lcom/byazt/qm/tt;

    .line 300
    .line 301
    iget-object v10, p0, Lcom/byazt/ga/LottieAnimationView;->gu:Lcom/byazt/qm/c;

    .line 302
    .line 303
    move-object v3, p1

    .line 304
    invoke-interface/range {v2 .. v11}, Lcom/byazt/qm/tt;->c(Landroid/view/MotionEvent;Ljava/lang/String;Lcom/byazt/ga/i;Ljava/lang/String;Lorg/json/JSONArray;ILjava/lang/String;Lcom/byazt/qm/c;Z)V

    .line 305
    .line 306
    .line 307
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eq p1, v1, :cond_c

    .line 312
    .line 313
    const/4 v0, 0x3

    .line 314
    if-eq p1, v0, :cond_c

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_c
    iput-object v12, p0, Lcom/byazt/ga/LottieAnimationView;->gt:Lcom/byazt/zk/ve;

    .line 318
    .line 319
    :goto_4
    return v1

    .line 320
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    return p1
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/byazt/ga/LottieAnimationView;->i:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->x:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->c(I)Lcom/byazt/ga/u;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->setCompositionTask(Lcom/byazt/ga/u;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->x:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ga/LottieAnimationView;->i:I

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->tt(Ljava/lang/String;)Lcom/byazt/ga/u;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->setCompositionTask(Lcom/byazt/ga/u;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->zm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/ga/u;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, p1, v1}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/u;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->setCompositionTask(Lcom/byazt/ga/u;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "\u5fc5\u987b\u5148\u8bbe\u7f6esetImageAssetDelegate\uff0c\u518dsetAnimationFromUrl"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->n(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ga/LottieAnimationView;->sl:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ga/LottieAnimationView;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setComposition(Lcom/byazt/ga/a;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/ga/n;->c:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->m:Lcom/byazt/ga/a;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->da:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/byazt/ga/x;->c(Lcom/byazt/ga/a;Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->da:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 35
    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->rl()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p0, p1}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->yp:Ljava/util/Set;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->sp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEventMonitorProxy(Lcom/byazt/qm/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->gr:Lcom/byazt/qm/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setFailureListener(Lcom/byazt/ga/da;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ga/da<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->n:Lcom/byazt/ga/da;

    .line 2
    .line 3
    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ga/LottieAnimationView;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setFontAssetDelegate(Lcom/byazt/ga/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Lcom/byazt/ga/ve;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->ve(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->sp(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageAssetDelegate(Lcom/byazt/ga/uj;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->zm:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Lcom/byazt/ga/uj;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->u()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->u()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ga/LottieAnimationView;->u()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setLottieAnimListener(Lcom/byazt/ga/LottieAnimationView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->l:Lcom/byazt/ga/LottieAnimationView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setLottieClicklistener(Lcom/byazt/ga/LottieAnimationView$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->lr:Lcom/byazt/ga/LottieAnimationView$tt;

    .line 2
    .line 3
    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->tt(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->tt(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->ve(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->tt(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->uj(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->uj(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->ve(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/ga/LottieAnimationView;->c(FZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setRenderMode(Lcom/byazt/ga/my;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Lcom/byazt/ga/my;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->uj:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->n(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->ve:Lcom/byazt/ga/LottieAnimationView$uj;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->uj(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->a(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->ve(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextDelegate(Lcom/byazt/ga/gt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Lcom/byazt/ga/gt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->x(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoStats(Lcom/byazt/jzl/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView;->my:Lcom/byazt/jzl/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setViewDelegate(Lcom/byazt/ga/rl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->c(Lcom/byazt/ga/rl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sp()V
    .locals 1
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->sl:Z

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->h()V

    return-void
.end method

.method public tt()V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->u:Ljava/util/Set;

    sget-object v1, Lcom/byazt/ga/LottieAnimationView$uj;->a:Lcom/byazt/ga/LottieAnimationView$uj;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->yp()V

    return-void
.end method

.method public tt(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->tt(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public tt(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/x;->tt(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->zm:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/byazt/ga/sp;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/ga/u;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;->setCompositionTask(Lcom/byazt/ga/u;)V

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5fc5\u987b\u5148\u8bbe\u7f6esetImageAssetDelegate\uff0c\u518dsetAnimationFromUrl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uj()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->my()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->da:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/ga/x;->gu()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/byazt/ga/LottieAnimationView;->sp()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ga/LottieAnimationView;->da:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    instance-of v0, p1, Lcom/byazt/ga/x;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/byazt/ga/x;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/ga/x;->gu()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/byazt/ga/x;->h()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public ve()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView;->sp:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->rh()V

    return-void
.end method
