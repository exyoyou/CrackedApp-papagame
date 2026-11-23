.class Lcom/aggmoread/sdk/z/c/a/a/e/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/o;->c(Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/Handler$Callback;

.field final synthetic c:J

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/e/o;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;J)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->b:Landroid/os/Handler$Callback;

    iput-wide p3, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "rek"

    const-string v2, "INIT_CONFIG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "svs"

    const-string v2, "20102911"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a()Lcom/aggmoread/sdk/z/c/a/a/e/k;

    move-result-object v1

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/o$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "req err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ampp_tag"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->b:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;)V

    :goto_0
    return-void
.end method
