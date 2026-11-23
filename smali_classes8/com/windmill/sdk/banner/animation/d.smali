.class public Lcom/windmill/sdk/banner/animation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/banner/animation/f;


# static fields
.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F

.field private static final j:[F


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
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->c:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->d:[F

    .line 15
    .line 16
    new-array v1, v0, [F

    .line 17
    .line 18
    fill-array-data v1, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->e:[F

    .line 22
    .line 23
    new-array v1, v0, [F

    .line 24
    .line 25
    fill-array-data v1, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->f:[F

    .line 29
    .line 30
    new-array v1, v0, [F

    .line 31
    .line 32
    fill-array-data v1, :array_4

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->g:[F

    .line 36
    .line 37
    new-array v1, v0, [F

    .line 38
    .line 39
    fill-array-data v1, :array_5

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->h:[F

    .line 43
    .line 44
    new-array v1, v0, [F

    .line 45
    .line 46
    fill-array-data v1, :array_6

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/windmill/sdk/banner/animation/d;->i:[F

    .line 50
    .line 51
    new-array v0, v0, [F

    .line 52
    .line 53
    fill-array-data v0, :array_7

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/windmill/sdk/banner/animation/d;->j:[F

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
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
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/windmill/sdk/banner/animation/d;->a(Lcom/windmill/sdk/banner/animation/g;)[F

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/windmill/sdk/banner/animation/d;->a([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/windmill/sdk/banner/animation/d;->a:Landroid/view/animation/Animation;

    .line 18
    .line 19
    invoke-direct {p0, p3}, Lcom/windmill/sdk/banner/animation/d;->b(Lcom/windmill/sdk/banner/animation/g;)[F

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/windmill/sdk/banner/animation/d;->a([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/windmill/sdk/banner/animation/d;->b:Landroid/view/animation/Animation;

    .line 28
    .line 29
    return-void
.end method

.method private a([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;
    .locals 10
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

    const/4 v0, 0x1

    aget v4, p1, v0

    const/4 v5, 0x2

    const/4 v0, 0x2

    aget v6, p1, v0

    const/4 v7, 0x2

    const/4 v0, 0x3

    aget v8, p1, v0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 8
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    invoke-virtual {v9, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v9
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
    sget-object v0, Lcom/windmill/sdk/banner/animation/d$1;->a:[I

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
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->c:[F

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->f:[F

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->e:[F

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->d:[F

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->c:[F

    return-object p1
.end method

.method private b(Lcom/windmill/sdk/banner/animation/g;)[F
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
    sget-object v0, Lcom/windmill/sdk/banner/animation/d$1;->a:[I

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
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->g:[F

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->j:[F

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->i:[F

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->h:[F

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/windmill/sdk/banner/animation/d;->g:[F

    return-object p1
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/d;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/banner/animation/d;->b:Landroid/view/animation/Animation;

    return-object v0
.end method
