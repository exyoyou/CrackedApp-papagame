.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/d/a/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null_\u672a\u77e5\u539f\u56e0!"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x3e8

    invoke-direct {v1, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;)Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    move-result-object v0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;)V

    invoke-static {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;Landroid/os/Handler$Callback;)V

    return-void
.end method
