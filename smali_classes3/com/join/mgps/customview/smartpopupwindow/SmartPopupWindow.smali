.class public Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x2

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f:Z

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g:I

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    const/4 p3, 0x2

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j:I

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k:I

    .line 12
    new-instance p2, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    iput-object p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 13
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d:Landroid/content/Context;

    return-void
.end method

.method private A(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v2, v0, v1

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x2

    .line 11
    new-array v2, v2, [F

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput v1, v2, v3

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aput v0, v2, v1

    .line 18
    .line 19
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$d;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$d;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v1, 0x168

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private G(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchOutsideDismiss"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method private H(IILandroid/view/View;IIII)V
    .locals 6
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "anchor",
            "verticalGravity",
            "horizontalGravity",
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p5, p1, p6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->t(Landroid/view/View;III)I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    invoke-direct {p0, p3, p4, p2, p7}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->u(Landroid/view/View;III)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p3

    .line 11
    move v4, p1

    .line 12
    move v5, p2

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->A(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->H(IILandroid/view/View;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentView"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private t(Landroid/view/View;III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "horizontalGravity",
            "measuredW",
            "x"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p2, v1, :cond_2

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sub-int/2addr p3, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    sub-int/2addr p4, p3

    .line 25
    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    div-int/2addr p1, v0

    .line 31
    div-int/2addr p3, v0

    .line 32
    sub-int/2addr p1, p3

    .line 33
    :goto_1
    add-int/2addr p4, p1

    .line 34
    :goto_2
    return p4
.end method

.method private u(Landroid/view/View;III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "verticalGravity",
            "measuredH",
            "y"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    if-eq p2, p1, :cond_2

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-int/2addr p3, p1

    .line 23
    :cond_2
    sub-int/2addr p4, p3

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    div-int/lit8 p1, p1, 0x2

    .line 30
    .line 31
    div-int/lit8 p3, p3, 0x2

    .line 32
    .line 33
    add-int/2addr p1, p3

    .line 34
    :goto_0
    sub-int/2addr p4, p1

    .line 35
    :goto_1
    return p4
.end method

.method private v()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v2, v0, v1

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x2

    .line 11
    new-array v2, v2, [F

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput v0, v2, v3

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aput v1, v2, v0

    .line 18
    .line 19
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;-><init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v1, 0x168

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static w(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1
    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static y(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->w(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public B(Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchorView",
            "verticalPos",
            "horizontalPos"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->E(Landroid/view/View;IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public C(Landroid/view/View;IIII)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchorView",
            "verticalPos",
            "horizontalPos",
            "x",
            "y"
        }
    .end annotation

    .line 1
    const/4 v6, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->D(Landroid/view/View;IIIIZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public D(Landroid/view/View;IIIIZ)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchorView",
            "verticalPos",
            "horizontalPos",
            "x",
            "y",
            "fitInScreen"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i:Landroid/view/View;

    .line 5
    .line 6
    iput p4, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l:I

    .line 7
    .line 8
    iput p5, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m:I

    .line 9
    .line 10
    iput p2, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j:I

    .line 11
    .line 12
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->F()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->s(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->y(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->y(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez p6, :cond_0

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    new-array v3, v3, [I

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 60
    .line 61
    .line 62
    aget v4, v3, v0

    .line 63
    .line 64
    add-int/2addr p4, v4

    .line 65
    const/4 v4, 0x1

    .line 66
    aget v3, v3, v4

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    add-int/2addr v3, v4

    .line 73
    add-int/2addr p5, v3

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->u(Landroid/view/View;III)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-direct {p0, p1, p3, v2, p4}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->t(Landroid/view/View;III)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p6, :cond_1

    .line 83
    .line 84
    invoke-static {p0, p1, p3, p2, v0}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public E(Landroid/view/View;IIZ)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchorView",
            "verticalPos",
            "horizontalPos",
            "fitInScreen"
        }
    .end annotation

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v6, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->D(Landroid/view/View;IIIIZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->v()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->z()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gravity",
            "x",
            "y"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l:I

    .line 7
    .line 8
    iput p4, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->s(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f:Z

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->G(Z)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g:I

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
