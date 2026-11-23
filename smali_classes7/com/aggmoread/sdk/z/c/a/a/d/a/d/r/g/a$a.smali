.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMITAGBD"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    const-string v0, "AMITAGBD"

    const-string v1, "onAdCacheFailed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v1, -0x3e8

    const-string v2, "\u89c6\u9891\u7d20\u6750\u7f13\u5b58\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMITAGBD"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onLpClosed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onAdCacheSuccess"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 3

    const-string v0, "AMITAGBD"

    const-string v1, "onADReceive"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;I)V

    const-string v0, "9.373"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->k(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->l(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Z)Z

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onADExposureFailed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADExposed()V
    .locals 3

    const-string v0, "AMITAGBD"

    const-string v1, "onADExposure"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->m(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->n(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;)V

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAdClick()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    return-void
.end method

.method public onAdClose()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onADClosed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->j(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 3

    const-string v0, "AMITAGBD"

    const-string v1, "onVideoDownloadFailed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v1, -0x3e8

    const-string v2, "\u89c6\u9891\u7d20\u6750\u7f13\u5b58\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 3

    const-string v0, "AMITAGBD"

    const-string v1, "onVideoDownloadSuccess"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->h(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->i(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    :cond_0
    return-void
.end method
