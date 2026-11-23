.class public Lcom/aggmoread/sdk/z/a/u/q;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/u/q$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/hardware/SensorManager;

.field protected b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:J

.field protected d:D

.field private e:I

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field protected k:Lcom/aggmoread/sdk/z/a/u/q$b;

.field private l:[F

.field private m:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/u/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/u/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->c:J

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/q;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    :goto_0
    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->d:D

    const/4 p1, 0x2

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->f:J

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->g:J

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/q;->h:I

    const-wide/16 p1, 0x1f40

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->i:J

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->j:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->k:Lcom/aggmoread/sdk/z/a/u/q$b;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->l:[F

    new-instance p1, Lcom/aggmoread/sdk/z/a/u/q$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/a/u/q$a;-><init>(Lcom/aggmoread/sdk/z/a/u/q;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->m:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/q;->a()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/q;[F)D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/q;->b([F)D

    move-result-wide p0

    return-wide p0
.end method

.method private a([F)D
    .locals 6

    .line 2
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p1, p1, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    float-to-double v0, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/q;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->h:I

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/q;)J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/q;J)J
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->g:J

    return-wide p1
.end method

.method private a()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/q;[F)D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/q;->a([F)D

    move-result-wide p0

    return-wide p0
.end method

.method private b([F)D
    .locals 12

    .line 2
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget p1, p1, v4

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/q;->l:[F

    aget v0, v5, v0

    aget v2, v5, v2

    aget v4, v5, v4

    sub-float v5, v1, v0

    sub-float v6, v3, v2

    sub-float v7, p1, v4

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v5, v6

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v8, v5

    float-to-double v5, v7

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-nez v0, :cond_0

    cmpl-float v0, v2, v7

    if-nez v0, :cond_0

    cmpl-float v0, v4, v7

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v7

    if-nez v0, :cond_1

    cmpl-float v0, v3, v7

    if-nez v0, :cond_1

    cmpl-float p1, p1, v7

    if-nez p1, :cond_1

    :goto_0
    const-wide v0, 0x40239999a0000000L    # 9.800000190734863

    sub-double/2addr v5, v0

    :cond_1
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    cmpl-double p1, v5, v0

    if-lez p1, :cond_2

    const-wide/16 v5, 0x0

    :cond_2
    return-wide v5
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/q;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/q;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->f:J

    return-wide p1
.end method

.method private b()Z
    .locals 2

    .line 5
    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/q;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->j:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/q;)[F
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/q;->l:[F

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/u/q;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/u/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/u/q;->h:I

    return p0
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/u/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aggmoread/sdk/z/a/u/q;->h:I

    return v0
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/u/q;)Z
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/q;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/u/q;)I
    .locals 0

    iget p0, p0, Lcom/aggmoread/sdk/z/a/u/q;->e:I

    return p0
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/a/u/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->j:J

    return-wide v0
.end method

.method static synthetic j(Lcom/aggmoread/sdk/z/a/u/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->i:J

    return-wide v0
.end method


# virtual methods
.method public a(D)V
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShakeThreshold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->d:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->d:D

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/u/q$b;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->k:Lcom/aggmoread/sdk/z/a/u/q$b;

    return-void
.end method

.method public c()V
    .locals 0

    .line 2
    return-void
.end method

.method protected d()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->m:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/q;->m:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/q;->m:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 2
    return-void
.end method

.method protected f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->m:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/q;->m:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "onDetachedFromWindow "

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/u/q;->f()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/u/q;->f()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/u/q;->d()V

    :cond_1
    :goto_0
    return-void
.end method
