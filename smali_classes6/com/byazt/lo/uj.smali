.class public Lcom/byazt/lo/uj;
.super Lcom/byazt/ux/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x291,
        0xf
    }
.end annotation


# instance fields
.field public gr:Z

.field public gu:I

.field public qy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/ux/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/lo/uj;)Lcom/byazt/xj/ve;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/lo/uj;)Lcom/byazt/xj/ve;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/lo/uj;)Lcom/byazt/xj/ve;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/byazt/lo/uj;->gu:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "\u6d4f\u89c8%d\u79d2\u53ef\u9886\u91d1\u5e01"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    instance-of v0, v0, Lcom/byazt/pj/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/lo/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/lo/uj$1;-><init>(Lcom/byazt/lo/uj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    check-cast v0, Lcom/byazt/pj/a;

    new-instance v1, Lcom/byazt/lo/uj$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/lo/uj$2;-><init>(Lcom/byazt/lo/uj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/n$uj;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/byazt/xj/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "image_mode"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "video_"

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_2

    .line 11
    check-cast p1, Lcom/byazt/qzm/tt;

    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->tx()V

    :cond_2
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(FFFFI)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 4
    return-void
.end method

.method public c(II)V
    .locals 0

    if-lez p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 5
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 6
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;I)V
    .locals 0

    .line 7
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;ILandroid/view/View;Lcom/byazt/pj/ve;)V
    .locals 0

    if-eqz p4, :cond_2

    .line 11
    invoke-virtual {p4}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p4}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 14
    :cond_1
    invoke-virtual {p4}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/byazt/ux/c;->c(Lorg/json/JSONObject;)V

    .line 15
    iget-object p2, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 8
    return-void
.end method

.method public da()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public n(Lcom/byazt/xj/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/lo/uj;->gu:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/lo/uj;->gr:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "header"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/lo/uj;->a(I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/lo/uj;->gr:Z

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "image_mode"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "video_"

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 9
    instance-of v0, p1, Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lcom/byazt/qzm/tt;

    iget-object v0, p0, Lcom/byazt/ux/c;->u:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/byazt/qzm/tt;->c(Ljava/util/Map;)V

    .line 11
    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->b()V

    :cond_3
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public sl()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/lo/uj;->qy:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/byazt/pj/ve;

    .line 15
    .line 16
    const v2, -0x48cb1d73

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0, v2}, Lcom/byazt/pj/ve;-><init>(Lorg/json/JSONObject;I)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/lo/uj;->qy:Ljava/util/List;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/lo/uj;->qy:Ljava/util/List;

    .line 29
    .line 30
    new-instance v2, Lcom/byazt/pj/ve;

    .line 31
    .line 32
    const v3, -0x7f3a9fd0

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v0, v3}, Lcom/byazt/pj/ve;-><init>(Lorg/json/JSONObject;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/lo/uj;->qy:Ljava/util/List;

    .line 42
    .line 43
    return-object v0
.end method

.method public sp()V
    .locals 0

    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public uj()V
    .locals 0

    .line 1
    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public uj(Lcom/byazt/xj/ve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/ux/c;->c(Lcom/byazt/xj/ve;)V

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public ve(Lcom/byazt/xj/ve;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ux/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method
