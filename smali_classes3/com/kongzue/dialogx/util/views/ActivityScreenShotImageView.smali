.class public Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static m:Z = true

.field public static n:Z


# instance fields
.field public b:Z

.field c:F

.field d:F

.field e:F

.field f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/kongzue/dialogx/interfaces/BaseDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f:Z

    .line 3
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->i:Z

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f:Z

    .line 7
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->i:Z

    .line 8
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f:Z

    .line 11
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->i:Z

    .line 12
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->getDecorView()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->i:Z

    .line 17
    .line 18
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->l:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->setContentViewVisibility(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v1, v2

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 73
    .line 74
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v3, Landroid/graphics/Canvas;

    .line 79
    .line 80
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    sget-boolean v4, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_2
    sget-boolean v3, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->m:Z

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    sput-boolean v2, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->m:Z

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-static {v1, v2, v2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    .line 121
    .line 122
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->j:Z

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->setContentViewVisibility(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->l:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->l:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_1
    return-void
.end method

.method private d(Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->g:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->h:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->g:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->h:I

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->b()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private getDecorView()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->l:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/kongzue/dialogx/impl/a;->d()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    instance-of v1, v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->getFromActivity()Landroid/app/Activity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    return-object v0
.end method


# virtual methods
.method public a(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->l:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->setContentViewVisibility(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->k:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 9
    .line 10
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-ltz v0, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 17
    .line 18
    cmpl-float v0, v0, v1

    .line 19
    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->j:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/high16 v0, -0x1000000

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 43
    .line 44
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 45
    .line 46
    sub-float/2addr v1, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 51
    .line 52
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 58
    .line 59
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 60
    .line 61
    iget v4, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 62
    .line 63
    sub-float/2addr v3, v4

    .line 64
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 68
    .line 69
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 70
    .line 71
    iget v4, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 72
    .line 73
    sub-float v4, v1, v4

    .line 74
    .line 75
    invoke-virtual {v0, v1, v3, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 79
    .line 80
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 81
    .line 82
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 86
    .line 87
    iget v3, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 88
    .line 89
    sub-float v3, v1, v3

    .line 90
    .line 91
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 100
    .line 101
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    const/4 v0, -0x1

    .line 108
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 109
    .line 110
    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    int-to-float p2, p2

    .line 11
    cmpl-float p1, p1, p2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    int-to-float p2, p2

    .line 22
    cmpl-float p1, p1, p2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->c:F

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    int-to-float p1, p1

    .line 41
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->d:F

    .line 42
    .line 43
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->j:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected setContentViewVisibility(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->k:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->k:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->getDecorView()Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const/16 v0, 0x8

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->k:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->e:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->f:Z

    .line 9
    .line 10
    return-void
.end method
