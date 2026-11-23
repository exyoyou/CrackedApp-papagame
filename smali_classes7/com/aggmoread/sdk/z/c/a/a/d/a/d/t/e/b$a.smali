.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 7

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object p2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object v2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    :goto_0
    move-object v3, p2

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-wide v4, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v6, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 4

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {p1, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    :cond_0
    return-void
.end method
