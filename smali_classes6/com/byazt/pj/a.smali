.class public Lcom/byazt/pj/a;
.super Lcom/byazt/xj/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pj/a$tt;,
        Lcom/byazt/pj/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/c<",
        "Lcom/byazt/kt/RecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field public cf:Lcom/byazt/pj/uj;

.field public ij:Lcom/byazt/pj/n$ve;

.field public kz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation
.end field

.field public mq:Lcom/byazt/pj/n;

.field public vi:Lcom/byazt/pj/a$tt;

.field public vp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/sz/i$c;",
            ">;"
        }
    .end annotation
.end field

.field public yo:Lcom/byazt/kt/RecyclerView$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/pj/a;->vp:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/pj/a;->vi:Lcom/byazt/pj/a$tt;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/pj/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 2

    .line 4
    new-instance v0, Lcom/byazt/kt/RecyclerView;

    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/kt/RecyclerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c(ILjava/lang/Object;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p2}, Lcom/byazt/pj/n;->c(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kt/RecyclerView$c;->c(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/pj/a$tt;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/pj/a;->vi:Lcom/byazt/pj/a$tt;

    return-void
.end method

.method public c(Lcom/byazt/pj/n$uj;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    invoke-virtual {v0, p1}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/n$uj;)V

    return-void
.end method

.method public c(Lcom/byazt/pj/uj;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/pj/a;->cf:Lcom/byazt/pj/uj;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/byazt/pj/a;->vp:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 19
    iget-object p2, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/byazt/pj/a;->vp:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->md()Lcom/byazt/sz/i$c;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "layoutType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "grid"

    .line 17
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/byazt/kt/n;

    iget-object p2, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/byazt/kt/n;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/byazt/pj/a;->yo:Lcom/byazt/kt/RecyclerView$i;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/byazt/xj/ve;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public tt()V
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/c;->tt()V

    .line 3
    new-instance v0, Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/pj/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    .line 4
    iget-object v1, p0, Lcom/byazt/xj/ve;->xd:Lcom/byazt/sz/da;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Lcom/byazt/sz/da;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Lcom/byazt/sz/rh;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/xj/ve;->ny:Lcom/byazt/sz/gt;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Lcom/byazt/sz/gt;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/pj/a;->cf:Lcom/byazt/pj/uj;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/uj;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/pj/a;->ij:Lcom/byazt/pj/n$ve;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Lcom/byazt/pj/n$ve;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/pj/a;->vp:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/byazt/pj/n;->c(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/kt/RecyclerView;

    iget-object v1, p0, Lcom/byazt/pj/a;->yo:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->setLayoutManager(Lcom/byazt/kt/RecyclerView$i;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/kt/RecyclerView;

    iget-object v1, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->setAdapter(Lcom/byazt/kt/RecyclerView$c;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/kt/RecyclerView;

    new-instance v1, Lcom/byazt/pj/a$c;

    iget-object v2, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/byazt/pj/a$c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->c(Lcom/byazt/kt/RecyclerView$x;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/kt/RecyclerView;

    new-instance v1, Lcom/byazt/pj/a$1;

    new-instance v2, Lcom/byazt/pj/c;

    invoke-direct {v2}, Lcom/byazt/pj/c;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/byazt/pj/a$1;-><init>(Lcom/byazt/pj/a;Lcom/byazt/pj/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->c(Lcom/byazt/kt/RecyclerView$yp;)V

    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v1, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    invoke-virtual {v1, p1}, Lcom/byazt/pj/n;->c(Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/byazt/pj/a;->mq:Lcom/byazt/pj/n;

    iget-object v1, p0, Lcom/byazt/pj/a;->kz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/kt/RecyclerView$c;->c(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public x()Lcom/byazt/xj/c$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
