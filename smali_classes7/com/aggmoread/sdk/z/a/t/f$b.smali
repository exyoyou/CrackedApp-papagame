.class Lcom/aggmoread/sdk/z/a/t/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->h(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->d(Lcom/aggmoread/sdk/z/a/t/f;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/t/f;->c(Lcom/aggmoread/sdk/z/a/t/f;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/t/f;->b(Lcom/aggmoread/sdk/z/a/t/f;Z)Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;Z)Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->j()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->c(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/a;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/t/f;->b(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->f(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/t/f;->a(I)V

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->b(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->s(Lcom/aggmoread/sdk/z/a/t/f;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->g(Lcom/aggmoread/sdk/z/a/t/f;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->h(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->o()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->a()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->f()I

    move-result p1

    if-lez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/aggmoread/sdk/z/a/t/a;->b(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->h(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_7
    :goto_0
    return-void
.end method
