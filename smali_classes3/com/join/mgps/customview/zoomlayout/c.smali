.class public Lcom/join/mgps/customview/zoomlayout/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[ scale:%.2f, x:%.0f, y:%.0f ]"

.field private static final b:Ljava/lang/String; = "[ %.2f, %.2f, %.2f ][ %.2f, %.2f, %.2f ][ %.2f, %.2f, %.2f ]"

.field private static final c:[F

.field private static final d:Ljava/lang/String; = "%s: %s [ %.0f, %.0f, %.0f, %.0f ], w:%s, h:%s"

.field private static e:Landroid/graphics/Paint;

.field private static f:Landroid/graphics/Paint;

.field private static g:Landroid/graphics/Paint;

.field private static h:Landroid/graphics/Paint;

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    sput-object v0, Lcom/join/mgps/customview/zoomlayout/c;->c:[F

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/content/Context;FFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "context",
            "tx",
            "ty",
            "fx",
            "fy",
            "invScale"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/c;->d(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/join/mgps/customview/zoomlayout/c;->i:I

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    mul-float p1, p1, p6

    .line 8
    .line 9
    float-to-int p1, p1

    .line 10
    sget-object p6, Lcom/join/mgps/customview/zoomlayout/c;->e:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-static {p0, p2, p3, p1, p6}, Lcom/join/mgps/customview/zoomlayout/c;->b(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    sget-object p3, Lcom/join/mgps/customview/zoomlayout/c;->h:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-static {p0, p2, p2, p1, p3}, Lcom/join/mgps/customview/zoomlayout/c;->b(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lcom/join/mgps/customview/zoomlayout/c;->g:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-static {p0, p4, p5, p1, p2}, Lcom/join/mgps/customview/zoomlayout/c;->b(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static b(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "cx",
            "cy",
            "r",
            "p"
        }
    .end annotation

    .line 1
    int-to-float v0, p3

    .line 2
    sget-object v1, Lcom/join/mgps/customview/zoomlayout/c;->f:Landroid/graphics/Paint;

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    .line 6
    .line 7
    div-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    int-to-float p3, p3

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static c(ILandroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dp",
            "ctx"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    int-to-float p0, p0

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float p0, p0, p1

    .line 13
    .line 14
    float-to-int p0, p0

    .line 15
    return p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/customview/zoomlayout/c;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/customview/zoomlayout/c;->f:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/join/mgps/customview/zoomlayout/c;->e:Landroid/graphics/Paint;

    .line 22
    .line 23
    const v1, -0xffff01

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/join/mgps/customview/zoomlayout/c;->g:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/16 v1, -0x100

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/join/mgps/customview/zoomlayout/c;->h:Landroid/graphics/Paint;

    .line 47
    .line 48
    const/high16 v1, -0x10000

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    invoke-static {v0, p0}, Lcom/join/mgps/customview/zoomlayout/c;->c(ILandroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    sput p0, Lcom/join/mgps/customview/zoomlayout/c;->i:I

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public static e(Landroid/graphics/Matrix;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/customview/zoomlayout/c;->c:[F

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v1, v2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    aget v3, v0, v2

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    aput-object v3, v1, v4

    .line 29
    .line 30
    const/4 v3, 0x5

    .line 31
    aget v0, v0, v3

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    aput-object v0, v1, v2

    .line 38
    .line 39
    const-string v0, "[ scale:%.2f, x:%.0f, y:%.0f ]"

    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static f(Landroid/graphics/Matrix;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/customview/zoomlayout/c;->c:[F

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    aget v3, v0, v2

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    aput-object v3, v1, v2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aget v3, v0, v2

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aput-object v3, v1, v2

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    aget v3, v0, v2

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    aput-object v3, v1, v2

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    aget v3, v0, v2

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    aput-object v3, v1, v2

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    aget v3, v0, v2

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    aput-object v3, v1, v2

    .line 65
    .line 66
    const/4 v2, 0x6

    .line 67
    aget v3, v0, v2

    .line 68
    .line 69
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    aput-object v3, v1, v2

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    aget v3, v0, v2

    .line 77
    .line 78
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    aput-object v3, v1, v2

    .line 83
    .line 84
    const/16 v2, 0x8

    .line 85
    .line 86
    aget v0, v0, v2

    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    aput-object v0, v1, v2

    .line 93
    .line 94
    const-string v0, "[ %.2f, %.2f, %.2f ][ %.2f, %.2f, %.2f ][ %.2f, %.2f, %.2f ]"

    .line 95
    .line 96
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "name",
            "r"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p0, v1, v2

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    aput-object p1, v1, p0

    .line 12
    .line 13
    iget p0, p2, Landroid/graphics/RectF;->left:F

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x2

    .line 20
    aput-object p0, v1, p1

    .line 21
    .line 22
    iget p0, p2, Landroid/graphics/RectF;->top:F

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p1, 0x3

    .line 29
    aput-object p0, v1, p1

    .line 30
    .line 31
    iget p0, p2, Landroid/graphics/RectF;->right:F

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x4

    .line 38
    aput-object p0, v1, p1

    .line 39
    .line 40
    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const/4 p1, 0x5

    .line 47
    aput-object p0, v1, p1

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 p1, 0x6

    .line 58
    aput-object p0, v1, p1

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const/4 p1, 0x7

    .line 69
    aput-object p0, v1, p1

    .line 70
    .line 71
    const-string p0, "%s: %s [ %.0f, %.0f, %.0f, %.0f ], w:%s, h:%s"

    .line 72
    .line 73
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static h([FLandroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "rect"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    aput v0, p0, v1

    .line 6
    .line 7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    const/4 v1, 0x1

    .line 11
    aput v0, p0, v1

    .line 12
    .line 13
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    const/4 v1, 0x2

    .line 17
    aput v0, p0, v1

    .line 18
    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    int-to-float p1, p1

    .line 22
    const/4 v0, 0x3

    .line 23
    aput p1, p0, v0

    .line 24
    .line 25
    return-void
.end method

.method public static i([FLandroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "rect"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v0, p0, v1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    aput v1, p0, v0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 13
    .line 14
    aput v1, p0, v0

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 18
    .line 19
    aput p1, p0, v0

    .line 20
    .line 21
    return-void
.end method

.method public static j(Landroid/graphics/Rect;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static k(Landroid/graphics/Rect;[F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "array"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget v1, p1, v1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    aget v2, p1, v2

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    aget p1, p1, v3

    .line 12
    .line 13
    invoke-static {p0, v0, v1, v2, p1}, Lcom/join/mgps/customview/zoomlayout/c;->j(Landroid/graphics/Rect;FFFF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static l(Landroid/graphics/RectF;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    int-to-float p2, p2

    .line 11
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    int-to-float p3, p3

    .line 16
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    int-to-float p4, p4

    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static m(Landroid/graphics/RectF;[F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "array"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget v1, p1, v1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    aget v2, p1, v2

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    aget p1, p1, v3

    .line 12
    .line 13
    invoke-static {p0, v0, v1, v2, p1}, Lcom/join/mgps/customview/zoomlayout/c;->l(Landroid/graphics/RectF;FFFF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
