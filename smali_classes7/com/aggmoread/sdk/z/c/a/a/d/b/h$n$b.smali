.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v2, 0x3baa1fc9

    const-string v3, "\u5e7f\u544a\u65e0\u586b\u5145"

    invoke-direct {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
