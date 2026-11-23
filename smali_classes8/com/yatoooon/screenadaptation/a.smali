.class public abstract Lcom/yatoooon/screenadaptation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I

.field protected g:F

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/yatoooon/screenadaptation/a;->e:I

    .line 5
    .line 6
    iput p3, p0, Lcom/yatoooon/screenadaptation/a;->f:I

    .line 7
    .line 8
    iput p4, p0, Lcom/yatoooon/screenadaptation/a;->g:F

    .line 9
    .line 10
    iput-object p5, p0, Lcom/yatoooon/screenadaptation/a;->h:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/a;->j(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/yatoooon/screenadaptation/b;->a(Landroid/content/Context;)[F

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget v0, p1, v0

    .line 11
    .line 12
    iput v0, p0, Lcom/yatoooon/screenadaptation/a;->c:F

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    aget v0, p1, v0

    .line 16
    .line 17
    iput v0, p0, Lcom/yatoooon/screenadaptation/a;->d:F

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    aget v0, p1, v0

    .line 21
    .line 22
    iput v0, p0, Lcom/yatoooon/screenadaptation/a;->a:F

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    aget p1, p1, v0

    .line 26
    .line 27
    iput p1, p0, Lcom/yatoooon/screenadaptation/a;->b:F

    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public abstract e(Landroid/view/View;)V
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lwa/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lwa/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/yatoooon/screenadaptation/a;->g(Landroid/view/View;Lwa/b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final g(Landroid/view/View;Lwa/b;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-interface {p2, p1, p0}, Lwa/b;->a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1, p2}, Lcom/yatoooon/screenadaptation/a;->g(Landroid/view/View;Lwa/b;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p2, v1, p0}, Lwa/b;->a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p2, p1, p0}, Lwa/b;->a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public abstract h(Landroid/view/View;)V
.end method

.method public i(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yatoooon/screenadaptation/a;->j(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
