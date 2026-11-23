.class Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/e/o$a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/o$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/o$a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/o$a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdk plg config: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/o$a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Lcom/aggmoread/sdk/z/c/a/a/e/o;)Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ampp_tag"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm delay "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/o$a;

    iget-wide v3, v3, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o$a$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
