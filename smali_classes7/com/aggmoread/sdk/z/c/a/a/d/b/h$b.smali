.class final Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic c:I

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;->c:I

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u68c0\u6d4b\u5230\u5e7f\u544a\u6e90\uff0c\u8bf7\u786e\u8ba4\u5e7f\u544a\u6e90\u63a5\u5165\u662f\u5426\u6210\u529f. adSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3baa17fd

    invoke-direct {v1, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$b;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
