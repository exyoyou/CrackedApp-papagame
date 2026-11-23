.class Lcom/aggmoread/sdk/z/a/r/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$i;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$i;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$i;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->t(Lcom/aggmoread/sdk/z/a/r/d;)Lcom/aggmoread/sdk/z/a/t/c$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/t/c$b;->onVideoComplete()V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$i;->a:Lcom/aggmoread/sdk/z/a/r/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/r/d;->b(Lcom/aggmoread/sdk/z/a/r/d;Z)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$i;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->u(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method
