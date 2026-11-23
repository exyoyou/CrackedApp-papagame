.class public Lcom/byazt/kt/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kt/tt$c;,
        Lcom/byazt/kt/tt$tt;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/kt/tt$tt;

.field public final tt:Lcom/byazt/kt/tt$c;

.field public final ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/kt/tt$tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    .line 5
    .line 6
    new-instance p1, Lcom/byazt/kt/tt$c;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/byazt/kt/tt$c;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method private a(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v1}, Lcom/byazt/kt/tt$tt;->c()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2
    iget-object v3, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v3, v2}, Lcom/byazt/kt/tt$c;->n(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    .line 3
    :goto_1
    iget-object p1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {p1, v2}, Lcom/byazt/kt/tt$c;->ve(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method private sp(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->ve(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private x(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->uj(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->x(Landroid/view/View;)Z

    return v2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/tt$c;->ve(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/tt$c;->uj(I)Z

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->x(Landroid/view/View;)Z

    .line 9
    iget-object p1, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {p1, v0}, Lcom/byazt/kt/tt$tt;->c(I)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v0}, Lcom/byazt/kt/tt$c;->c()V

    .line 17
    iget-object v0, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 18
    iget-object v1, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    iget-object v2, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/byazt/kt/tt$tt;->uj(Landroid/view/View;)V

    .line 19
    iget-object v1, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0}, Lcom/byazt/kt/tt$tt;->tt()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->a(I)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->tt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/tt$c;->uj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-direct {p0, v0}, Lcom/byazt/kt/tt;->x(Landroid/view/View;)Z

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->c(I)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/tt$c;->uj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->x(Landroid/view/View;)Z

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {p1, v0}, Lcom/byazt/kt/tt$tt;->c(I)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {p2}, Lcom/byazt/kt/tt$tt;->c()I

    move-result p2

    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p2}, Lcom/byazt/kt/tt;->a(I)I

    move-result p2

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v0, p2, p4}, Lcom/byazt/kt/tt$c;->insert(IZ)V

    if-eqz p4, :cond_1

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->sp(Landroid/view/View;)V

    .line 25
    :cond_1
    iget-object p4, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {p4, p1, p2, p3}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {p2}, Lcom/byazt/kt/tt$tt;->c()I

    move-result p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/byazt/kt/tt;->a(I)I

    move-result p2

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v0, p2, p3}, Lcom/byazt/kt/tt$c;->insert(IZ)V

    if-eqz p3, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->sp(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {p3, p1, p2}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/kt/tt;->c(Landroid/view/View;IZ)V

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->a(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/tt$c;->uj(I)Z

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->ve(I)V

    return-void
.end method

.method public n(Landroid/view/View;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/tt$c;->ve(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/tt$c;->tt(I)V

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->x(Landroid/view/View;)Z

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "trying to unhide a view that was not hidden"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "view is not a child, cannot hide "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/byazt/kt/tt$c;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", hidden list:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public tt()I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0}, Lcom/byazt/kt/tt$tt;->c()I

    move-result v0

    iget-object v1, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public tt(Landroid/view/View;)I
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/tt$c;->ve(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/tt$c;->n(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public tt(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->a(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->tt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public uj(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->tt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public uj(Landroid/view/View;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0, p1}, Lcom/byazt/kt/tt$tt;->c(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/kt/tt;->tt:Lcom/byazt/kt/tt$c;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/tt$c;->c(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/kt/tt;->sp(Landroid/view/View;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "view is not a child, cannot hide "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ve()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v0}, Lcom/byazt/kt/tt$tt;->c()I

    move-result v0

    return v0
.end method

.method public ve(I)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    iget-object v3, p0, Lcom/byazt/kt/tt;->c:Lcom/byazt/kt/tt$tt;

    invoke-interface {v3, v2}, Lcom/byazt/kt/tt$tt;->tt(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->uj()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(Landroid/view/View;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/kt/tt;->ve:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
