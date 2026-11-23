.class public Lcom/kongzue/dialogx/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/f$b;
    }
.end annotation


# static fields
.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = -0x1


# instance fields
.field a:Landroid/os/Handler;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Lcom/kongzue/dialogx/util/f$b;

.field private f:Landroid/view/animation/Interpolator;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/util/f;->a:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/kongzue/dialogx/util/f;->i:I

    .line 19
    .line 20
    iput v0, p0, Lcom/kongzue/dialogx/util/f;->j:I

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    iput v0, p0, Lcom/kongzue/dialogx/util/f;->k:I

    .line 25
    .line 26
    iput p1, p0, Lcom/kongzue/dialogx/util/f;->g:F

    .line 27
    .line 28
    iput p2, p0, Lcom/kongzue/dialogx/util/f;->h:F

    .line 29
    .line 30
    return-void
.end method

.method public static C(FF)Lcom/kongzue/dialogx/util/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/util/f;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private D()V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic a(Lcom/kongzue/dialogx/util/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/kongzue/dialogx/util/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/kongzue/dialogx/util/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/util/f;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/kongzue/dialogx/util/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/f;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/kongzue/dialogx/util/f;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/f;->j:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/kongzue/dialogx/util/f;->j:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic f(Lcom/kongzue/dialogx/util/f;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/util/f;->c:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic g(Lcom/kongzue/dialogx/util/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/f;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/kongzue/dialogx/util/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/util/f;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic i(Lcom/kongzue/dialogx/util/f;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/f;->f:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/kongzue/dialogx/util/f;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/f;->g:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/kongzue/dialogx/util/f;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/f;->h:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/kongzue/dialogx/util/f;)Lcom/kongzue/dialogx/util/f$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/f;->e:Lcom/kongzue/dialogx/util/f$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/kongzue/dialogx/util/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/f;->u()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic n(Lcom/kongzue/dialogx/util/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/f;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/kongzue/dialogx/util/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/f;->i:I

    .line 2
    .line 3
    return p0
.end method

.method private u()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/kongzue/dialogx/util/f;->a:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f;->a:Landroid/os/Handler;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/f;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public E(J)Lcom/kongzue/dialogx/util/f;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/util/f;->b:J

    .line 2
    .line 3
    return-object p0
.end method

.method public F(F)Lcom/kongzue/dialogx/util/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/f;->h:F

    .line 2
    .line 3
    return-object p0
.end method

.method public G(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/f;->g:F

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/util/f;->h:F

    .line 4
    .line 5
    return-void
.end method

.method public H(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/f;->f:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method

.method public I(Lcom/kongzue/dialogx/util/f$b;)Lcom/kongzue/dialogx/util/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/f;->e:Lcom/kongzue/dialogx/util/f$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public J(I)Lcom/kongzue/dialogx/util/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/f;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/f;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public L(J)Lcom/kongzue/dialogx/util/f;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/util/f;->c:J

    .line 2
    .line 3
    return-object p0
.end method

.method public M(F)Lcom/kongzue/dialogx/util/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/f;->g:F

    .line 2
    .line 3
    return-object p0
.end method

.method public N()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/kongzue/dialogx/util/f;->c:J

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 16
    .line 17
    new-instance v1, Lcom/kongzue/dialogx/util/f$a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/util/f$a;-><init>(Lcom/kongzue/dialogx/util/f;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public p(Lcom/kongzue/dialogx/util/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/f;->e:Lcom/kongzue/dialogx/util/f$b;

    .line 2
    .line 3
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/f;->d:Z

    .line 3
    .line 4
    return-void
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/f;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/util/f;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/f;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public v()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f;->f:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Lcom/kongzue/dialogx/util/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f;->e:Lcom/kongzue/dialogx/util/f$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/f;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/f;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/util/f;->c:J

    .line 2
    .line 3
    return-wide v0
.end method
