.class final Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;
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
.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/b;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/b;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/b;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "AMSdkThread"

    const-string v1, "oom err"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v2, 0x3baa17fe

    const-string v3, "\u5185\u5b58\u7a7a\u95f4\u4e0d\u8db3\uff0c\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-direct {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$c;->d:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
