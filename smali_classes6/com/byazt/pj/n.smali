.class public Lcom/byazt/pj/n;
.super Lcom/byazt/kt/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pj/n$uj;,
        Lcom/byazt/pj/n$ve;,
        Lcom/byazt/pj/n$c;,
        Lcom/byazt/pj/n$n;,
        Lcom/byazt/pj/n$tt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/kt/RecyclerView$c<",
        "Lcom/byazt/kt/RecyclerView$gu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation
.end field

.field public da:Lcom/byazt/sz/rh;

.field public i:Lcom/byazt/sz/da;

.field public n:Lcom/byazt/pj/n$ve;

.field public sl:Lcom/byazt/sz/gt;

.field public sp:Lcom/byazt/pj/n$uj;

.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/sz/i$c;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/pj/uj;

.field public ve:Landroid/content/Context;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/pj/n;->x:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/pj/n;->ve:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pj/n;)Lcom/byazt/pj/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pj/n;->uj:Lcom/byazt/pj/uj;

    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/byazt/pj/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/pj/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/pj/ve;

    invoke-virtual {p1}, Lcom/byazt/pj/ve;->tt()I

    move-result p1

    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/byazt/kt/RecyclerView$gu;
    .locals 3

    .line 11
    iget-object p1, p0, Lcom/byazt/pj/n;->tt:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/sz/i$c;

    .line 12
    new-instance p2, Lcom/byazt/sz/z;

    iget-object v0, p0, Lcom/byazt/pj/n;->ve:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p2, p1}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/i$c;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Lcom/byazt/sz/z;->c(Lcom/byazt/xj/ve;)V

    if-eqz p1, :cond_0

    .line 15
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->or()I

    move-result v1

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->cu()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/byazt/pj/n$n;

    invoke-direct {v1, p0, v0}, Lcom/byazt/pj/n$n;-><init>(Lcom/byazt/pj/n;Landroid/view/View;)V

    .line 18
    invoke-virtual {v1, p1}, Lcom/byazt/pj/n$n;->c(Lcom/byazt/xj/ve;)V

    .line 19
    invoke-virtual {v1, p2}, Lcom/byazt/pj/n$n;->c(Lcom/byazt/sz/z;)V

    return-object v1

    .line 20
    :cond_0
    new-instance p1, Lcom/byazt/pj/n$tt;

    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/byazt/pj/n;->ve:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, p2}, Lcom/byazt/pj/n$tt;-><init>(Lcom/byazt/pj/n;Landroid/view/View;)V

    return-object p1
.end method

.method public c(Landroid/content/Context;Lorg/json/JSONObject;Lcom/byazt/xj/ve;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 50
    :cond_0
    instance-of v0, p3, Lcom/byazt/xj/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/byazt/pj/n;->i:Lcom/byazt/sz/da;

    invoke-virtual {p3, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/da;)V

    .line 52
    iget-object v0, p0, Lcom/byazt/pj/n;->da:Lcom/byazt/sz/rh;

    invoke-virtual {p3, v0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/rh;)V

    .line 53
    invoke-virtual {p3, v1}, Lcom/byazt/xj/ve;->tt(Z)V

    .line 54
    invoke-virtual {p3}, Lcom/byazt/xj/ve;->tt()V

    .line 55
    check-cast p3, Lcom/byazt/xj/c;

    invoke-virtual {p3}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 56
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/pj/n;->c(Landroid/content/Context;Lorg/json/JSONObject;Lcom/byazt/xj/ve;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 59
    :cond_3
    invoke-virtual {p3}, Lcom/byazt/xj/ve;->gr()Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    invoke-virtual {p3}, Lcom/byazt/xj/ve;->d()Lcom/byazt/xj/c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 62
    invoke-virtual {v3}, Lcom/byazt/xj/c;->x()Lcom/byazt/xj/c$c;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 63
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {p3, v4, v5}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/byazt/pj/n;->i:Lcom/byazt/sz/da;

    invoke-virtual {p3, v6}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/da;)V

    .line 68
    iget-object v6, p0, Lcom/byazt/pj/n;->da:Lcom/byazt/sz/rh;

    invoke-virtual {p3, v6}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/rh;)V

    if-eqz v3, :cond_5

    .line 69
    invoke-virtual {v3, p1, v4, v5}, Lcom/byazt/xj/c$c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_6
    invoke-virtual {p3, v1}, Lcom/byazt/xj/ve;->tt(Z)V

    .line 71
    invoke-virtual {p3}, Lcom/byazt/xj/ve;->tt()V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/pj/n;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pj/ve;

    if-eqz v0, :cond_2

    .line 31
    instance-of v1, p1, Lcom/byazt/pj/n$n;

    if-nez v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    check-cast p1, Lcom/byazt/pj/n$n;

    iget-object v1, p1, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p1, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    .line 34
    invoke-virtual {v3}, Lcom/byazt/xj/ve;->or()I

    move-result v3

    iget-object v4, p1, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    invoke-virtual {v4}, Lcom/byazt/xj/ve;->cu()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/byazt/xj/ve;->c(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p1}, Lcom/byazt/pj/n$n;->p()Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/byazt/pj/n;->c(Lorg/json/JSONObject;Lcom/byazt/xj/ve;)V

    .line 37
    iget-object v1, p0, Lcom/byazt/pj/n;->ve:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/byazt/pj/n$n;->p()Lcom/byazt/xj/ve;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/byazt/pj/n;->c(Landroid/content/Context;Lorg/json/JSONObject;Lcom/byazt/xj/ve;)V

    if-nez p2, :cond_2

    .line 38
    iget-object p2, p0, Lcom/byazt/pj/n;->uj:Lcom/byazt/pj/uj;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/byazt/pj/n;->x:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/byazt/pj/n;->x:Z

    .line 40
    iget-object p1, p1, Lcom/byazt/pj/n$n;->nu:Lcom/byazt/xj/ve;

    invoke-interface {p2, p1}, Lcom/byazt/pj/uj;->c(Lcom/byazt/xj/ve;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/kt/RecyclerView$gu;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 23
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/byazt/pj/n;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/pj/n;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/byazt/pj/n;->sp:Lcom/byazt/pj/n$uj;

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0, p1, p2}, Lcom/byazt/pj/n$uj;->c(Lcom/byazt/kt/RecyclerView$gu;I)V

    goto :goto_0

    :cond_2
    return-void

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/pj/n;->c(Lcom/byazt/kt/RecyclerView$gu;I)V

    return-void
.end method

.method public c(Lcom/byazt/pj/n$uj;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/byazt/pj/n;->sp:Lcom/byazt/pj/n$uj;

    return-void
.end method

.method public c(Lcom/byazt/pj/n$ve;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/pj/n;->n:Lcom/byazt/pj/n$ve;

    return-void
.end method

.method public c(Lcom/byazt/pj/uj;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/pj/n;->uj:Lcom/byazt/pj/uj;

    return-void
.end method

.method public c(Lcom/byazt/sz/da;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/pj/n;->i:Lcom/byazt/sz/da;

    return-void
.end method

.method public c(Lcom/byazt/sz/gt;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/pj/n;->sl:Lcom/byazt/sz/gt;

    return-void
.end method

.method public c(Lcom/byazt/sz/rh;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/pj/n;->da:Lcom/byazt/sz/rh;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/byazt/pj/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/pj/n;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/pj/n;->c:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/pj/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/sz/i$c;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/pj/n;->tt:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/xj/ve;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 43
    :cond_0
    instance-of v0, p2, Lcom/byazt/xj/c;

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p2, p1}, Lcom/byazt/xj/ve;->c(Lorg/json/JSONObject;)V

    .line 45
    check-cast p2, Lcom/byazt/xj/c;

    invoke-virtual {p2}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/byazt/pj/n;->c(Lorg/json/JSONObject;Lcom/byazt/xj/ve;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 49
    :cond_3
    invoke-virtual {p2, p1}, Lcom/byazt/xj/ve;->c(Lorg/json/JSONObject;)V

    return-void
.end method
