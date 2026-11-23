.class Lcom/aggmoread/sdk/z/c/a/a/e/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/o;->b(Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Landroid/os/Handler$Callback;

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/e/o;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/o;JLandroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    iput-wide p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->b:J

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->c:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "rek"

    const-string v3, "PLG_CONFIG"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "svs"

    const-string v3, "20102911"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a()Lcom/aggmoread/sdk/z/c/a/a/e/k;

    move-result-object v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;

    invoke-direct {v3, p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/o$a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->c:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ampp_tag"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->c:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;)V

    return-void
.end method
