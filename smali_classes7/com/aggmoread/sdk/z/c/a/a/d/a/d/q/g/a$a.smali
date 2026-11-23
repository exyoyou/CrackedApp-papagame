.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/s/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "AMITAGBD"

    const-string v1, "onADClosed"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/a;)V
    .locals 2

    .line 2
    const-string v0, "AMITAGBD"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;Lcom/aggmoread/sdk/z/a/a;)Lcom/aggmoread/sdk/z/a/a;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)Lcom/aggmoread/sdk/z/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/a;->d()I

    move-result p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->g:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v1, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/g/f;)V
    .locals 2

    .line 3
    const-string v0, "AMITAGBD"

    const-string v1, "onAdError"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "AMITAGBD"

    const-string v1, "onADExposure"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->i(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;)V

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAdClicked()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    return-void
.end method

.method public onAdShow()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onADOpened"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->h(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    const-string v0, "AMITAGBD"

    const-string v1, "onVideoCached"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a$a;->g:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;->e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/g/a;)V

    return-void
.end method
