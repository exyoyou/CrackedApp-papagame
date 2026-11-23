.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$l;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa17fd

    const-string v2, "\u5e7f\u544a\u65e0\u586b\u5145\uff0c\u5f53\u524d\u7cfb\u7edf\u7248\u672c\u6682\u4e0d\u652f\u6301"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$l;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
