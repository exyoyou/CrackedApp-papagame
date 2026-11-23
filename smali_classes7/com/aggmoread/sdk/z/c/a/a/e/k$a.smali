.class Lcom/aggmoread/sdk/z/c/a/a/e/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/e/k$b;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/e/k;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/k;JLcom/aggmoread/sdk/z/c/a/a/e/k$b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    iput-wide p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->a:J

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 4

    const-string p1, "RCH_TAG"

    :try_start_0
    invoke-static {p2}, Lcom/aggmoread/sdk/z/c/a/a/b;->e(Ljava/lang/Object;)[B

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p3, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "r Str "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delay time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/k$b;

    invoke-static {p2, v0, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Lcom/aggmoread/sdk/z/c/a/a/e/k;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "r empty "

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "r err "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;->b:Lcom/aggmoread/sdk/z/c/a/a/e/k$b;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Lcom/aggmoread/sdk/z/c/a/a/e/k;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;Ljava/lang/String;)V

    return-void
.end method
