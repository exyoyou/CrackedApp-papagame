.class public Lcom/join/mgps/ptr/header/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final A:F = 0.65f

.field private static final B:F = 1.05f

.field private static final C:F = 0.22f

.field private static final D:F = 1.2f

.field private static final E:F = 1.3f

.field private static final F:F = 0.75f

.field private static final G:F = 1.2f

.field private static final H:F = 1.5f

.field private static final I:Landroid/view/animation/Interpolator;

.field private static final y:F = 0.3f

.field private static final z:I = 0x3e8


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/view/animation/Animation;

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Z

.field private w:Landroid/content/Context;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/ptr/header/b;->I:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parent"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->n:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->q:F

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->r:F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/b;->v:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/ptr/header/b;->w:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/view/View;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Matrix;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->f()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->a()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->k()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f080fbf

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->s:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 19
    .line 20
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->g:I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->s:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f080079

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->u:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 47
    .line 48
    int-to-float v2, v1

    .line 49
    const v4, 0x3e6147ae    # 0.22f

    .line 50
    .line 51
    .line 52
    mul-float v2, v2, v4

    .line 53
    .line 54
    float-to-int v2, v2

    .line 55
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->u:Landroid/graphics/Bitmap;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const v1, 0x7f080fc0

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->t:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->n:I

    .line 79
    .line 80
    invoke-static {v0, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->t:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->e:I

    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->q:F

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const v4, 0x3e99999a    # 0.3f

    .line 29
    .line 30
    .line 31
    sub-float v4, v2, v4

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const v6, 0x3f866666    # 1.05f

    .line 35
    .line 36
    .line 37
    cmpl-float v5, v4, v5

    .line 38
    .line 39
    if-lez v5, :cond_0

    .line 40
    .line 41
    const v5, 0x3f333333    # 0.7f

    .line 42
    .line 43
    .line 44
    div-float/2addr v4, v5

    .line 45
    const v5, 0x3d4cccc0    # 0.049999952f

    .line 46
    .line 47
    .line 48
    mul-float v4, v4, v5

    .line 49
    .line 50
    sub-float/2addr v6, v4

    .line 51
    :cond_0
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 52
    .line 53
    int-to-float v5, v4

    .line 54
    mul-float v5, v5, v6

    .line 55
    .line 56
    int-to-float v4, v4

    .line 57
    sub-float/2addr v5, v4

    .line 58
    neg-float v4, v5

    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    .line 61
    div-float/2addr v4, v5

    .line 62
    add-int/lit8 v1, v1, 0x32

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    iget v7, p0, Lcom/join/mgps/ptr/header/b;->h:F

    .line 66
    .line 67
    add-float/2addr v1, v7

    .line 68
    iget v7, p0, Lcom/join/mgps/ptr/header/b;->g:I

    .line 69
    .line 70
    int-to-float v7, v7

    .line 71
    sub-float v3, v6, v3

    .line 72
    .line 73
    mul-float v7, v7, v3

    .line 74
    .line 75
    div-float/2addr v7, v5

    .line 76
    sub-float/2addr v1, v7

    .line 77
    iget v3, p0, Lcom/join/mgps/ptr/header/b;->i:F

    .line 78
    .line 79
    mul-float v3, v3, v2

    .line 80
    .line 81
    add-float/2addr v1, v3

    .line 82
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->s:Landroid/graphics/Bitmap;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->q:F

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v3, v1, v2

    .line 11
    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    const/high16 v3, 0x41100000    # 9.0f

    .line 15
    .line 16
    add-float/2addr v1, v3

    .line 17
    const/high16 v3, 0x41200000    # 10.0f

    .line 18
    .line 19
    div-float/2addr v1, v3

    .line 20
    :cond_0
    iget v3, p0, Lcom/join/mgps/ptr/header/b;->n:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    const/high16 v4, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v3, v4

    .line 26
    iget v5, p0, Lcom/join/mgps/ptr/header/b;->o:F

    .line 27
    .line 28
    iget v6, p0, Lcom/join/mgps/ptr/header/b;->p:F

    .line 29
    .line 30
    iget v7, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 31
    .line 32
    div-int/lit8 v7, v7, 0x2

    .line 33
    .line 34
    int-to-float v7, v7

    .line 35
    sub-float v8, v2, v1

    .line 36
    .line 37
    mul-float v7, v7, v8

    .line 38
    .line 39
    add-float/2addr v6, v7

    .line 40
    const v7, 0x3e99999a    # 0.3f

    .line 41
    .line 42
    .line 43
    sub-float/2addr v1, v7

    .line 44
    const/4 v7, 0x0

    .line 45
    const v8, 0x3f99999a    # 1.2f

    .line 46
    .line 47
    .line 48
    cmpl-float v7, v1, v7

    .line 49
    .line 50
    if-lez v7, :cond_1

    .line 51
    .line 52
    const v7, 0x3f333333    # 0.7f

    .line 53
    .line 54
    .line 55
    div-float/2addr v1, v7

    .line 56
    const/high16 v7, 0x3e800000    # 0.25f

    .line 57
    .line 58
    mul-float v7, v7, v1

    .line 59
    .line 60
    sub-float v7, v2, v7

    .line 61
    .line 62
    const v9, 0x3e999998    # 0.29999995f

    .line 63
    .line 64
    .line 65
    mul-float v1, v1, v9

    .line 66
    .line 67
    add-float/2addr v8, v1

    .line 68
    mul-float v1, v3, v7

    .line 69
    .line 70
    sub-float v9, v3, v1

    .line 71
    .line 72
    add-float/2addr v9, v5

    .line 73
    sub-float/2addr v4, v7

    .line 74
    mul-float v6, v6, v4

    .line 75
    .line 76
    invoke-virtual {v0, v9, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 80
    .line 81
    .line 82
    add-float/2addr v5, v3

    .line 83
    add-float/2addr v6, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    .line 87
    .line 88
    add-float/2addr v5, v3

    .line 89
    add-float/2addr v6, v3

    .line 90
    :goto_0
    iget-boolean v1, p0, Lcom/join/mgps/ptr/header/b;->v:Z

    .line 91
    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    const/16 v3, -0x168

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const/16 v3, 0x168

    .line 98
    .line 99
    :goto_1
    int-to-float v3, v3

    .line 100
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->r:F

    .line 101
    .line 102
    mul-float v3, v3, v4

    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move v2, v8

    .line 108
    :goto_2
    mul-float v3, v3, v2

    .line 109
    .line 110
    invoke-virtual {v0, v3, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->t:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->c:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->e:I

    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->q:F

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const v4, 0x3e99999a    # 0.3f

    .line 29
    .line 30
    .line 31
    sub-float v5, v2, v4

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const v7, 0x3f99999a    # 1.2f

    .line 35
    .line 36
    .line 37
    cmpl-float v6, v5, v6

    .line 38
    .line 39
    if-lez v6, :cond_0

    .line 40
    .line 41
    const v2, 0x3f333333    # 0.7f

    .line 42
    .line 43
    .line 44
    div-float/2addr v5, v2

    .line 45
    const v2, 0x3dccccc0    # 0.099999905f

    .line 46
    .line 47
    .line 48
    mul-float v2, v2, v5

    .line 49
    .line 50
    add-float/2addr v7, v2

    .line 51
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->k:F

    .line 52
    .line 53
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->l:F

    .line 54
    .line 55
    sub-float/2addr v4, v2

    .line 56
    mul-float v4, v4, v5

    .line 57
    .line 58
    sub-float/2addr v2, v4

    .line 59
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->m:F

    .line 60
    .line 61
    sub-float v5, v3, v5

    .line 62
    .line 63
    mul-float v4, v4, v5

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    div-float/2addr v2, v4

    .line 67
    iget v4, p0, Lcom/join/mgps/ptr/header/b;->k:F

    .line 68
    .line 69
    iget v5, p0, Lcom/join/mgps/ptr/header/b;->m:F

    .line 70
    .line 71
    mul-float v2, v2, v5

    .line 72
    .line 73
    move v8, v4

    .line 74
    move v4, v2

    .line 75
    move v2, v8

    .line 76
    :goto_0
    iget v5, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 77
    .line 78
    int-to-float v6, v5

    .line 79
    mul-float v6, v6, v7

    .line 80
    .line 81
    int-to-float v5, v5

    .line 82
    sub-float/2addr v6, v5

    .line 83
    neg-float v5, v6

    .line 84
    const/high16 v6, 0x40000000    # 2.0f

    .line 85
    .line 86
    div-float/2addr v5, v6

    .line 87
    int-to-float v1, v1

    .line 88
    add-float/2addr v1, v2

    .line 89
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->j:I

    .line 90
    .line 91
    int-to-float v2, v2

    .line 92
    sub-float v3, v7, v3

    .line 93
    .line 94
    mul-float v2, v2, v3

    .line 95
    .line 96
    div-float/2addr v2, v6

    .line 97
    sub-float/2addr v1, v2

    .line 98
    add-float/2addr v1, v4

    .line 99
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->u:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->w:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lz6/b;->c(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x42f00000    # 120.0f

    .line 7
    .line 8
    invoke-static {v0}, Lz6/b;->b(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/b;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 29
    .line 30
    const v1, 0x3f266666    # 0.65f

    .line 31
    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    mul-float v0, v0, v1

    .line 35
    .line 36
    float-to-int v0, v0

    .line 37
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->g:I

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    const v1, 0x3e8f5c29    # 0.28f

    .line 41
    .line 42
    .line 43
    mul-float v0, v0, v1

    .line 44
    .line 45
    neg-float v0, v0

    .line 46
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->h:F

    .line 47
    .line 48
    const/high16 v0, 0x41700000    # 15.0f

    .line 49
    .line 50
    invoke-static {v0}, Lz6/b;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-float v0, v0

    .line 55
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->i:F

    .line 56
    .line 57
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    const v1, 0x3e6147ae    # 0.22f

    .line 61
    .line 62
    .line 63
    mul-float v0, v0, v1

    .line 64
    .line 65
    float-to-int v0, v0

    .line 66
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->j:I

    .line 67
    .line 68
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 69
    .line 70
    int-to-float v2, v1

    .line 71
    int-to-float v3, v0

    .line 72
    const v4, 0x3f99999a    # 1.2f

    .line 73
    .line 74
    .line 75
    mul-float v3, v3, v4

    .line 76
    .line 77
    sub-float/2addr v2, v3

    .line 78
    int-to-float v3, v1

    .line 79
    const v4, 0x3ed70a3d    # 0.42f

    .line 80
    .line 81
    .line 82
    mul-float v3, v3, v4

    .line 83
    .line 84
    add-float/2addr v2, v3

    .line 85
    iput v2, p0, Lcom/join/mgps/ptr/header/b;->k:F

    .line 86
    .line 87
    int-to-float v2, v1

    .line 88
    int-to-float v0, v0

    .line 89
    const v3, 0x3fa66666    # 1.3f

    .line 90
    .line 91
    .line 92
    mul-float v0, v0, v3

    .line 93
    .line 94
    sub-float/2addr v2, v0

    .line 95
    int-to-float v0, v1

    .line 96
    mul-float v0, v0, v4

    .line 97
    .line 98
    add-float/2addr v2, v0

    .line 99
    iput v2, p0, Lcom/join/mgps/ptr/header/b;->l:F

    .line 100
    .line 101
    const/high16 v0, 0x41200000    # 10.0f

    .line 102
    .line 103
    invoke-static {v0}, Lz6/b;->a(F)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    int-to-float v0, v0

    .line 108
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->m:F

    .line 109
    .line 110
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->f:I

    .line 111
    .line 112
    int-to-float v0, v0

    .line 113
    const v1, 0x3e99999a    # 0.3f

    .line 114
    .line 115
    .line 116
    mul-float v0, v0, v1

    .line 117
    .line 118
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->o:F

    .line 119
    .line 120
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 121
    .line 122
    int-to-float v0, v0

    .line 123
    const/high16 v1, 0x3f000000    # 0.5f

    .line 124
    .line 125
    mul-float v0, v0, v1

    .line 126
    .line 127
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->p:F

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/join/mgps/ptr/header/b;->e:I

    .line 131
    .line 132
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->w:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method private k()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/b$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/ptr/header/b$a;-><init>(Lcom/join/mgps/ptr/header/b;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/ptr/header/b;->d:Landroid/view/animation/Animation;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->d:Landroid/view/animation/Animation;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->d:Landroid/view/animation/Animation;

    .line 19
    .line 20
    sget-object v1, Lcom/join/mgps/ptr/header/b;->I:Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->d:Landroid/view/animation/Animation;

    .line 26
    .line 27
    const-wide/16 v1, 0x3e8

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 6
    .line 7
    iget v2, p0, Lcom/join/mgps/ptr/header/b;->e:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/b;->b(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/b;->c(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/header/b;->d(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/header/b;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/b;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/b;->j(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/b;->q:F

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/header/b;->j(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotate"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/b;->r:F

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    iget p4, p0, Lcom/join/mgps/ptr/header/b;->g:I

    .line 2
    .line 3
    add-int/2addr p4, p2

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->d:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/b;->v:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/view/View;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/ptr/header/b;->d:Landroid/view/animation/Animation;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/b;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/ptr/header/b;->v:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/ptr/header/b;->h()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
