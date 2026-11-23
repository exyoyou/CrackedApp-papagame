.class Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/e/o$b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/o$b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b(Lcom/aggmoread/sdk/z/c/a/a/e/o;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdk g config: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/o$b;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b(Lcom/aggmoread/sdk/z/c/a/a/e/o;)Lcom/aggmoread/sdk/z/c/a/a/e/u/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ampp_tag"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/o$b;

    iget-object v1, p1, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->b:Landroid/os/Handler$Callback;

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ic delay "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$b$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/o$b;

    iget-wide v3, v3, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
