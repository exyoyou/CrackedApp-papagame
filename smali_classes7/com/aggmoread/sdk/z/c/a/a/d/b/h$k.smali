.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->d(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\u5e7f\u544a\u65e0\u586b\u5145\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u521d\u59cb\u5316"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u586b\u5145\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->d(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x3baa17fd

    invoke-direct {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$k;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_1
    return-void
.end method
