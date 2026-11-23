.class Lcom/aggmoread/sdk/z/a/t/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->h(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->c(Lcom/aggmoread/sdk/z/a/t/f;I)I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->t(Lcom/aggmoread/sdk/z/a/t/f;)I

    move-result v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/t/f;->u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/t/a;->q()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/t/f;->m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "a=%s,b=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->i(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/f;->i(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f$c;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/t/f;->e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
