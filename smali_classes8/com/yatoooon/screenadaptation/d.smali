.class public Lcom/yatoooon/screenadaptation/d;
.super Lcom/yatoooon/screenadaptation/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yatoooon/screenadaptation/a;-><init>(Landroid/content/Context;IIFLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k(F)F
    .locals 2

    .line 1
    const-string v0, "px"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yatoooon/screenadaptation/a;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->c:F

    .line 12
    .line 13
    iget v1, p0, Lcom/yatoooon/screenadaptation/a;->e:I

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    div-float/2addr v0, v1

    .line 17
    mul-float p1, p1, v0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    const-string v0, "dp"

    .line 21
    .line 22
    iget-object v1, p0, Lcom/yatoooon/screenadaptation/a;->h:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->a:F

    .line 31
    .line 32
    invoke-static {v0, p1}, Lxa/b;->c(FF)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->f:I

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    const/high16 v1, 0x43200000    # 160.0f

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    int-to-float p1, p1

    .line 43
    mul-float v0, v0, p1

    .line 44
    .line 45
    iget p1, p0, Lcom/yatoooon/screenadaptation/a;->c:F

    .line 46
    .line 47
    iget v1, p0, Lcom/yatoooon/screenadaptation/a;->e:I

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    div-float/2addr p1, v1

    .line 51
    mul-float v0, v0, p1

    .line 52
    .line 53
    return v0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method private l(Landroid/view/View;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->m(Landroid/widget/TextView;)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private m(Landroid/widget/TextView;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/yatoooon/screenadaptation/a;->g:F

    .line 6
    .line 7
    mul-float p1, p1, v0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->k(F)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private n(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    int-to-float p1, p1

    .line 10
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->k(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    return p1
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    .line 27
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 34
    .line 35
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lxa/a;->b(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Lxa/a;->g(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lxa/a;->a(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p1, v0}, Lxa/a;->f(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lxa/a;->d(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Lxa/a;->i(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lxa/a;->c(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p1, v0}, Lxa/a;->h(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {p0, v2}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {p0, v3}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    .line 15
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/yatoooon/screenadaptation/d;->n(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/d;->l(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
