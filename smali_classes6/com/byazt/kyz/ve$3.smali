.class public Lcom/byazt/kyz/ve$3;
.super Lcom/byazt/sy/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve;->initComponentEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/sy/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/byazt/dh/ve;->sl()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lsp/c;->c(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/p;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/p$c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 4

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-ne p2, p4, :cond_1

    .line 38
    :cond_0
    instance-of v1, p3, Lcom/byazt/ete/gr;

    if-eqz v1, :cond_1

    .line 39
    check-cast p3, Lcom/byazt/ete/gr;

    .line 40
    new-instance v1, Lcom/byazt/ete/da;

    invoke-direct {v1}, Lcom/byazt/ete/da;-><init>()V

    .line 41
    iget v2, p3, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->c(F)V

    .line 42
    iget v2, p3, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->tt(F)V

    .line 43
    iget v2, p3, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->ve(F)V

    .line 44
    iget v2, p3, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {v1, v2}, Lcom/byazt/ete/da;->uj(F)V

    .line 45
    iget-wide v2, p3, Lcom/byazt/ete/gr;->n:J

    invoke-virtual {v1, v2, v3}, Lcom/byazt/ete/da;->c(J)V

    .line 46
    iget-wide v2, p3, Lcom/byazt/ete/gr;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/byazt/ete/da;->tt(J)V

    .line 47
    iget-boolean p3, p3, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {v1, p3}, Lcom/byazt/ete/da;->tt(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne p2, p4, :cond_2

    .line 48
    iget-object p3, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p3}, Lcom/byazt/kyz/ve;->sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Lcom/byazt/omf/my;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_2
    if-ne p2, v0, :cond_3

    .line 49
    iget-object p2, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/byazt/omf/my;->tt(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_3
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;Lcom/byazt/ete/ir;)V
    .locals 7

    .line 14
    instance-of v0, p3, Lcom/byazt/ete/gr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 15
    move-object v0, p3

    check-cast v0, Lcom/byazt/ete/gr;

    .line 16
    new-instance v4, Lcom/byazt/ete/da;

    invoke-direct {v4}, Lcom/byazt/ete/da;-><init>()V

    .line 17
    iget v5, v0, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->c(F)V

    .line 18
    iget v5, v0, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->tt(F)V

    .line 19
    iget v5, v0, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->ve(F)V

    .line 20
    iget v5, v0, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->uj(F)V

    .line 21
    iget-wide v5, v0, Lcom/byazt/ete/gr;->n:J

    invoke-virtual {v4, v5, v6}, Lcom/byazt/ete/da;->c(J)V

    .line 22
    iget-wide v5, v0, Lcom/byazt/ete/gr;->a:J

    invoke-virtual {v4, v5, v6}, Lcom/byazt/ete/da;->tt(J)V

    .line 23
    iget-boolean v5, v0, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->tt(Z)V

    .line 24
    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(Z)V

    .line 25
    invoke-virtual {v0}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "uchain_event_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->ve(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "isLottieInternalClick"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v5, ""

    move-object v4, v2

    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v6, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v6}, Lcom/byazt/kyz/ve;->ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v6}, Lcom/byazt/kyz/ve;->ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/un/NativeVideoTsView;

    :goto_1
    invoke-static {v6, p3}, Lcom/byazt/sy/ve;->c(Landroid/view/View;Lcom/byazt/sr/ve;)Z

    move-result p3

    if-eq p2, v1, :cond_8

    const/4 v6, 0x2

    if-eq p2, v6, :cond_7

    const/4 p1, 0x3

    if-eq p2, p1, :cond_6

    const/4 p1, 0x5

    if-eq p2, p1, :cond_4

    const/4 p1, 0x7

    if-eq p2, p1, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->x(Lcom/byazt/kyz/ve;)Landroid/content/Context;

    move-result-object p2

    invoke-static {v5, p1, p2}, Lcom/byazt/aas/nb;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->x(Lcom/byazt/kyz/ve;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    :cond_3
    :goto_2
    return-void

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ab()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 v3, 0x1

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    xor-int/lit8 p2, v3, 0x1

    invoke-static {p1, p2}, Lcom/byazt/kyz/ve;->c(Lcom/byazt/kyz/ve;Z)V

    return-void

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->a(Lcom/byazt/kyz/ve;)V

    return-void

    .line 34
    :cond_7
    iget-object p2, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;

    move-result-object p2

    invoke-virtual {p2, p1, v4}, Lcom/byazt/omf/my;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 35
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1, p4, p3, v2, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V

    return-void

    .line 36
    :cond_8
    iget-object p2, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p2}, Lcom/byazt/kyz/ve;->sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;

    move-result-object p2

    invoke-virtual {p2, p1, v4}, Lcom/byazt/omf/my;->tt(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 37
    iget-object p1, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1, p4, p3, v2, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 0

    .line 4
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 5
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public tt()I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/byazt/kyz/ve$3;->c:Lcom/byazt/kyz/ve;

    invoke-static {v0}, Lcom/byazt/kyz/ve;->ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/byazt/dh/ve;->gt()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    return v0

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/byazt/dh/ve;->qy()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_2
    instance-of v1, v0, Lcom/byazt/un/uj;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/byazt/un/uj;

    invoke-virtual {v0}, Lcom/byazt/un/uj;->bx()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 1
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
