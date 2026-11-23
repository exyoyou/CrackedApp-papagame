.class Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

.field final synthetic c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/b;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {v2, v3, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c()Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "20102911"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;

    invoke-direct {v2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/h;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ct "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", pct "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", db "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->c()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    cmp-long v1, v5, v3

    if-ltz v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$b;

    invoke-direct {v2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    goto :goto_2

    :cond_3
    const-string v1, "c b"

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/h;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$c;

    invoke-direct {v2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/h$e;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/h$o;)V

    :goto_3
    return-void
.end method
