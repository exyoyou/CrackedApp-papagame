.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start load ,delay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a$a;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/k/a;Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
