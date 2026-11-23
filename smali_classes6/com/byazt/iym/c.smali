.class public Lcom/byazt/iym/c;
.super Lcom/byazt/kt/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/kt/RecyclerView$c<",
        "Lcom/byazt/iym/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/iym/n;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/iym/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:F

.field public final ve:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/iym/c;->tt:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/iym/c;->n:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/iym/c;->c:Landroid/content/Context;

    .line 19
    .line 20
    iput p2, p0, Lcom/byazt/iym/c;->ve:F

    .line 21
    .line 22
    iput p3, p0, Lcom/byazt/iym/c;->uj:F

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/iym/c;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic c(Landroid/view/ViewGroup;I)Lcom/byazt/kt/RecyclerView$gu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/iym/c;->ve(Landroid/view/ViewGroup;I)Lcom/byazt/iym/n;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/iym/n;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/byazt/kt/RecyclerView$c;->c(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 8
    invoke-virtual {p1}, Lcom/byazt/iym/n;->cu()V

    return-void
.end method

.method public c(Lcom/byazt/iym/n;I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/iym/c;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/iym/tt;

    .line 10
    iget v0, p0, Lcom/byazt/iym/c;->ve:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/byazt/iym/c;->uj:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/iym/n;->c(Lcom/byazt/iym/tt;FF)V

    return-void
.end method

.method public bridge synthetic c(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/byazt/iym/n;

    invoke-virtual {p0, p1}, Lcom/byazt/iym/c;->c(Lcom/byazt/iym/n;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/byazt/kt/RecyclerView$gu;I)V
    .locals 0

    .line 3
    check-cast p1, Lcom/byazt/iym/n;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/iym/c;->c(Lcom/byazt/iym/n;I)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/iym/tt;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/iym/c;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/byazt/iym/c;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$c;->ve()V

    return-void
.end method

.method public tt(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/c;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/iym/n;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/byazt/iym/n;->cu()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/c;->n:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public ve(Landroid/view/ViewGroup;I)Lcom/byazt/iym/n;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/iym/c;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/vfu/a;->t(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/byazt/iym/n;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Lcom/byazt/iym/n;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/iym/c;->n:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p2
.end method
