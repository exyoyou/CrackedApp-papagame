.class public Lcom/windmill/sdk/banner/animation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/banner/animation/f;


# static fields
.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/windmill/sdk/banner/animation/c;->c:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/windmill/sdk/banner/animation/c;->d:[F

    .line 15
    .line 16
    new-array v1, v0, [F

    .line 17
    .line 18
    fill-array-data v1, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/windmill/sdk/banner/animation/c;->e:[F

    .line 22
    .line 23
    new-array v0, v0, [F

    .line 24
    .line 25
    fill-array-data v0, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/windmill/sdk/banner/animation/c;->f:[F

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :array_1
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(JLcom/windmill/sdk/banner/animation/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "direction"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/windmill/sdk/banner/animation/c;->a(Lcom/windmill/sdk/banner/animation/g;)[F

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/windmill/sdk/banner/animation/c;->a([FLandroid/view/animation/Interpolator;J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lcom/windmill/sdk/banner/animation/c;->a(Lcom/windmill/sdk/banner/animation/g;)[F

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/windmill/sdk/banner/animation/c;->b([FLandroid/view/animation/Interpolator;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private a([FLandroid/view/animation/Interpolator;J)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "interpolator",
            "duration"
        }
    .end annotation

    .line 7
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v0, 0x0

    aget v2, p1, v0

    const/4 v3, 0x2

    const/4 v10, 0x1

    aget v4, p1, v10

    const/4 v5, 0x2

    const/4 v0, 0x2

    aget v6, p1, v0

    const/4 v7, 0x2

    const/4 v0, 0x3

    aget v8, p1, v0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v9, p0, Lcom/windmill/sdk/banner/animation/c;->a:Landroid/view/animation/Animation;

    .line 8
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/banner/animation/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 10
    iget-object p1, p0, Lcom/windmill/sdk/banner/animation/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/banner/animation/g;)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/banner/animation/c$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/windmill/sdk/banner/animation/c;->c:[F

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/windmill/sdk/banner/animation/c;->f:[F

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/windmill/sdk/banner/animation/c;->e:[F

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/windmill/sdk/banner/animation/c;->d:[F

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/windmill/sdk/banner/animation/c;->c:[F

    return-object p1
.end method

.method private b([FLandroid/view/animation/Interpolator;J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "interpolator",
            "duration"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/c;->b:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3
    iget-object p1, p0, Lcom/windmill/sdk/banner/animation/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object p1, p0, Lcom/windmill/sdk/banner/animation/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/c;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/c;->b:Landroid/view/animation/Animation;

    return-object v0
.end method
