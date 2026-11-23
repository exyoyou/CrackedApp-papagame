.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->b(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoCompleted()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoReady()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoPause()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoResume()V

    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d$c;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoStart()V

    return-void
.end method
