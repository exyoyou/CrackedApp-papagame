.class public Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;,
        Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;,
        Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;
    }
.end annotation


# static fields
.field private static final L:[I


# instance fields
.field private A:I

.field private B:Landroid/graphics/Typeface;

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/util/Locale;

.field private G:I

.field private H:Z

.field I:I

.field J:I

.field K:I

.field protected b:Landroid/widget/LinearLayout$LayoutParams;

.field protected c:Landroid/widget/LinearLayout$LayoutParams;

.field private final d:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

.field public e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected f:Landroid/widget/LinearLayout;

.field protected g:Landroidx/viewpager/widget/ViewPager;

.field protected h:I

.field protected i:I

.field protected j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

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

.field private y:I

.field private z:I


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
    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->L:[I

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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
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
    new-instance p3, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;)V

    iput-object p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->d:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:F

    const v0, -0xb8b00

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    const v1, -0x141415

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    const v1, 0xffffff

    .line 9
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

    .line 10
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    const/16 v2, 0x34

    .line 12
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    const/4 v2, 0x3

    .line 13
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    const v3, 0x3f19999a    # 0.6f

    .line 14
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:F

    .line 15
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    const/16 v3, 0xc

    .line 16
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    const/16 v3, 0x18

    .line 17
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    const/16 v3, 0xe

    .line 19
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    const v3, -0xb2b2b3

    .line 20
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 21
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:Landroid/graphics/Typeface;

    .line 23
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    .line 24
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    const v0, 0x7f080185

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:I

    .line 26
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->G:I

    .line 27
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->H:Z

    .line 28
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->I:I

    .line 29
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->J:I

    .line 30
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->K:I

    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 32
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 38
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    .line 39
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    .line 40
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    int-to-float v3, v3

    invoke-static {p3, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 41
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 42
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    .line 43
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    .line 44
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 45
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 47
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 50
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    const/16 p2, 0x9

    .line 51
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 52
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

    .line 53
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    const/16 p2, 0xa

    .line 54
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 55
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    const/4 p2, 0x7

    .line 56
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    const/4 p2, 0x6

    .line 57
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:I

    const/4 p2, 0x5

    .line 58
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    const/4 p2, 0x4

    .line 59
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    const/16 p2, 0x8

    .line 60
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:Landroid/graphics/Paint;

    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->F:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->F:Ljava/util/Locale;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(II)V
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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b(ILandroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected b(ILandroid/view/View;)V
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
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 7
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
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const v2, 0x1020014

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const/16 p2, 0x11

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 34
    .line 35
    .line 36
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v3, -0x2

    .line 39
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47
    .line 48
    .line 49
    const/16 v5, 0xd

    .line 50
    .line 51
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const v5, 0x1020015

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 67
    .line 68
    .line 69
    const-string v5, "#ffffff"

    .line 70
    .line 71
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    const v5, 0x7f080da4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .line 86
    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/join/android/app/common/utils/q;->g()F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/high16 v6, 0x40e00000    # 7.0f

    .line 102
    .line 103
    mul-float v3, v3, v6

    .line 104
    .line 105
    float-to-int v3, v3

    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {v5, v3, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    .line 109
    .line 110
    const/16 v3, 0xf

    .line 111
    .line 112
    const/4 v6, -0x1

    .line 113
    invoke-virtual {v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    const/16 v3, 0x8

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 132
    .line 133
    .line 134
    const/high16 v3, 0x41000000    # 8.0f

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b(ILandroid/view/View;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v1, v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;->a(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->a(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->c(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method protected f(II)V
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
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

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
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    .line 22
    .line 23
    sub-int/2addr v0, p1

    .line 24
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    .line 25
    .line 26
    if-eq v0, p1, :cond_3

    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

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

.method g(Landroid/widget/TextView;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "biground",
            "number"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    const v2, 0x7f071013

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ge p2, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    const v1, 0x7f080da4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v3, v0, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const v6, 0x7f070993

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/high16 v5, 0x40e00000    # 7.0f

    .line 94
    .line 95
    invoke-static {v3, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    float-to-int v2, v2

    .line 100
    const/4 v5, 0x4

    .line 101
    invoke-virtual {v1, v0, v2, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 102
    .line 103
    .line 104
    const/16 v2, 0x11

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    const v1, 0x7f080ccb

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    invoke-virtual {p1, v3, v0, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    .line 124
    .line 125
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, ""

    .line 134
    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndicatorRatioH()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 2
    .line 3
    return v0
.end method

.method protected h()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_7

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    .line 17
    .line 18
    instance-of v3, v2, Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v2, Landroid/widget/TextView;

    .line 24
    .line 25
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:Landroid/graphics/Typeface;

    .line 32
    .line 33
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    .line 34
    .line 35
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    .line 37
    .line 38
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v1, v3, :cond_0

    .line 52
    .line 53
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:I

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    .line 59
    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    instance-of v3, v2, Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    const v3, 0x1020014

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/widget/TextView;

    .line 79
    .line 80
    const v5, 0x1020015

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 92
    .line 93
    int-to-float v5, v5

    .line 94
    invoke-virtual {v3, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:Landroid/graphics/Typeface;

    .line 98
    .line 99
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    .line 100
    .line 101
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    .line 103
    .line 104
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 105
    .line 106
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 110
    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-ne v1, v5, :cond_2

    .line 118
    .line 119
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:I

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    :cond_2
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 125
    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    instance-of v5, v5, Lcom/join/mgps/customview/e0;

    .line 141
    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 145
    .line 146
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-boolean v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    .line 158
    .line 159
    if-eqz v5, :cond_4

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 162
    .line 163
    .line 164
    :cond_4
    if-eqz v2, :cond_6

    .line 165
    .line 166
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

    .line 167
    .line 168
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    instance-of v3, v3, Lcom/join/mgps/customview/e0;

    .line 173
    .line 174
    if-eqz v3, :cond_6

    .line 175
    .line 176
    if-ne v1, v4, :cond_6

    .line 177
    .line 178
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->J:I

    .line 179
    .line 180
    if-lez v3, :cond_5

    .line 181
    .line 182
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g(Landroid/widget/TextView;I)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    const/16 v3, 0x8

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    mul-float v2, v2, v3

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:F

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    cmpl-float v4, v4, v5

    .line 53
    .line 54
    if-lez v4, :cond_1

    .line 55
    .line 56
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:I

    .line 57
    .line 58
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 59
    .line 60
    add-int/lit8 v5, v5, -0x1

    .line 61
    .line 62
    if-ge v4, v5, :cond_1

    .line 63
    .line 64
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    int-to-float v5, v5

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    int-to-float v4, v4

    .line 82
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:F

    .line 83
    .line 84
    mul-float v5, v5, v6

    .line 85
    .line 86
    sub-float v7, v3, v6

    .line 87
    .line 88
    mul-float v7, v7, v2

    .line 89
    .line 90
    add-float v2, v5, v7

    .line 91
    .line 92
    mul-float v4, v4, v6

    .line 93
    .line 94
    sub-float v5, v3, v6

    .line 95
    .line 96
    mul-float v5, v5, v1

    .line 97
    .line 98
    add-float v1, v4, v5

    .line 99
    .line 100
    :cond_1
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:F

    .line 101
    .line 102
    sub-float/2addr v3, v4

    .line 103
    sub-float v4, v1, v2

    .line 104
    .line 105
    mul-float v3, v3, v4

    .line 106
    .line 107
    const/high16 v4, 0x40000000    # 2.0f

    .line 108
    .line 109
    div-float/2addr v3, v4

    .line 110
    float-to-int v3, v3

    .line 111
    int-to-float v3, v3

    .line 112
    add-float v5, v2, v3

    .line 113
    .line 114
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

    .line 115
    .line 116
    sub-int v2, v0, v2

    .line 117
    .line 118
    int-to-float v6, v2

    .line 119
    sub-float v7, v1, v3

    .line 120
    .line 121
    int-to-float v12, v0

    .line 122
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    .line 123
    .line 124
    move-object v4, p1

    .line 125
    move v8, v12

    .line 126
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    .line 130
    .line 131
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 138
    .line 139
    sub-int v1, v0, v1

    .line 140
    .line 141
    int-to-float v10, v1

    .line 142
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    int-to-float v11, v1

    .line 149
    iget-object v13, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    .line 150
    .line 151
    move-object v8, p1

    .line 152
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:Landroid/graphics/Paint;

    .line 156
    .line 157
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 164
    .line 165
    add-int/lit8 v2, v2, -0x1

    .line 166
    .line 167
    if-ge v1, v2, :cond_2

    .line 168
    .line 169
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    int-to-float v5, v3

    .line 180
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 181
    .line 182
    int-to-float v6, v3

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    int-to-float v7, v2

    .line 188
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 189
    .line 190
    sub-int v2, v0, v2

    .line 191
    .line 192
    int-to-float v8, v2

    .line 193
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:Landroid/graphics/Paint;

    .line 194
    .line 195
    move-object v4, p1

    .line 196
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v1, v1, 0x1

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_2
    :goto_1
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
    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;

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
    iget p1, p1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;->b:I

    .line 11
    .line 12
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:I

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
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:I

    .line 11
    .line 12
    iput v0, v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;->b:I

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
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBadgeSize(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->I:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->J:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->K:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    .line 8
    .line 9
    .line 10
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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:F

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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRoundShow(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "isVisible"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->G:I

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->H:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    .line 6
    .line 7
    .line 8
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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

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
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:I

    .line 2
    .line 3
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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:Landroid/graphics/Typeface;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:Landroidx/viewpager/widget/ViewPager;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->d:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e()V

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
