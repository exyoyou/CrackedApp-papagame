.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v3, 0x3baa1029

    const-string v4, "\u5e7f\u544a\u65e0\u586b\u5145"

    invoke-direct {v2, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$g;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1, v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
