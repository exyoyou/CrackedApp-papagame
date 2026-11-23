.class public Lcom/byazt/sy/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x48
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ma/a;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/dj/tt;

.field public uj:Landroid/content/Context;

.field public ve:Lcom/byazt/sy/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    .line 3
    iput-object p2, p0, Lcom/byazt/sy/da;->ve:Lcom/byazt/sy/c;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/byazt/sy/da;->n:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/lr;->tt(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x3

    .line 8
    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/byazt/rgb/a;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/p;->uj(Lcom/byazt/ete/ic;)I

    move-result p2

    .line 10
    invoke-static {}, Lcom/byazt/rgb/a;->c()Lcom/byazt/lh/sp;

    move-result-object v0

    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/byazt/sy/da$1;

    invoke-direct {v1, p0, p2}, Lcom/byazt/sy/da$1;-><init>(Lcom/byazt/sy/da;I)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/dj/tt;Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/byazt/sy/da;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    .line 12
    iput-object p3, p0, Lcom/byazt/sy/da;->tt:Lcom/byazt/dj/tt;

    .line 13
    iput-object p4, p0, Lcom/byazt/sy/da;->uj:Landroid/content/Context;

    return-void
.end method

.method private tt(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    .line 1
    const-string v0, "overlay_tag"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of p1, p2, Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    check-cast p2, Landroid/view/ViewGroup;

    .line 38
    .line 39
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ge v1, p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/byazt/sy/da;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ma/a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/ma/c;->c(Lcom/byazt/dj/tt;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/byazt/ma/c;->c(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v1}, Lcom/byazt/ma/c;->n()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/sy/da;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/sy/da;->tt(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/lr;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/lr;->c(Lcom/byazt/ete/ic;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/rgb/a;->tt(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/rgb/a;->c()Lcom/byazt/lh/sp;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/byazt/sy/da$2;

    invoke-direct {v4, p0, v0}, Lcom/byazt/sy/da$2;-><init>(Lcom/byazt/sy/da;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/ir;

    if-eqz v2, :cond_2

    .line 9
    iget-object v3, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    invoke-static {v3, v2}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V

    .line 10
    new-instance v3, Lcom/byazt/ma/a;

    iget-object v4, p0, Lcom/byazt/sy/da;->c:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/sy/da;->ve:Lcom/byazt/sy/c;

    invoke-direct {v3, v4, v5, v2}, Lcom/byazt/ma/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/ete/ir;)V

    .line 11
    iget-object v4, p0, Lcom/byazt/sy/da;->tt:Lcom/byazt/dj/tt;

    invoke-virtual {v3, v4}, Lcom/byazt/ma/c;->c(Lcom/byazt/dj/tt;)V

    .line 12
    iget-object v4, p0, Lcom/byazt/sy/da;->uj:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/byazt/ma/c;->c(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v2}, Lcom/byazt/ete/ir;->uj()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    move-object v2, p1

    goto :goto_2

    :cond_4
    move-object v2, p2

    .line 14
    :goto_2
    invoke-virtual {v3, p1, v2}, Lcom/byazt/ma/c;->tt(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 15
    iget-object v2, p0, Lcom/byazt/sy/da;->n:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method
