.class final Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;
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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;->c:I

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0d\u652f\u6301\u7684\u5e7f\u544a\u6e90. adSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3baa17fd

    invoke-direct {v1, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$a;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
