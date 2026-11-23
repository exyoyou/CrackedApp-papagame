.class public Lorg/ppsspp/ppsspp/TextRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextRenderer"

.field private static bg:Landroid/graphics/Paint;

.field private static p:Landroid/graphics/Paint;

.field private static robotoCondensed:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/16 v1, 0x81

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->bg:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/high16 v1, -0x1000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "Roboto-Condensed.ttf"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lorg/ppsspp/ppsspp/TextRenderer;->robotoCondensed:Landroid/graphics/Typeface;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 29
    .line 30
    sget-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->robotoCondensed:Landroid/graphics/Typeface;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private static measure(Ljava/lang/String;D)Landroid/graphics/Point;
    .locals 5

    .line 1
    const-string v0, "\\r"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "\n"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Landroid/graphics/Point;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    array-length v2, p0

    .line 24
    :goto_0
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    aget-object v3, p0, v1

    .line 27
    .line 28
    invoke-static {v3, p1, p2}, Lorg/ppsspp/ppsspp/TextRenderer;->measureLine(Ljava/lang/String;D)Landroid/graphics/Point;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 33
    .line 34
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sget-object p2, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    sub-float/2addr p1, p2

    .line 58
    float-to-int p1, p1

    .line 59
    array-length p0, p0

    .line 60
    mul-int p1, p1, p0

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x2

    .line 63
    .line 64
    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    return-object v0
.end method

.method private static measureLine(Ljava/lang/String;D)Landroid/graphics/Point;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 8
    .line 9
    double-to-float p1, p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    float-to-int p0, p0

    .line 20
    add-int/lit8 p0, p0, 0x5

    .line 21
    .line 22
    and-int/lit8 p0, p0, -0x2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    :goto_0
    sget-object p1, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sget-object p2, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    sub-float/2addr p1, p2

    .line 39
    const/high16 p2, 0x40000000    # 2.0f

    .line 40
    .line 41
    add-float/2addr p1, p2

    .line 42
    float-to-int p1, p1

    .line 43
    new-instance p2, Landroid/graphics/Point;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 46
    .line 47
    .line 48
    iput p0, p2, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 51
    .line 52
    return-object p2
.end method

.method public static measureText(Ljava/lang/String;D)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/ppsspp/ppsspp/TextRenderer;->measure(Ljava/lang/String;D)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p1, p0, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    shl-int/lit8 p1, p1, 0x10

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static renderText(Ljava/lang/String;D)[I
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Lorg/ppsspp/ppsspp/TextRenderer;->measure(Ljava/lang/String;D)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v7, p2

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v8, p1

    .line 20
    :goto_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    invoke-static {v7, v8, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Landroid/graphics/Canvas;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    int-to-float v3, v7

    .line 34
    int-to-float v4, v8

    .line 35
    sget-object v5, Lorg/ppsspp/ppsspp/TextRenderer;->bg:Landroid/graphics/Paint;

    .line 36
    .line 37
    move-object v0, p2

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "\\r"

    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "\n"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    array-length v0, p0

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    :goto_2
    if-ge v2, v0, :cond_3

    .line 62
    .line 63
    aget-object v4, p0, v2

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-lez v5, :cond_2

    .line 70
    .line 71
    sget-object v5, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    neg-float v5, v5

    .line 78
    add-float/2addr v5, v3

    .line 79
    sget-object v6, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {p2, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    sget-object v4, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    sget-object v5, Lorg/ppsspp/ppsspp/TextRenderer;->p:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    sub-float/2addr v4, v5

    .line 97
    add-float/2addr v3, v4

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    mul-int p0, v7, v8

    .line 102
    .line 103
    new-array p0, p0, [I

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v1, p1

    .line 109
    move-object v2, p0

    .line 110
    move v4, v7

    .line 111
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    .line 116
    .line 117
    return-object p0
.end method
