.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewAttachedToWindow  view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", viewParent "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/d/a;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
