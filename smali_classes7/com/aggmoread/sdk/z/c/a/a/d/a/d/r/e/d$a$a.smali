.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->onADExposureFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v1, "onADError return "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;->e:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const/16 v2, -0x3e8

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method
