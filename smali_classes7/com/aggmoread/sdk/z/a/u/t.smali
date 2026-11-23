.class public Lcom/aggmoread/sdk/z/a/u/t;
.super Lcom/aggmoread/sdk/z/a/u/q;
.source "SourceFile"


# static fields
.field private static final F:[I


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:J

.field private E:I

.field private n:J

.field private o:Lcom/aggmoread/sdk/z/a/u/s;

.field private p:Z

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:D

.field private s:D

.field private t:D

.field private u:[I

.field private v:[F

.field private w:Landroid/hardware/SensorEventListener;

.field private x:[Z

.field private y:[Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aggmoread/sdk/z/a/u/t;->F:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x3
        0x2
        0x5
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/u/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/u/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/a/u/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->n:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/aggmoread/sdk/z/a/u/t;->p:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->r:D

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->s:D

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->t:D

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/u/t;->u:[I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->v:[F

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/t$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/u/t$a;-><init>(Lcom/aggmoread/sdk/z/a/u/t;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->w:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x6

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/u/t;->x:[Z

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->y:[Z

    const/16 v0, 0x69

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->B:I

    iput-boolean p3, p0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->D:J

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->E:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/t;->a()V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/t;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->r:D

    return-wide p1
.end method

.method private a(I)F
    .locals 4

    .line 2
    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    int-to-float p1, p1

    mul-float p1, p1, v1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_0
    iget-boolean v2, p0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    const/high16 v3, 0x3f000000    # 0.5f

    int-to-float p1, p1

    mul-float p1, p1, v1

    if-nez v2, :cond_1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float p1, p1, v3

    return p1

    :cond_1
    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float p1, p1, v3

    add-float/2addr p1, v3

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/t;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->n:J

    return-wide p1
.end method

.method private a(III)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->y:[Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->x:[Z

    :goto_0
    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const/4 v3, 0x1

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_3

    if-gez p1, :cond_3

    neg-int p1, p1

    if-le p1, v1, :cond_3

    move v1, p1

    const/4 v2, 0x1

    :cond_3
    const/4 p1, 0x2

    aget-boolean v3, v0, p1

    if-eqz v3, :cond_4

    if-le p2, v1, :cond_4

    move v1, p2

    const/4 v2, 0x2

    :cond_4
    const/4 p1, 0x3

    aget-boolean v3, v0, p1

    if-eqz v3, :cond_5

    if-gez p2, :cond_5

    neg-int p2, p2

    if-le p2, v1, :cond_5

    move v1, p2

    const/4 v2, 0x3

    :cond_5
    const/4 p1, 0x4

    aget-boolean p2, v0, p1

    if-eqz p2, :cond_6

    if-le p3, v1, :cond_6

    move v1, p3

    const/4 v2, 0x4

    :cond_6
    const/4 p1, 0x5

    aget-boolean p2, v0, p1

    if-eqz p2, :cond_7

    if-gez p3, :cond_7

    neg-int p2, p3

    if-le p2, v1, :cond_7

    move v1, p2

    const/4 v2, 0x5

    :cond_7
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/t;Lcom/aggmoread/sdk/z/a/u/s;)Lcom/aggmoread/sdk/z/a/u/s;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    return-object p1
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

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/t$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/u/t$b;-><init>(Lcom/aggmoread/sdk/z/a/u/t;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/t;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/aggmoread/sdk/z/a/u/t;->p:Z

    return p0
.end method

.method private a(ZJ)Z
    .locals 5

    .line 9
    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->E:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    int-to-long v3, v0

    cmp-long p1, p2, v3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget p2, p0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    if-lez p2, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    return v1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/t;[F)[F
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->v:[F

    return-object p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/t;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->s:D

    return-wide p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/t;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/t;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(I)V
    .locals 5

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/t;->y:[Z

    const/4 v3, 0x1

    shl-int v4, v3, v1

    and-int/2addr v4, p1

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/t;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->t:D

    return-wide p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/t;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->n:J

    return-wide v0
.end method

.method private c(I)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tw_svTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q;->k:Lcom/aggmoread/sdk/z/a/u/q$b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->v:[F

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/u/q$b;->a([F)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/u/t;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->r:D

    return-wide v0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/u/t;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->s:D

    return-wide v0
.end method

.method private e(I)V
    .locals 3

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/t;->B:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->B:I

    sget-object v1, Lcom/aggmoread/sdk/z/a/u/t;->F:[I

    aget p1, v1, p1

    shl-int p1, v0, p1

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/t;->b(I)V

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/u/t;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/u/t;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->t:D

    return-wide v0
.end method

.method private g()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->p:Z

    const-string v2, "tw_svTAG"

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->u:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    const/4 v7, 0x2

    aget v1, v1, v7

    invoke-direct {v0, v4, v6, v1}, Lcom/aggmoread/sdk/z/a/u/t;->a(III)Landroid/util/Pair;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pair data "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x5

    if-ge v4, v6, :cond_1

    iget-boolean v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    if-nez v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/aggmoread/sdk/z/a/u/t;->h()V

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", obj "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    if-eqz v6, :cond_2

    invoke-direct {v0, v4}, Lcom/aggmoread/sdk/z/a/u/t;->a(I)F

    move-result v13

    iget-object v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->u:[I

    iget-object v8, v0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    aget v9, v6, v3

    aget v10, v6, v5

    aget v11, v6, v7

    iget v12, v0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    invoke-virtual/range {v8 .. v13}, Lcom/aggmoread/sdk/z/a/u/s;->a(IIIIF)V

    :cond_2
    iget-boolean v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    goto :goto_0

    :cond_3
    iget v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    :goto_0
    if-lt v4, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/aggmoread/sdk/z/a/u/t;->D:J

    sub-long/2addr v8, v10

    invoke-direct {v0, v6, v8, v9}, Lcom/aggmoread/sdk/z/a/u/t;->a(ZJ)Z

    move-result v10

    if-eqz v6, :cond_5

    iget-boolean v11, v0, Lcom/aggmoread/sdk/z/a/u/t;->C:Z

    if-nez v11, :cond_5

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/a/u/t;->e(I)V

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->u:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_5
    if-eqz v6, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "z  "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", a2 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ct "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/aggmoread/sdk/z/a/u/t;->p:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", v "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v10, :cond_8

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v5, v0, Lcom/aggmoread/sdk/z/a/u/t;->p:Z

    invoke-direct {v0, v3}, Lcom/aggmoread/sdk/z/a/u/t;->c(I)V

    iget-object v12, v0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    if-eqz v12, :cond_8

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->u:[I

    aget v13, v1, v3

    aget v14, v1, v5

    aget v15, v1, v7

    iget v1, v0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    move/from16 v16, v1

    move-wide/from16 v17, v8

    invoke-virtual/range {v12 .. v18}, Lcom/aggmoread/sdk/z/a/u/s;->a(IIIIJ)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    const-string v1, "cd return #1 "

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/u/t;)[I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/t;->u:[I

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->D:J

    return-void
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/u/t;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/t;->g()V

    return-void
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/a/u/t;)Lcom/aggmoread/sdk/z/a/u/s;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/t;->o:Lcom/aggmoread/sdk/z/a/u/s;

    return-object p0
.end method


# virtual methods
.method public a(D)V
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ss "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tw_svTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    int-to-double v0, v0

    div-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->z:I

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    int-to-double v0, v0

    div-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/t;->A:I

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/aggmoread/sdk/z/a/u/q;->c()V

    const-string v0, "tw_svTAG"

    const-string v1, "pause "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public d(I)I
    .locals 1

    .line 2
    const/16 v0, 0xb4

    if-le p1, v0, :cond_0

    add-int/lit16 p1, p1, -0x168

    goto :goto_0

    :cond_0
    const/16 v0, -0xb4

    if-gt p1, v0, :cond_1

    add-int/lit16 p1, p1, 0x168

    :cond_1
    :goto_0
    return p1
.end method

.method protected d()V
    .locals 4

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->w:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/t;->w:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/aggmoread/sdk/z/a/u/q;->e()V

    const-string v0, "tw_svTAG"

    const-string v1, "start "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t;->w:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/t;->w:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
