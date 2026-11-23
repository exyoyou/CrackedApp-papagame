.class public Lcom/byazt/fcd/da;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x48
    }
.end annotation


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/msx/c;",
            ">;"
        }
    .end annotation
.end field

.field public eo:I


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/byazt/fcd/da;->eo:I

    .line 13
    .line 14
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {p0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/dl/uj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "cid"

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v2

    const-string v3, "refresh_max"

    invoke-virtual {v2, p0, v3, v1}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2}, Lcom/byazt/ddx/uj;->sp(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private ma()Lcom/byazt/dqg/da;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/dqg/da;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/dqg/da;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    const/16 p0, 0xb

    return p0
.end method

.method private yf()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/dqg/da;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->n()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_5

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lt v0, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/byazt/msx/c;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    return v1

    .line 42
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zo()Lcom/byazt/ete/h;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    return v1

    .line 49
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/ete/h;->ve()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :cond_5
    :goto_0
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/fcd/da;->eo:I

    .line 2
    .line 3
    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bx()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/lt;->ve(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/byazt/fcd/da;->eo:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 3

    .line 9
    new-instance v0, Lcom/byazt/dqg/da;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/da;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 10
    iget v1, p0, Lcom/byazt/fcd/c;->n:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 11
    iget v1, p0, Lcom/byazt/fcd/c;->a:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 12
    invoke-virtual {v0, p1}, Lcom/byazt/dqg/da;->c([F)V

    .line 13
    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 15
    new-instance v0, Lcom/byazt/qq/n;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1, p1}, Lcom/byazt/qq/n;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 16
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->c(I)V

    .line 17
    new-instance p1, Lcom/byazt/fcd/da$1;

    invoke-direct {p1, p0, p2}, Lcom/byazt/fcd/da$1;-><init>(Lcom/byazt/fcd/da;Lcom/byazt/qq/da;)V

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(Ljava/util/Map;)V

    .line 19
    invoke-direct {p0}, Lcom/byazt/fcd/da;->yf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "refresh_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "refresh_num"

    .line 21
    invoke-direct {p0}, Lcom/byazt/fcd/da;->yf()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cu()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->cu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/byazt/dqg/da;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/byazt/dqg/da;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->uj()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public dz()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/dqg/da;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/da;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public gu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/dqg/da;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->ve()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7e06fff7

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/dqg/da;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->uj()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public kk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/dqg/tt;->da()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/byazt/iym/tt;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/byazt/iym/tt;->x()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->n(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public qy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/dqg/da;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->tt()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public sp(Z)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/byazt/fcd/da;->bx()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/ete/lt;->sp(Lcom/byazt/ete/ic;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget v0, p0, Lcom/byazt/fcd/da;->eo:I

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public tt(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->tt(Ljava/util/Map;)V

    .line 5
    invoke-direct {p0}, Lcom/byazt/fcd/da;->yf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "refresh_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->tt(Z)V

    .line 3
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    check-cast p1, Lcom/byazt/dqg/da;

    invoke-virtual {p1}, Lcom/byazt/dqg/da;->ve()V

    return-void
.end method

.method public ve()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/fcd/da;->ma()Lcom/byazt/dqg/da;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/fcd/da;->ma()Lcom/byazt/dqg/da;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/da;->c(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(ZZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public x()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->x()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/byazt/msx/c;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/byazt/fcd/da;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    move-object v0, v6

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/byazt/msx/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->u:Z

    .line 22
    .line 23
    invoke-virtual {v6, v0}, Lcom/byazt/iym/tt;->c(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/ete/h;->ve(Lcom/byazt/ete/ic;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->hl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ge v3, v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 84
    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/byazt/ete/h;->c(Ljava/util/List;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ge v2, v0, :cond_3

    .line 103
    .line 104
    new-instance v0, Lcom/byazt/msx/c;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 107
    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move-object v5, v3

    .line 113
    check-cast v5, Lcom/byazt/ete/ic;

    .line 114
    .line 115
    iget-object v6, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/byazt/fcd/da;->q()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const/4 v8, 0x0

    .line 122
    move-object v3, v0

    .line 123
    invoke-direct/range {v3 .. v8}, Lcom/byazt/msx/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    .line 124
    .line 125
    .line 126
    iget-boolean v3, p0, Lcom/byazt/fcd/c;->u:Z

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lcom/byazt/iym/tt;->c(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Lcom/byazt/fcd/da;->d:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public yp()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->yp()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 5
    .line 6
    check-cast v0, Lcom/byazt/dqg/da;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->tt()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public zm()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->zm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/byazt/dqg/da;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/byazt/dqg/da;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/dqg/da;->da()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
