.class Lcom/aggmoread/sdk/z/a/s/b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/s/b$a;->a(ILorg/json/JSONObject;Lcom/aggmoread/sdk/z/a/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/g/c;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/s/b$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/s/b$a;Lcom/aggmoread/sdk/z/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/b$a$c;->c:Lcom/aggmoread/sdk/z/a/s/b$a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/s/b$a$c;->b:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/aggmoread/sdk/z/a/o/b;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/o/b;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/b$a$c;->b:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/s/b$a$c;->c:Lcom/aggmoread/sdk/z/a/s/b$a;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/s/b$a;->a:Lcom/aggmoread/sdk/z/a/i/h;

    check-cast v2, Lcom/aggmoread/sdk/z/a/s/c;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/o/b;->a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/s/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/b$a$c;->c:Lcom/aggmoread/sdk/z/a/s/b$a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/s/b$a;->a:Lcom/aggmoread/sdk/z/a/i/h;

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/f;

    const v2, 0xc353

    const-string v3, "SDK\u5185\u90e8\u5904\u7406\u5f02\u5e38!"

    invoke-direct {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_0
    return-void
.end method
