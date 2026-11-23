.class final Lcom/aggmoread/sdk/z/c/a/a/c/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/c/l;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/c/l$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field final synthetic b:Lcom/aggmoread/sdk/z/c/a/a/c/l$d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/c/l$d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->b:Lcom/aggmoread/sdk/z/c/a/a/c/l$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/b;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-direct {v3, v4, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c()Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->b:Lcom/aggmoread/sdk/z/c/a/a/c/l$d;

    invoke-interface {v2, v3, v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/c/l$d;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/c/l;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ct "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", pct "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    cmp-long v5, v3, v1

    if-ltz v5, :cond_3

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/c/l$c$a;

    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/l$c$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/l$c;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/c/l$c$b;

    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/l$c$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/l$c;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V

    :goto_2
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/l;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/c/l$d;)V

    :cond_3
    return-void
.end method
