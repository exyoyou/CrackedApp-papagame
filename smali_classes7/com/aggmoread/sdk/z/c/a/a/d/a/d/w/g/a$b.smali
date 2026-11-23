.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    const-string v0, "AMFTAGKS"

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;Z)Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->k(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    return-void
.end method

.method public onPageDismiss()V
    .locals 2

    const-string v0, "AMFTAGKS"

    const-string v1, "onPageDismiss"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    return-void
.end method

.method public onSkippedVideo()V
    .locals 2

    const-string v0, "AMFTAGKS"

    const-string v1, "onSkippedVideo"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 2

    const-string v0, "AMFTAGKS"

    const-string v1, "onVideoPlayEnd"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPlayError i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMFTAGKS"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v1, v0, Lcom/aggmoread/sdk/z/c/a/a/c/m;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onVideoPlayStart()V
    .locals 4

    const-string v0, "AMFTAGKS"

    const-string v1, "onVideoPlayStart"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->l(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->m(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v3, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result v0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[I)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;->d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a$b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/g/a;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
