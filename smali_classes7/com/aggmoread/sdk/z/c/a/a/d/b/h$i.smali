.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Landroid/os/Handler$Callback;Lcom/aggmoread/sdk/z/c/a/a/d/b/i;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$i;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$i;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->c(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;

    if-eqz v0, :cond_0

    const-string v1, "q r "

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/l;->run()V

    goto :goto_0

    :cond_0
    const-string v0, "q e "

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
