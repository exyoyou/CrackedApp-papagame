.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;->b(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoCompleted()V

    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoResume()V

    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoPause()V

    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoStart()V

    return-void
.end method

.method public onVideoError(II)V
    .locals 3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/e/b;->A:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getVideoDuration()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoLoaded(I)V

    return-void
.end method
