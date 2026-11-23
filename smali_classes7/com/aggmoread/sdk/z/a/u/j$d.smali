.class Lcom/aggmoread/sdk/z/a/u/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/j;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/j;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/j;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->d(Lcom/aggmoread/sdk/z/a/u/j;)V

    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->e(Lcom/aggmoread/sdk/z/a/u/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->f(Lcom/aggmoread/sdk/z/a/u/j;)Landroid/graphics/Movie;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->g(Lcom/aggmoread/sdk/z/a/u/j;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/j;->h(Lcom/aggmoread/sdk/z/a/u/j;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/u/j;->a(Lcom/aggmoread/sdk/z/a/u/j;Landroid/graphics/Movie;)Landroid/graphics/Movie;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$d;->b:Lcom/aggmoread/sdk/z/a/u/j;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/u/j;->a(Lcom/aggmoread/sdk/z/a/u/j;J)J

    return-void
.end method
