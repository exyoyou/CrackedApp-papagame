.class public Lcom/byazt/hw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d,
        0x22
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/i$c;)Lcom/byazt/gqp/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/byazt/gqp/i$c;->c()Lcom/byazt/gqp/yp;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v1

    iget v2, p0, Lcom/byazt/hw/a;->c:I

    invoke-virtual {v1, v2}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/hw/n;->tt()Lcom/byazt/hw/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v1

    iget v2, p0, Lcom/byazt/hw/a;->c:I

    invoke-virtual {v1, v2}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/hw/n;->tt()Lcom/byazt/hw/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/hw/c;->n()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/gqp/sp;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v2

    iget v3, p0, Lcom/byazt/hw/a;->c:I

    invoke-virtual {v2, v3}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/hw/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/byazt/gqp/yp;->sp()Lcom/byazt/gqp/yp$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-interface {p1, v0}, Lcom/byazt/gqp/i$c;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/m;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v4

    iget v5, p0, Lcom/byazt/hw/a;->c:I

    invoke-virtual {v4, v5}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/byazt/hw/n;->c(Lcom/byazt/gqp/yp;Ljava/lang/Exception;)V

    .line 12
    :goto_0
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object v2

    iget v4, p0, Lcom/byazt/hw/a;->c:I

    invoke-virtual {v2, v4}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/byazt/hw/n;->c(Lcom/byazt/gqp/yp;Lcom/byazt/gqp/m;)V

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    .line 13
    invoke-interface {p1, v0}, Lcom/byazt/gqp/i$c;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/m;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    .line 14
    :cond_3
    throw v3
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/hw/a;->c:I

    return-void
.end method
