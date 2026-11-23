.class public Lcom/join/mgps/customview/ScrollTextViewLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/os/Handler;

.field j:Ljava/lang/Runnable;

.field k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f4

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:I

    .line 13
    .line 14
    new-instance v2, Lcom/join/mgps/customview/ScrollTextViewLayout$a;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$a;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v2, Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$b;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    .line 27
    .line 28
    new-instance v2, Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/ScrollTextViewLayout$c;-><init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->k:Ljava/lang/Runnable;

    .line 34
    .line 35
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->scrollText:[I

    .line 36
    .line 37
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:I

    .line 46
    .line 47
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ScrollTextViewLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ScrollTextViewLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ScrollTextViewLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:I

    .line 5
    .line 6
    return v0
.end method

.method static synthetic j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextArray()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->k:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->g:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    .line 9
    .line 10
    iget v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->i:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:Landroid/widget/TextView;

    .line 12
    .line 13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->e:I

    .line 9
    .line 10
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "color"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->d:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsStop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isStop"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTextArray([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textArr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout;->b:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
