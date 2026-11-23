.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;
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
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    iget v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3baa17fd

    invoke-direct {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$n$a;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
