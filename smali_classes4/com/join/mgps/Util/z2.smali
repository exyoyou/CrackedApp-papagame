.class public Lcom/join/mgps/Util/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "color"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "#8dbbec"

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/q;->h(Landroid/content/Context;)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/high16 v2, 0x40a00000    # 5.0f

    .line 23
    .line 24
    mul-float v2, v2, v1

    .line 25
    .line 26
    float-to-int v2, v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    const/high16 v2, 0x41800000    # 16.0f

    .line 32
    .line 33
    mul-float v1, v1, v2

    .line 34
    .line 35
    float-to-int v1, v1

    .line 36
    const/16 v2, 0x41

    .line 37
    .line 38
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/q;->g()F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/high16 v2, 0x40800000    # 4.0f

    .line 50
    .line 51
    mul-float v1, v1, v2

    .line 52
    .line 53
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/q;->g()F

    .line 58
    .line 59
    .line 60
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 61
    .line 62
    const/16 v4, 0x8

    .line 63
    .line 64
    new-array v4, v4, [F

    .line 65
    .line 66
    aput v1, v4, v3

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    aput v1, v4, v3

    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    aput v1, v4, v3

    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    aput v1, v4, v3

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    aput v1, v4, v3

    .line 79
    .line 80
    const/4 v3, 0x5

    .line 81
    aput v1, v4, v3

    .line 82
    .line 83
    const/4 v3, 0x6

    .line 84
    aput v1, v4, v3

    .line 85
    .line 86
    const/4 v3, 0x7

    .line 87
    aput v1, v4, v3

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {v2, v4, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/join/android/app/common/utils/q;->g()F

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    const/high16 p1, 0x3f800000    # 1.0f

    .line 121
    .line 122
    mul-float p0, p0, p1

    .line 123
    .line 124
    float-to-int p0, p0

    .line 125
    int-to-float p0, p0

    .line 126
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    .line 128
    .line 129
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bgColor",
            "conner"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "#8dbbec"

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/customview/l0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    instance-of v0, p1, Lcom/join/mgps/customview/l0;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/join/mgps/customview/l0;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/l0;->o(F)Lcom/join/mgps/customview/l0;

    .line 45
    .line 46
    .line 47
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/l0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/l0;

    .line 50
    .line 51
    .line 52
    :cond_1
    return-object p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bgColor",
            "borderColor"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "#8dbbec"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object p1, v1

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object p2, v1

    .line 17
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/customview/l0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    instance-of v0, p1, Lcom/join/mgps/customview/l0;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/join/mgps/customview/l0;

    .line 46
    .line 47
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {v0, p2}, Lcom/join/mgps/customview/l0;->l(I)Lcom/join/mgps/customview/l0;

    .line 52
    .line 53
    .line 54
    const/high16 p2, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {v0, p2}, Lcom/join/mgps/customview/l0;->n(F)Lcom/join/mgps/customview/l0;

    .line 62
    .line 63
    .line 64
    const/high16 p2, 0x40000000    # 2.0f

    .line 65
    .line 66
    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/l0;->o(F)Lcom/join/mgps/customview/l0;

    .line 71
    .line 72
    .line 73
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/l0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/l0;

    .line 76
    .line 77
    .line 78
    :cond_2
    return-object p1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "color",
            "textNumber"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "#8dbbec"

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/q;->h(Landroid/content/Context;)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    mul-int/lit8 p2, p2, 0x41

    .line 23
    .line 24
    const/high16 v1, 0x41800000    # 16.0f

    .line 25
    .line 26
    mul-float v1, v1, p0

    .line 27
    .line 28
    float-to-int v1, v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v2, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    new-array v3, v1, [F

    .line 38
    .line 39
    const/high16 v4, 0x40800000    # 4.0f

    .line 40
    .line 41
    mul-float p0, p0, v4

    .line 42
    .line 43
    aput p0, v3, v2

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    aput p0, v3, v4

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    aput p0, v3, v5

    .line 50
    .line 51
    const/4 v6, 0x3

    .line 52
    aput p0, v3, v6

    .line 53
    .line 54
    const/4 v7, 0x4

    .line 55
    aput p0, v3, v7

    .line 56
    .line 57
    const/4 v8, 0x5

    .line 58
    aput p0, v3, v8

    .line 59
    .line 60
    const/4 v9, 0x6

    .line 61
    aput p0, v3, v9

    .line 62
    .line 63
    const/4 v10, 0x7

    .line 64
    aput p0, v3, v10

    .line 65
    .line 66
    new-instance v11, Landroid/graphics/RectF;

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    invoke-direct {v11, v12, v12, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    new-array v1, v1, [F

    .line 73
    .line 74
    aput p0, v1, v2

    .line 75
    .line 76
    aput p0, v1, v4

    .line 77
    .line 78
    aput p0, v1, v5

    .line 79
    .line 80
    aput p0, v1, v6

    .line 81
    .line 82
    aput p0, v1, v7

    .line 83
    .line 84
    aput p0, v1, v8

    .line 85
    .line 86
    aput p0, v1, v9

    .line 87
    .line 88
    aput p0, v1, v10

    .line 89
    .line 90
    invoke-direct {p2, v3, v11, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    .line 112
    const/high16 p1, 0x40000000    # 2.0f

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method
