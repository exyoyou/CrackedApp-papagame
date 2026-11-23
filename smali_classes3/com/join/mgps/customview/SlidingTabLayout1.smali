.class public Lcom/join/mgps/customview/SlidingTabLayout1;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout1$d;,
        Lcom/join/mgps/customview/SlidingTabLayout1$e;,
        Lcom/join/mgps/customview/SlidingTabLayout1$c;,
        Lcom/join/mgps/customview/SlidingTabLayout1$SavedState;
    }
.end annotation


# static fields
.field private static final J:[I


# instance fields
.field protected A:I

.field protected B:I

.field protected C:Landroid/graphics/Typeface;

.field protected D:I

.field private E:I

.field protected F:I

.field protected G:Ljava/util/Locale;

.field H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/join/mgps/customview/SlidingTabLayout1$d;

.field protected b:Landroid/widget/LinearLayout$LayoutParams;

.field protected c:Landroid/widget/LinearLayout$LayoutParams;

.field private final d:Lcom/join/mgps/customview/SlidingTabLayout1$e;

.field public e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected f:Landroid/widget/LinearLayout;

.field protected g:Landroidx/viewpager/widget/ViewPager;

.field protected h:I

.field protected i:I

.field protected j:F

.field protected k:Landroid/graphics/Paint;

.field protected l:Landroid/graphics/Paint;

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:I

.field protected t:F

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x1010095

    .line 2
    .line 3
    .line 4
    const v1, 0x1010098

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayout1;->J:[I

    .line 12
    .line 13
    return-void
.end method

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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lcom/join/mgps/customview/SlidingTabLayout1$e;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/SlidingTabLayout1$e;-><init>(Lcom/join/mgps/customview/SlidingTabLayout1;)V

    iput-object p3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Lcom/join/mgps/customview/SlidingTabLayout1$e;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    const v0, -0xb8b00

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    const v1, 0xf47500

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    const v1, 0xffffff

    .line 9
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 10
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    const/16 v2, 0x34

    .line 12
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    const/4 v2, 0x3

    .line 13
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    const v3, 0x3e99999a    # 0.3f

    .line 14
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:F

    .line 15
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    const/16 v3, 0xc

    .line 16
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    const/16 v3, 0x18

    .line 17
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    const/16 v3, 0xe

    .line 19
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    const/16 v3, 0x10

    .line 20
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    const v3, -0xb2b2b3

    .line 21
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 22
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:Landroid/graphics/Typeface;

    .line 24
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->D:I

    .line 25
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->E:I

    const v3, 0x7f080185

    .line 26
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    .line 27
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->H:Ljava/util/List;

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 29
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    .line 36
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    .line 37
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    int-to-float v3, v3

    invoke-static {p3, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 38
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 39
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 40
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    .line 41
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 42
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    .line 43
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 45
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    .line 46
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 47
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    invoke-virtual {v0, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    const/16 p2, 0x9

    .line 51
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    .line 52
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 53
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    const/16 p2, 0xa

    .line 54
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 55
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    const/4 p2, 0x7

    .line 56
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    const/4 p2, 0x6

    .line 57
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    const/4 p2, 0x5

    .line 58
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    const/4 p2, 0x4

    .line 59
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    const/16 p2, 0x8

    .line 60
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->G:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->G:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabLayout1;)Lcom/join/mgps/customview/SlidingTabLayout1$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->I:Lcom/join/mgps/customview/SlidingTabLayout1$d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected b(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "resId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->c(ILandroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected c(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "tab"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout1$b;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected d(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "title"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x11

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->c(ILandroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    mul-float v2, v2, v3

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-float v1, v1

    .line 46
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    cmpl-float v4, v4, v5

    .line 50
    .line 51
    if-lez v4, :cond_1

    .line 52
    .line 53
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 54
    .line 55
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 56
    .line 57
    add-int/lit8 v5, v5, -0x1

    .line 58
    .line 59
    if-ge v4, v5, :cond_1

    .line 60
    .line 61
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    int-to-float v5, v5

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    int-to-float v4, v4

    .line 79
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    .line 80
    .line 81
    mul-float v5, v5, v6

    .line 82
    .line 83
    sub-float v7, v3, v6

    .line 84
    .line 85
    mul-float v7, v7, v2

    .line 86
    .line 87
    add-float v2, v5, v7

    .line 88
    .line 89
    mul-float v4, v4, v6

    .line 90
    .line 91
    sub-float v5, v3, v6

    .line 92
    .line 93
    mul-float v5, v5, v1

    .line 94
    .line 95
    add-float v1, v4, v5

    .line 96
    .line 97
    :cond_1
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:F

    .line 98
    .line 99
    sub-float/2addr v3, v4

    .line 100
    sub-float v4, v1, v2

    .line 101
    .line 102
    mul-float v3, v3, v4

    .line 103
    .line 104
    const/high16 v4, 0x40000000    # 2.0f

    .line 105
    .line 106
    div-float/2addr v3, v4

    .line 107
    float-to-int v3, v3

    .line 108
    int-to-float v3, v3

    .line 109
    add-float v5, v2, v3

    .line 110
    .line 111
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    .line 112
    .line 113
    sub-int v2, v0, v2

    .line 114
    .line 115
    int-to-float v6, v2

    .line 116
    sub-float v7, v1, v3

    .line 117
    .line 118
    int-to-float v12, v0

    .line 119
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 120
    .line 121
    move-object v4, p1

    .line 122
    move v8, v12

    .line 123
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 127
    .line 128
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    .line 132
    .line 133
    const/4 v9, 0x0

    .line 134
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 135
    .line 136
    sub-int v1, v0, v1

    .line 137
    .line 138
    int-to-float v10, v1

    .line 139
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    int-to-float v11, v1

    .line 146
    iget-object v13, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 147
    .line 148
    move-object v8, p1

    .line 149
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 153
    .line 154
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 161
    .line 162
    add-int/lit8 v2, v2, -0x1

    .line 163
    .line 164
    if-ge v1, v2, :cond_2

    .line 165
    .line 166
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    int-to-float v5, v3

    .line 177
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 178
    .line 179
    int-to-float v6, v3

    .line 180
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    int-to-float v7, v2

    .line 185
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 186
    .line 187
    sub-int v2, v0, v2

    .line 188
    .line 189
    int-to-float v8, v2

    .line 190
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 191
    .line 192
    move-object v4, p1

    .line 193
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    .line 195
    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_2
    :goto_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 29
    .line 30
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 31
    .line 32
    if-ge v1, v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1$c;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayout1$c;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1$c;->a(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->b(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->d(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayout1$a;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/SlidingTabLayout1$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayout1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->H:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 103
    .line 104
    :goto_3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 105
    .line 106
    if-ge v1, v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->H:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->d(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorRatioH()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 2
    .line 3
    return v0
.end method

.method protected h(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "offset"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr v0, p2

    .line 17
    if-gtz p1, :cond_1

    .line 18
    .line 19
    if-lez p2, :cond_2

    .line 20
    .line 21
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    .line 22
    .line 23
    sub-int/2addr v0, p1

    .line 24
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->E:I

    .line 25
    .line 26
    if-eq v0, p1, :cond_3

    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->E:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method protected i()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    .line 17
    .line 18
    instance-of v3, v2, Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    check-cast v2, Landroid/widget/TextView;

    .line 23
    .line 24
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 25
    .line 26
    int-to-float v3, v3

    .line 27
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:Landroid/graphics/Typeface;

    .line 31
    .line 32
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->D:I

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ne v1, v3, :cond_0

    .line 51
    .line 52
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->H:Ljava/util/List;

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 62
    .line 63
    if-ne v1, v3, :cond_1

    .line 64
    .line 65
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 76
    .line 77
    .line 78
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->e(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayout1$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Lcom/join/mgps/customview/SlidingTabLayout1$SavedState;->b:I

    .line 11
    .line 12
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayout1$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 11
    .line 12
    iput v0, v1, Lcom/join/mgps/customview/SlidingTabLayout1$SavedState;->b:I

    .line 13
    .line 14
    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAllCaps"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dividerColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dividerPaddingPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorLineHeightPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicatorRatioH(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorRatioH"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOntabselected(Lcom/join/mgps/customview/SlidingTabLayout1$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ontabSelected"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->I:Lcom/join/mgps/customview/SlidingTabLayout1$d;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollOffsetPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldExpand"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    .line 2
    .line 3
    return-void
.end method

.method public setTabDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->H:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddingPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSizePx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeface",
            "style"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:Landroid/graphics/Typeface;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->D:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underlineColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "underlineHeightPx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Lcom/join/mgps/customview/SlidingTabLayout1$e;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "ViewPager does not have adapter instance."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
