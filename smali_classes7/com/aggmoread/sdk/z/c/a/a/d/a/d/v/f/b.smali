.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/b$a;


# static fields
.field private static u:Ljava/lang/String; = "AMDRAWTAGGDT"


# instance fields
.field public r:Lcom/qq/e/ads/nativ/NativeExpressAD;

.field private s:J

.field private final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADClosed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;II)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Ljava/lang/Object;IILjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onRenderSuccess"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onRenderSuccess()V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADLoaded"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;->q()Z

    move-result v1

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->o()Z

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v3}, Lcom/qq/e/ads/nativ/NativeExpressADView;->getBoundData()Lcom/qq/e/comm/pi/AdData;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v3, v5}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;->a(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;->b(Ljava/lang/Object;I)V

    :cond_1
    new-instance v5, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v7, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;-><init>(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v3, v5}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;->a(II)V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;->e(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADExposure"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    new-array v5, v0, [Landroid/view/View;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v4

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Landroid/view/View;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->s:J

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/b;->d()V

    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public d(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADCloseOverlay"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onADCloseOverlay()V

    :cond_0
    return-void
.end method

.method public e(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADLeftApplication"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onADLeftApplication()V

    :cond_0
    return-void
.end method

.method public f(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onRenderFail"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onRenderFail()V

    :cond_0
    return-void
.end method

.method public g(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADOpenOverlay"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onADOpenOverlay()V

    :cond_0
    return-void
.end method

.method public h(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 9

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v5

    iget-wide v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->s:J

    iget-object v8, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v3 .. v8}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/a;->j()Lcom/aggmoread/sdk/z/c/a/a/c/o/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/o/b;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 11

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-static {v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/g;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->q:Lcom/aggmoread/sdk/z/c/a/a/c/i;

    new-instance v1, Lcom/qq/e/ads/nativ/ADSize;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/i;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/i;->a()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/b$a;)V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-virtual {v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;

    iget-object v8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/b;->a()Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    move-result-object v9

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v10, v0

    invoke-static/range {v4 .. v10}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d$e;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/nativ/NativeExpressAD;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->r:Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->c()I

    move-result v1

    const/16 v3, 0x3d

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->c()I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->r:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMinVideoDuration(I)V

    :cond_0
    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->b()I

    move-result v1

    if-lt v1, v4, :cond_1

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->b()I

    move-result v1

    if-gt v1, v3, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->r:Lcom/qq/e/ads/nativ/NativeExpressAD;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setMaxVideoDuration(I)V

    :cond_1
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->r:Lcom/qq/e/ads/nativ/NativeExpressAD;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->m:I

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/f/b;->u:Ljava/lang/String;

    const-string v1, "onNoAD"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/qq/e/comm/util/AdError;)Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/e;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method
