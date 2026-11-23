.class abstract Lcom/melnykov/fab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/widget/AbsListView;

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/a;->d:Landroid/widget/AbsListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/melnykov/fab/a;->d:Landroid/widget/AbsListView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    return v1
.end method

.method private c(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/a;->c:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method


# virtual methods
.method abstract d()V
.end method

.method abstract e()V
.end method

.method public f(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/a;->d:Landroid/widget/AbsListView;

    .line 2
    .line 3
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/melnykov/fab/a;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/melnykov/fab/a;->c(I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/melnykov/fab/a;->b()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lcom/melnykov/fab/a;->b:I

    .line 15
    .line 16
    sub-int/2addr p2, p1

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget p3, p0, Lcom/melnykov/fab/a;->e:I

    .line 22
    .line 23
    if-le p2, p3, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    :goto_0
    if-eqz p2, :cond_3

    .line 29
    .line 30
    iget p2, p0, Lcom/melnykov/fab/a;->b:I

    .line 31
    .line 32
    if-le p2, p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->e()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->d()V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    iput p1, p0, Lcom/melnykov/fab/a;->b:I

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_4
    iget p1, p0, Lcom/melnykov/fab/a;->c:I

    .line 45
    .line 46
    if-le p2, p1, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->e()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_5
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->d()V

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-direct {p0}, Lcom/melnykov/fab/a;->b()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/melnykov/fab/a;->b:I

    .line 60
    .line 61
    iput p2, p0, Lcom/melnykov/fab/a;->c:I

    .line 62
    .line 63
    :goto_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
