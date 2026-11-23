.class public Lcom/join/mgps/ptr/header/RentalsSunHeaderView;
.super Lcom/join/mgps/ptr/PtrUIHeader;
.source "SourceFile"


# instance fields
.field private b:Lcom/join/mgps/ptr/header/b;

.field private c:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private d:Lcom/join/mgps/ptr/indicator/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->f()V

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

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->f()V

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

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/join/mgps/ptr/header/b;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/b;->stop()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/b;->g(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "isUnderTouch",
            "status",
            "ptrIndicator"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p2, p3}, Lcom/join/mgps/ptr/header/b;->g(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/b;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/b;->start()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/b;->g(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/b;->i(F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/b;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/b;->N()F

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
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
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 10
    .line 11
    add-int/2addr p4, p1

    .line 12
    sub-int/2addr p4, p2

    .line 13
    add-int/2addr p5, v0

    .line 14
    sub-int/2addr p5, p3

    .line 15
    invoke-virtual {v1, p1, v0, p4, p5}, Lcom/join/mgps/ptr/header/b;->setBounds(IIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
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
    iget-object p2, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->b:Lcom/join/mgps/ptr/header/b;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/ptr/header/b;->e()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    mul-int/lit8 p2, p2, 0x5

    .line 8
    .line 9
    div-int/lit8 p2, p2, 0x4

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr p2, v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr p2, v0

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setUp(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrFrameLayout"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    new-instance p1, Lcom/join/mgps/ptr/indicator/b;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/join/mgps/ptr/indicator/b;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->d:Lcom/join/mgps/ptr/indicator/b;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/header/RentalsSunHeaderView;->c:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrIndicator(Lcom/join/mgps/ptr/indicator/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
