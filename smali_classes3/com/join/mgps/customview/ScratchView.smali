.class public Lcom/join/mgps/customview/ScratchView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScratchView$b;,
        Lcom/join/mgps/customview/ScratchView$c;
    }
.end annotation


# static fields
.field private static w:Landroid/graphics/Bitmap;

.field private static x:Landroid/graphics/Bitmap;


# instance fields
.field public final b:I

.field public final c:I

.field private final d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Canvas;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private k:I

.field private l:I

.field private m:Lcom/join/mgps/customview/ScratchView$b;

.field private n:Lcom/join/mgps/customview/ScratchView$c;

.field private o:I

.field private p:I

.field private volatile q:Z

.field private r:Z

.field private s:Ljava/lang/Runnable;

.field private t:Landroid/graphics/Bitmap;

.field u:Z

.field v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/ScratchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/ScratchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x46

    .line 4
    iput p3, p0, Lcom/join/mgps/customview/ScratchView;->b:I

    const/16 p3, 0x32

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/ScratchView;->c:I

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 7
    iput-boolean p3, p0, Lcom/join/mgps/customview/ScratchView;->r:Z

    .line 8
    new-instance v0, Lcom/join/mgps/customview/ScratchView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ScratchView$a;-><init>(Lcom/join/mgps/customview/ScratchView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->s:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->u:Z

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/ScratchView;->v:I

    .line 11
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->scratchView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->d:I

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->i()V

    return-void
.end method

.method static synthetic a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->x:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ScratchView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScratchView;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/ScratchView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/join/mgps/customview/ScratchView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScratchView;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "reqWidth",
            "reqHeight"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    .line 3
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4
    .line 5
    if-gt v0, p2, :cond_1

    .line 6
    .line 7
    if-le p0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    goto :goto_2

    .line 12
    :cond_1
    :goto_0
    if-le p0, v0, :cond_2

    .line 13
    .line 14
    div-int/2addr v0, p2

    .line 15
    int-to-double p0, v0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    div-int/2addr p0, p1

    .line 22
    int-to-double p0, p0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    :goto_1
    double-to-int p0, p0

    .line 28
    :goto_2
    return p0
.end method

.method public static f(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "resId",
            "reqWidth",
            "reqHeight"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p2, p3}, Lcom/join/mgps/customview/ScratchView;->e(Landroid/graphics/BitmapFactory$Options;II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 4
    .line 5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->g:Landroid/graphics/Canvas;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Path;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->d:I

    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    .line 12
    .line 13
    iget v3, p0, Lcom/join/mgps/customview/ScratchView;->p:I

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/ScratchView;->f(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->x:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    .line 26
    .line 27
    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->p:I

    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/join/mgps/customview/ScratchView;->x:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->g:Landroid/graphics/Canvas;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/Canvas;

    .line 42
    .line 43
    sget-object v1, Lcom/join/mgps/customview/ScratchView;->x:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->g:Landroid/graphics/Canvas;

    .line 49
    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->m()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->l()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Landroid/graphics/Rect;

    .line 57
    .line 58
    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    .line 59
    .line 60
    iget v2, p0, Lcom/join/mgps/customview/ScratchView;->p:I

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/customview/ScratchView;->g:Landroid/graphics/Canvas;

    .line 67
    .line 68
    sget-object v2, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    iget-object v4, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Path;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f0711b6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/join/mgps/customview/ScratchView;->k:I

    .line 34
    .line 35
    const/16 v0, 0x32

    .line 36
    .line 37
    iput v0, p0, Lcom/join/mgps/customview/ScratchView;->l:I

    .line 38
    .line 39
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 2
    .line 3
    const-string v1, "#c3c3c3"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 31
    .line 32
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->j:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/high16 v1, 0x41a00000    # 20.0f

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    const-string v1, "#c3c3c3"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 31
    .line 32
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Paint;

    .line 45
    .line 46
    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->k:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->x:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->i()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->h()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 9
    .line 10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->m:Lcom/join/mgps/customview/ScratchView$b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/mgps/customview/ScratchView$b;->complete()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->g()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->x:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->p:I

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->h()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->u:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->r:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/join/mgps/customview/ScratchView;->v:I

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "\u5df2\u7ecf\u6ca1\u6709\u6b21\u6570\u4e86\uff01"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    float-to-int v2, v2

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    float-to-int p1, p1

    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-eq v0, v3, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/join/mgps/customview/ScratchView;->h:I

    .line 57
    .line 58
    sub-int v0, v2, v0

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v3, p0, Lcom/join/mgps/customview/ScratchView;->i:I

    .line 65
    .line 66
    sub-int v3, p1, v3

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x3

    .line 73
    if-gt v0, v4, :cond_3

    .line 74
    .line 75
    if-le v3, v4, :cond_4

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Path;

    .line 78
    .line 79
    int-to-float v3, v2

    .line 80
    int-to-float v4, p1

    .line 81
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->n:Lcom/join/mgps/customview/ScratchView$c;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/join/mgps/customview/ScratchView$c;->onScratch()V

    .line 89
    .line 90
    .line 91
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/ScratchView;->h:I

    .line 92
    .line 93
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->i:I

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/customview/ScratchView;->s:Ljava/lang/Runnable;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/customview/ScratchView;->r:Z

    .line 102
    .line 103
    iput v2, p0, Lcom/join/mgps/customview/ScratchView;->h:I

    .line 104
    .line 105
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->i:I

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Path;

    .line 108
    .line 109
    int-to-float v2, v2

    .line 110
    int-to-float p1, p1

    .line 111
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    .line 123
    .line 124
    return v1
.end method

.method public setCanCratch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canCratch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScratchView;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCompletePercentage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "per"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnCompleteListener(Lcom/join/mgps/customview/ScratchView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOnCompleteListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScratchView;->m:Lcom/join/mgps/customview/ScratchView$b;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScratchListener(Lcom/join/mgps/customview/ScratchView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOnScratchListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScratchView;->n:Lcom/join/mgps/customview/ScratchView$c;

    .line 2
    .line 3
    return-void
.end method
