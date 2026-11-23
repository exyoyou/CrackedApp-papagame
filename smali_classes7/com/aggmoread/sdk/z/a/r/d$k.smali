.class Lcom/aggmoread/sdk/z/a/r/d$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 10

    .line 1
    const-string p1, "onStart"

    const-string v0, "ApiRewardVideoViewTAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/r/d;->c(Lcom/aggmoread/sdk/z/a/r/d;Z)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->e()I

    move-result p1

    int-to-long v8, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoDuration "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->w(Lcom/aggmoread/sdk/z/a/r/d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->x(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->c(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Lcom/aggmoread/sdk/z/a/s/a;)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->d(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/m/m;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    new-instance v0, Lcom/aggmoread/sdk/z/a/r/d$k$a;

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    move-wide v4, v8

    invoke-direct/range {v2 .. v9}, Lcom/aggmoread/sdk/z/a/r/d$k$a;-><init>(Lcom/aggmoread/sdk/z/a/r/d$k;JJJ)V

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/r/d;->a(Lcom/aggmoread/sdk/z/a/r/d;Lcom/aggmoread/sdk/z/a/m/m;)Lcom/aggmoread/sdk/z/a/m/m;

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->l(Lcom/aggmoread/sdk/z/a/r/d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->m(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 2
    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onScaleChange "

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onBufferingEnd"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->n(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method

.method public c(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onBufferingStart"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->v(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method

.method public d(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onStartLoading"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onResume"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/r/d;->c(Lcom/aggmoread/sdk/z/a/r/d;Z)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->n(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method

.method public f(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onPause"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/r/d;->c(Lcom/aggmoread/sdk/z/a/r/d;Z)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->v(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method

.method public g(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ApiRewardVideoViewTAG"

    const-string v0, "onCached"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$k;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->onVideoCached()V

    :cond_0
    return-void
.end method
