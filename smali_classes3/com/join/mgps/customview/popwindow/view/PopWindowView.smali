.class public Lcom/join/mgps/customview/popwindow/view/PopWindowView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;,
        Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    }
.end annotation


# static fields
.field public static t:I = 0x70000000

.field public static u:I = 0xa

.field public static v:I

.field public static w:I


# instance fields
.field b:Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;

.field private c:I

.field private d:Z

.field private e:Lcom/join/mgps/customview/popwindow/shape/a;

.field private f:Lo6/a;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Canvas;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->s:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->s:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->s:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Lcom/join/mgps/customview/popwindow/shape/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->e:Lcom/join/mgps/customview/popwindow/shape/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->t(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/popwindow/view/PopWindowView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setMaskColor(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Lo6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setTarget(Lo6/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/mgps/customview/popwindow/view/PopWindowView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setPadding(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setDismissOnTouch(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->s:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic m(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Lcom/join/mgps/customview/popwindow/shape/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setShape(Lcom/join/mgps/customview/popwindow/shape/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setPerformClick(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Lo6/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private q(Landroid/content/Context;)V
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
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->t:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->c:I

    .line 12
    .line 13
    sget v0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->u:I

    .line 14
    .line 15
    iput v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->j:I

    .line 16
    .line 17
    sget v0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->v:I

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->k:I

    .line 20
    .line 21
    sget v0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->w:I

    .line 22
    .line 23
    iput v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->l:I

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->d:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p:Z

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->q:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->r:Z

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->g:Landroid/graphics/Paint;

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->g:Landroid/graphics/Paint;

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 47
    .line 48
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->g:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;-><init>(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static s(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private setDismissOnTouch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dismissOnTouch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method private setMaskColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maskColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->c:I

    .line 2
    .line 3
    return-void
.end method

.method private setPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->j:I

    .line 2
    .line 3
    return-void
.end method

.method private setPerformClick(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPerformClick"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method private setReady(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReady"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private setShape(Lcom/join/mgps/customview/popwindow/shape/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->e:Lcom/join/mgps/customview/popwindow/shape/a;

    .line 2
    .line 3
    return-void
.end method

.method private setTarget(Lo6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 2
    .line 3
    return-void
.end method

.method private t(Landroid/app/Activity;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->m:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 7
    .line 8
    invoke-interface {v0}, Lo6/a;->b()Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Landroidx/cardview/widget/CardView;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 22
    .line 23
    .line 24
    iget v3, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->k:I

    .line 25
    .line 26
    int-to-float v3, v3

    .line 27
    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v5, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 37
    .line 38
    invoke-interface {v5}, Lo6/a;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget v6, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->l:I

    .line 43
    .line 44
    add-int/2addr v5, v6

    .line 45
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 51
    .line 52
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 55
    .line 56
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 57
    .line 58
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v5, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 65
    .line 66
    invoke-interface {v5}, Lo6/a;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iget v6, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->l:I

    .line 71
    .line 72
    add-int/2addr v5, v6

    .line 73
    invoke-direct {v4, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 77
    .line 78
    invoke-interface {v0}, Lo6/a;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->m:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/view/ViewGroup;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setReady(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->h:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->n:I

    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->o:I

    .line 18
    .line 19
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->h:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Canvas;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->h:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i:Landroid/graphics/Canvas;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i:Landroid/graphics/Canvas;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i:Landroid/graphics/Canvas;

    .line 45
    .line 46
    iget v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->c:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->e:Lcom/join/mgps/customview/popwindow/shape/a;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i:Landroid/graphics/Canvas;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->g:Landroid/graphics/Paint;

    .line 56
    .line 57
    iget v3, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->j:I

    .line 58
    .line 59
    iget v4, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->k:I

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/popwindow/shape/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->h:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
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
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->n:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->o:I

    .line 15
    .line 16
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->e:Lcom/join/mgps/customview/popwindow/shape/a;

    .line 10
    .line 11
    float-to-double v3, v0

    .line 12
    float-to-double v0, v1

    .line 13
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/join/mgps/customview/popwindow/shape/a;->d(DD)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p()V

    .line 38
    .line 39
    .line 40
    :cond_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->r:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 47
    .line 48
    invoke-interface {p1}, Lo6/a;->getView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 57
    .line 58
    invoke-interface {p1}, Lo6/a;->getView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    :cond_3
    return v2

    .line 66
    :cond_4
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->r:Z

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 73
    .line 74
    invoke-interface {p1}, Lo6/a;->getView()Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f:Lo6/a;

    .line 82
    .line 83
    invoke-interface {p1}, Lo6/a;->getView()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 88
    .line 89
    .line 90
    :cond_5
    return v2
.end method

.method public p()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->r()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->h:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i:Landroid/graphics/Canvas;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i:Landroid/graphics/Canvas;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;->onDismiss()V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dropDownHeight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public setDropDownView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dropDownView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->m:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setOnDismissListener(Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->k:I

    .line 2
    .line 3
    return-void
.end method
