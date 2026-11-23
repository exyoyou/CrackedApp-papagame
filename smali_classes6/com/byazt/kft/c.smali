.class public Lcom/byazt/kft/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kft/c$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/jr/tt;

.field public final bx:Ljava/lang/Runnable;

.field public final c:Ljava/lang/String;

.field public cu:I

.field public d:J

.field public da:Lcom/byazt/ga/LottieAnimationView;

.field public eo:F

.field public gr:Z

.field public gt:Z

.field public gu:Z

.field public h:I

.field public i:Ljava/lang/String;

.field public final m:Lcom/byazt/fk/sp;

.field public volatile md:I

.field public final my:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/byazt/fk/sp$c;",
            ">;"
        }
    .end annotation
.end field

.field public final n:I

.field public nb:Lcom/byazt/kft/c$c;

.field public nu:Z

.field public or:I

.field public p:Z

.field public final pf:Landroid/os/Handler;

.field public qp:J

.field public qy:Z

.field public rh:Lcom/byazt/fk/sp$c;

.field public rl:Z

.field public sl:Landroid/graphics/Bitmap;

.field public final sp:Landroid/content/Context;

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/lang/String;

.field public final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:I

.field public final ve:J

.field public final x:Lcom/byazt/jzl/tt;

.field public final yp:Ljava/lang/String;

.field public yv:Z

.field public final z:Lorg/json/JSONObject;

.field public zb:Z

.field public zm:Z


# direct methods
.method public constructor <init>(Lcom/byazt/jr/tt;Lcom/byazt/cph/c;Lcom/byazt/fk/sp;Lcom/byazt/jzl/a;Lcom/byazt/jzl/tt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/kft/c;->c:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/kft/c;->t:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/kft/c;->u:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/kft/c;->my:Ljava/util/Set;

    .line 28
    .line 29
    const/16 v0, 0xc8

    .line 30
    .line 31
    iput v0, p0, Lcom/byazt/kft/c;->md:I

    .line 32
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    iput v0, p0, Lcom/byazt/kft/c;->eo:F

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/byazt/kft/c;->or:I

    .line 39
    .line 40
    iput v0, p0, Lcom/byazt/kft/c;->cu:I

    .line 41
    .line 42
    new-instance v0, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/kft/c;->pf:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v0, Lcom/byazt/kft/c$5;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/byazt/kft/c$5;-><init>(Lcom/byazt/kft/c;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/byazt/kft/c;->bx:Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/byazt/jr/tt;->getView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/byazt/kft/c;->sp:Landroid/content/Context;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/byazt/kft/c;->a:Lcom/byazt/jr/tt;

    .line 71
    .line 72
    iput-object p5, p0, Lcom/byazt/kft/c;->x:Lcom/byazt/jzl/tt;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    iput-wide v0, p0, Lcom/byazt/kft/c;->qp:J

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/byazt/cph/c;->a()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iput-wide v0, p0, Lcom/byazt/kft/c;->ve:J

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/byazt/cph/c;->uj()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lcom/byazt/kft/c;->uj:I

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/byazt/cph/c;->n()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/byazt/kft/c;->n:I

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/byazt/cph/c;->ve()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/byazt/kft/c;->yp:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/byazt/cph/c;->c()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p5

    .line 108
    iput-object p5, p0, Lcom/byazt/kft/c;->tt:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/byazt/cph/c;->tt()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2}, Lcom/byazt/cph/c;->sp()Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iput-object p2, p0, Lcom/byazt/kft/c;->z:Lorg/json/JSONObject;

    .line 119
    .line 120
    invoke-direct {p0, p5}, Lcom/byazt/kft/c;->c(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->tt(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-object p3, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 127
    .line 128
    invoke-direct {p0, v0, p4}, Lcom/byazt/kft/c;->c(Ljava/lang/String;Lcom/byazt/jzl/a;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static synthetic a(Lcom/byazt/kft/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->sl:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/c;->pf:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/kft/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/kft/c;->gu:Z

    return p1
.end method

.method public static synthetic aw(Lcom/byazt/kft/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->pf:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic bx(Lcom/byazt/kft/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->md:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/kft/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->n:I

    return p0
.end method

.method public static synthetic c(Lcom/byazt/kft/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/kft/c;->qp:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/kft/c;->sl:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/LottieAnimationView;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/kft/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/byazt/kft/c;->a:Lcom/byazt/jr/tt;

    invoke-interface {v0}, Lcom/byazt/jr/tt;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    iget-object v1, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    new-instance v1, Lcom/byazt/kft/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/byazt/kft/c$c;-><init>(Lcom/byazt/kft/c;Landroid/view/ViewGroup;Lcom/byazt/kft/c$1;)V

    iput-object v1, p0, Lcom/byazt/kft/c;->nb:Lcom/byazt/kft/c$c;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/kft/c;->nb:Lcom/byazt/kft/c$c;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    new-instance v1, Lcom/byazt/kft/c$1;

    invoke-direct {v1, p0, v0}, Lcom/byazt/kft/c$1;-><init>(Lcom/byazt/kft/c;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 30
    new-instance v0, Lcom/byazt/kft/c$16;

    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/c$16;-><init>(Lcom/byazt/kft/c;I)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(J)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/kft/c;->seekTo(J)V

    .line 41
    iget-object p1, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Lcom/byazt/fk/sp;->play()V

    :cond_1
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/byazt/kft/c;->rl:Z

    .line 44
    invoke-direct {p0}, Lcom/byazt/kft/c;->n()V

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 27
    :cond_1
    iget-object p3, p0, Lcom/byazt/kft/c;->t:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance p1, Lcom/byazt/kft/c$13;

    invoke-direct {p1, p0}, Lcom/byazt/kft/c$13;-><init>(Lcom/byazt/kft/c;)V

    invoke-static {p1}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/jzl/ve;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/byazt/kft/c$14;

    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/c$14;-><init>(Lcom/byazt/kft/c;Lcom/byazt/jzl/ve;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/c;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/kft/c;->c(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Lcom/byazt/jzl/ve;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/jzl/ve;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kft/c;->c(Ljava/lang/String;II)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance p1, Lcom/byazt/jzl/ve;

    const/16 v0, 0x2710

    const-string v1, "lottieJsonUrl\u4e3a\u7a7a"

    const v2, 0xea68

    invoke-direct {p1, v2, v0, v1}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/jzl/ve;)V

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/byazt/kft/c$10;

    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/c$10;-><init>(Lcom/byazt/kft/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;II)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/byazt/kft/c;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c;->u:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    new-instance v1, Lcom/byazt/kft/c$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/kft/c$12;-><init>(Lcom/byazt/kft/c;Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Lcom/byazt/rs/i;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/jzl/a;)V
    .locals 2

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Lcom/byazt/jzl/ve;

    const/16 p2, 0x2714

    const-string v0, "lottie\u97f3\u9891url\u4e3a\u7a7a"

    const v1, 0xea68

    invoke-direct {p1, v1, p2, v0}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/jzl/ve;)V

    return-void

    .line 35
    :cond_0
    new-instance p1, Lcom/byazt/kft/c$4;

    invoke-direct {p1, p0}, Lcom/byazt/kft/c$4;-><init>(Lcom/byazt/kft/c;)V

    iput-object p1, p0, Lcom/byazt/kft/c;->rh:Lcom/byazt/fk/sp$c;

    .line 36
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V

    .line 37
    iget-object p1, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    invoke-interface {p1, p2}, Lcom/byazt/fk/sp;->setDataSource(Lcom/byazt/fk/u;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 31
    new-instance v0, Lcom/byazt/kft/c$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/c$3;-><init>(Lcom/byazt/kft/c;Z)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/c;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/byazt/kft/c;->qy:Z

    return p1
.end method

.method public static synthetic cu(Lcom/byazt/kft/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic da(Lcom/byazt/kft/c;)Lcom/byazt/jzl/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->x:Lcom/byazt/jzl/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic eo(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->sp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic gr(Lcom/byazt/kft/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->cu:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic gt(Lcom/byazt/kft/c;)Lcom/byazt/fk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/kft/c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/kft/c;->cu:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/kft/c;->cu:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic h(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/byazt/kft/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->sp:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ic(Lcom/byazt/kft/c;)Lcom/byazt/jr/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->a:Lcom/byazt/jr/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic md(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->yv:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic my(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->zb:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/byazt/kft/c;)Lcom/byazt/kft/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->nb:Lcom/byazt/kft/c$c;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/c;->pf:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/kft/c;->pf:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/kft/c;->bx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic n(Lcom/byazt/kft/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/kft/c;->rl:Z

    return p1
.end method

.method public static synthetic nb(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic nu(Lcom/byazt/kft/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kft/c;->qp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic or(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->uj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/byazt/kft/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->u:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic pf(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic qp(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic qy(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic rh(Lcom/byazt/kft/c;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->my:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/kft/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kft/c;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic sl(Lcom/byazt/kft/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->eo:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/kft/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method private sp()V
    .locals 3

    const-string v0, "--==--play"

    const-string v1, "TTLottieFakeVideoPlayer"

    .line 2
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/byazt/kft/c;->qy:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--==--play --- enter"

    .line 4
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/byazt/kft/c;->h:I

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->tt()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 8
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "--==--audio play --- enter"

    .line 9
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/byazt/kft/c;->h:I

    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->play()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/byazt/fk/sp;->seekTo(J)V

    .line 13
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->play()V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/byazt/kft/c;->rl:Z

    .line 15
    invoke-direct {p0}, Lcom/byazt/kft/c;->n()V

    return-void
.end method

.method public static synthetic sv(Lcom/byazt/kft/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->bx:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/kft/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->z:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/kft/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->uj:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/kft/c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/kft/c;->h:I

    return p1
.end method

.method private tt()V
    .locals 1

    .line 6
    new-instance v0, Lcom/byazt/kft/c$9;

    invoke-direct {v0, p0}, Lcom/byazt/kft/c$9;-><init>(Lcom/byazt/kft/c;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/kft/c;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/kft/c;->c(J)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/kft/c;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method private tt(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/byazt/jzl/ve;

    const/16 v0, 0x2712

    const-string v1, "\u5e7f\u544a\u4e3b\u56feurl\u4e3a\u7a7a"

    const v2, 0xea68

    invoke-direct {p1, v2, v0, v1}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/jzl/ve;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/cph/tt;->c()Lcom/byazt/cph/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/kft/c$11;

    invoke-direct {v1, p0, p1}, Lcom/byazt/kft/c$11;-><init>(Lcom/byazt/kft/c;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/cph/tt;->tt(Ljava/lang/String;Lcom/byazt/cph/tt$c;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/kft/c;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/kft/c;->yv:Z

    return p1
.end method

.method public static synthetic u(Lcom/byazt/kft/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->yp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private uj()V
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/kft/c$2;

    invoke-direct {v0, p0}, Lcom/byazt/kft/c$2;-><init>(Lcom/byazt/kft/c;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->gt:Z

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/kft/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/kft/c;->nu:Z

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    return-object p0
.end method

.method private ve()V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/kft/c$15;

    invoke-direct {v0, p0}, Lcom/byazt/kft/c$15;-><init>(Lcom/byazt/kft/c;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/kft/c;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/kft/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/kft/c;->p:Z

    return p1
.end method

.method private x()V
    .locals 3

    const-string v0, "--==--pause"

    const-string v1, "TTLottieFakeVideoPlayer"

    .line 2
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/byazt/kft/c;->qy:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "--==--pause --- enter"

    .line 4
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->sp()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "--==--audio pause --- enter"

    .line 7
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/kft/c;->rl:Z

    .line 10
    invoke-direct {p0}, Lcom/byazt/kft/c;->a()V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/kft/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/c;->nu:Z

    return p0
.end method

.method public static synthetic yp(Lcom/byazt/kft/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->t:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yv(Lcom/byazt/kft/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/c;->or:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z(Lcom/byazt/kft/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zb(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->ve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zm(Lcom/byazt/kft/c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/kft/c;->or:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/kft/c;->or:I

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method public addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c;->my:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferCount()I
    .locals 2

    .line 1
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--getBufferCount: 1"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--getCurrentPosition: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/kft/c;->h:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/byazt/kft/c;->h:I

    .line 23
    .line 24
    int-to-long v0, v0

    .line 25
    return-wide v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalBufferTime()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 2
    .line 3
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "--==--getTotalBufferTime: "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lcom/byazt/kft/c;->qp:J

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/byazt/kft/c;->qp:J

    .line 27
    .line 28
    return-wide v0

    .line 29
    :cond_0
    const-string v0, "--==--is not prepared, getTotalBufferTime: 0"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    return-wide v0
.end method

.method public getUpdateProgressInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kft/c;->md:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kft/c;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--getVideoHeight: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/kft/c;->n:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/byazt/kft/c;->n:I

    .line 23
    .line 24
    return v0
.end method

.method public getVideoWidth()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--getVideoWidth: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/kft/c;->uj:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/byazt/kft/c;->uj:I

    .line 23
    .line 24
    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--isCompleted: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/kft/c;->gu:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gu:Z

    .line 23
    .line 24
    return v0
.end method

.method public isFirstFrameSuccess()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--isFirstFrameSuccess: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/kft/c;->qy:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 23
    .line 24
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/c;->zm:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPaused()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/c;->rl:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gu:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v1, "--==--isPaused: "

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "TTLottieFakeVideoPlayer"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--isPlaying: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/kft/c;->rl:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->rl:Z

    .line 23
    .line 24
    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--isPrepared: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/kft/c;->qy:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 23
    .line 24
    return v0
.end method

.method public isReleased()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--isReleased: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/kft/c;->gr:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 23
    .line 24
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--isStarted: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/kft/c;->gt:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gt:Z

    .line 23
    .line 24
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->x()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/kft/c$7;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/kft/c$7;-><init>(Lcom/byazt/kft/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/c;->sp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/byazt/kft/c;->h:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/kft/c$6;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/byazt/kft/c$6;-><init>(Lcom/byazt/kft/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--release"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/kft/c;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/kft/c;->t:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/byazt/kft/c;->sl:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/byazt/kft/c;->qy:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/byazt/fk/sp;->stop()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/byazt/fk/sp;->release()V

    .line 36
    .line 37
    .line 38
    :cond_1
    new-instance v0, Lcom/byazt/kft/c$8;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/byazt/kft/c$8;-><init>(Lcom/byazt/kft/c;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public removeIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c;->my:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--reset"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/byazt/kft/c;->h:I

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/kft/c;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->a()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setProgress(F)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 51
    .line 52
    const-wide/16 v1, 0x0

    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Lcom/byazt/fk/sp;->seekTo(J)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public restart()V
    .locals 2

    .line 1
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--reStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/kft/c;->a()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/byazt/kft/c;->h:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/byazt/kft/c;->qy:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/byazt/kft/c;->gu:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->a()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setProgress(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kft/c;->play()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public seekTo(J)V
    .locals 7

    .line 1
    const-string v0, "--==--seekTo: "

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    long-to-int v0, p1

    .line 17
    iput v0, p0, Lcom/byazt/kft/c;->h:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->getDuration()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    cmp-long v0, v3, v1

    .line 30
    .line 31
    if-gtz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/byazt/kft/c;->getVideoDuration()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    :cond_0
    cmp-long v0, v3, v1

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    rem-long v5, p1, v3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 44
    .line 45
    long-to-float v5, v5

    .line 46
    long-to-float v3, v3

    .line 47
    div-float/2addr v5, v3

    .line 48
    invoke-virtual {v0, v5}, Lcom/byazt/ga/LottieAnimationView;->setProgress(F)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getVideoDuration()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    cmp-long v0, v3, v1

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getVideoDuration()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    rem-long/2addr p1, v0

    .line 70
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 71
    .line 72
    long-to-int p2, p1

    .line 73
    int-to-long p1, p2

    .line 74
    invoke-interface {v0, p1, p2}, Lcom/byazt/fk/sp;->seekTo(J)V

    .line 75
    .line 76
    .line 77
    :cond_2
    const/4 p1, 0x1

    .line 78
    invoke-direct {p0, p1}, Lcom/byazt/kft/c;->c(Z)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public setDataSource(Lcom/byazt/fk/u;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "--==--setDataSource: "

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public setLoop(Z)V
    .locals 2

    .line 1
    const-string v0, "--==--setLoop:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/byazt/kft/c;->zm:Z

    .line 17
    .line 18
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/kft/c;->eo:F

    .line 2
    .line 3
    return-void
.end method

.method public setQuietPlay(Z)V
    .locals 2

    .line 1
    const-string v0, "--==--setQuietPlay: "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/byazt/kft/c;->zb:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setQuietPlay(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setSeekMode(I)V
    .locals 1

    .line 1
    const-string v0, "--==--setSeekMode: "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setSurfaceValid(Z)V
    .locals 0

    return-void
.end method

.method public setUpdateProgressInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/kft/c;->md:I

    .line 2
    .line 3
    return-void
.end method

.method public start(ZJZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--start: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "TTLottieFakeVideoPlayer"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-boolean p4, p0, Lcom/byazt/kft/c;->zb:Z

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/byazt/kft/c;->gt:Z

    .line 38
    .line 39
    iput-wide p2, p0, Lcom/byazt/kft/c;->d:J

    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 42
    .line 43
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/byazt/fk/sp;->start(ZJZ)V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/byazt/kft/c;->qy:Z

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 51
    .line 52
    invoke-interface {p1, p4}, Lcom/byazt/fk/sp;->setQuietPlay(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp;->setLoop(Z)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    cmp-long p1, p2, v0

    .line 63
    .line 64
    if-lez p1, :cond_0

    .line 65
    .line 66
    invoke-direct {p0, p2, p3}, Lcom/byazt/kft/c;->c(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kft/c;->play()V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--stop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/c;->da:Lcom/byazt/ga/LottieAnimationView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->a()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/byazt/kft/c;->gt:Z

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/kft/c;->qy:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/kft/c;->gr:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/kft/c;->m:Lcom/byazt/fk/sp;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/byazt/kft/c;->a()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
