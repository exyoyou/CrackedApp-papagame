.class public Lcom/join/mgps/customview/SlidingTabForumLayout;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabForumLayout$f;,
        Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;,
        Lcom/join/mgps/customview/SlidingTabForumLayout$e;
    }
.end annotation


# instance fields
.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumTabBean;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/join/mgps/customview/SlidingTabForumLayout$e;

.field private M:Landroid/os/Handler;

.field private N:Lcom/join/mgps/customview/SlidingTabForumLayout$f;

.field private O:I

.field private P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

.field private Q:I

.field private R:Ljava/lang/Runnable;


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

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const v0, -0x98967f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->O:I

    .line 3
    sget-object v0, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->Q:I

    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/SlidingTabForumLayout$d;-><init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->R:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->s(Landroid/content/Context;)V

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

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0x98967f

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->O:I

    .line 9
    sget-object p2, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    const/16 p2, 0x32

    .line 10
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->Q:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/SlidingTabForumLayout$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabForumLayout$d;-><init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->R:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->s(Landroid/content/Context;)V

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
            "defStyle"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x98967f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->O:I

    .line 15
    sget-object p2, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    const/16 p2, 0x32

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->Q:I

    .line 17
    new-instance p2, Lcom/join/mgps/customview/SlidingTabForumLayout$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabForumLayout$d;-><init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->R:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->s(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/customview/SlidingTabForumLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->L:Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/SlidingTabForumLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->O:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/SlidingTabForumLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->O:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/SlidingTabForumLayout;Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->N:Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->M:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/join/mgps/customview/SlidingTabForumLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->Q:I

    .line 2
    .line 3
    return p0
.end method

.method private t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->L:Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->getScrollOffset()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-interface {v0, v1, v2, v3}, Lcom/join/mgps/customview/SlidingTabForumLayout$e;->a(III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->c(ILandroid/view/View;)V

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
    new-instance v0, Lcom/join/mgps/customview/SlidingTabForumLayout$c;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabForumLayout$c;-><init>(Lcom/join/mgps/customview/SlidingTabForumLayout;I)V

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->c(ILandroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->K:Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 18
    .line 19
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 20
    .line 21
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->K:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumTabBean;->getTab_name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->d(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/join/mgps/customview/SlidingTabForumLayout$b;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/SlidingTabForumLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public h(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 15
    .line 16
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    mul-float p2, p2, v0

    .line 30
    .line 31
    float-to-int p2, p2

    .line 32
    invoke-super {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->t()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->P:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->N:Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabForumLayout$f;->a(Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->M:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->R:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->M:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->R:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method s(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const p1, -0xb8b00

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->setHandler(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/join/mgps/customview/SlidingTabForumLayout$a;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/SlidingTabForumLayout$a;-><init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->setOnScrollStateChangedListener(Lcom/join/mgps/customview/SlidingTabForumLayout$f;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->M:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public setItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumTabBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->K:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->K:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->K:Ljava/util/List;

    .line 18
    .line 19
    :cond_1
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->K:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->g()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public setOnForumSlidingTabListener(Lcom/join/mgps/customview/SlidingTabForumLayout$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->L:Lcom/join/mgps/customview/SlidingTabForumLayout$e;

    .line 2
    .line 3
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

.method public setOnScrollStateChangedListener(Lcom/join/mgps/customview/SlidingTabForumLayout$f;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout;->N:Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 2
    .line 3
    return-void
.end method
