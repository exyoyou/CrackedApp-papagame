.class Lcom/aggmoread/sdk/z/a/t/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/f;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged w "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoWidth "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoHeight "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->b(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1, p3}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1, p4}, Lcom/aggmoread/sdk/z/a/t/f;->f(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->h(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p2}, Lcom/aggmoread/sdk/z/a/t/f;->g(Lcom/aggmoread/sdk/z/a/t/f;)Z

    move-result p2

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p3}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->f(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->f(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(I)V

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated mSeekWhenDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/t/f;->n(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->t(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->o(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->p(Lcom/aggmoread/sdk/z/a/t/f;)V

    :goto_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->q(Lcom/aggmoread/sdk/z/a/t/f;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->n(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->n(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->g(Lcom/aggmoread/sdk/z/a/t/f;I)I

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->t(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;

    move-result-object p1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/aggmoread/sdk/z/a/t/f$j;->f(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->f()I

    move-result v1

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/t/f;->g(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->f()V

    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->t(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f;Z)V

    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$g;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->r(Lcom/aggmoread/sdk/z/a/t/f;)V

    return-void
.end method
