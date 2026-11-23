.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Landroid/os/Handler$Callback;Lcom/aggmoread/sdk/z/c/a/a/d/b/i;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$g;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$g;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$g;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    return p1
.end method
