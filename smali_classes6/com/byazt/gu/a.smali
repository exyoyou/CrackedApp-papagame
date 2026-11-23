.class public Lcom/byazt/gu/a;
.super Lcom/byazt/gqp/t;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0x22
    }
.end annotation


# instance fields
.field public t:Lcom/byazt/eg/gu;

.field public u:Lcom/byazt/gqp/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/gqp/t$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/gqp/t;-><init>(Lcom/byazt/gqp/t$c;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/gu/a;->c(Lcom/byazt/gqp/t$c;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/byazt/gu/sp;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/gu/a;->t:Lcom/byazt/eg/gu;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/byazt/gu/sp;-><init>(Lcom/byazt/eg/gu;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/gu/a;->u:Lcom/byazt/gqp/uj;

    .line 15
    .line 16
    return-void
.end method

.method private c(Lcom/byazt/gqp/t$c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/eg/gu$c;

    invoke-direct {v0}, Lcom/byazt/eg/gu$c;-><init>()V

    .line 2
    iget-wide v1, p1, Lcom/byazt/gqp/t$c;->ve:J

    long-to-int v2, v1

    iput v2, v0, Lcom/byazt/eg/gu$c;->gr:I

    .line 3
    iget-object v1, p1, Lcom/byazt/gqp/t$c;->uj:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/byazt/eg/gu$c;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iget-wide v1, p1, Lcom/byazt/gqp/t$c;->n:J

    long-to-int v2, v1

    iput v2, v0, Lcom/byazt/eg/gu$c;->zm:I

    .line 5
    iget-object v1, p1, Lcom/byazt/gqp/t$c;->a:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/byazt/eg/gu$c;->eo:Ljava/util/concurrent/TimeUnit;

    .line 6
    iget-wide v1, p1, Lcom/byazt/gqp/t$c;->sp:J

    long-to-int v2, v1

    iput v2, v0, Lcom/byazt/eg/gu$c;->yv:I

    .line 7
    iget-object v1, p1, Lcom/byazt/gqp/t$c;->x:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/byazt/eg/gu$c;->zb:Ljava/util/concurrent/TimeUnit;

    .line 8
    iget-object v1, p1, Lcom/byazt/gqp/t$c;->da:Ljava/util/Set;

    iput-object v1, v0, Lcom/byazt/eg/gu$c;->h:Ljava/util/Set;

    .line 9
    iget-object v1, p1, Lcom/byazt/gqp/t$c;->sl:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/byazt/eg/gu$c;->md:Landroid/os/Bundle;

    .line 10
    new-instance v1, Lcom/byazt/gu/ve;

    iget-object v2, p1, Lcom/byazt/gqp/t$c;->tt:Lcom/byazt/gu/c;

    invoke-direct {v1, v2}, Lcom/byazt/gu/ve;-><init>(Lcom/byazt/gu/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/eg/gu$c;->c(Lcom/byazt/eg/m;)Lcom/byazt/eg/gu$c;

    .line 11
    iget-object p1, p1, Lcom/byazt/gqp/t$c;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/gqp/i;

    .line 14
    new-instance v2, Lcom/byazt/gu/a$1;

    invoke-direct {v2, p0, v1}, Lcom/byazt/gu/a$1;-><init>(Lcom/byazt/gu/a;Lcom/byazt/gqp/i;)V

    invoke-virtual {v0, v2}, Lcom/byazt/eg/gu$c;->c(Lcom/byazt/eg/gt;)Lcom/byazt/eg/gu$c;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/eg/gu$c;->c()Lcom/byazt/eg/gu;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gu/a;->t:Lcom/byazt/eg/gu;

    return-void
.end method

.method private c(Lcom/byazt/gqp/z;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 46
    :cond_0
    iget-object v1, p1, Lcom/byazt/gqp/z;->a:Lcom/byazt/gqp/z$c;

    sget-object v2, Lcom/byazt/gqp/z$c;->ve:Lcom/byazt/gqp/z$c;

    if-eq v1, v2, :cond_1

    return v0

    .line 47
    :cond_1
    iget-object p1, p1, Lcom/byazt/gqp/z;->n:[B

    if-eqz p1, :cond_3

    array-length p1, p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private tt(Lcom/byazt/gqp/z;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/byazt/gqp/z;->a:Lcom/byazt/gqp/z$c;

    .line 6
    .line 7
    sget-object v2, Lcom/byazt/gqp/z$c;->tt:Lcom/byazt/gqp/z$c;

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/byazt/gqp/z;->n:[B

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    array-length p1, p1

    .line 17
    if-gtz p1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_3
    :goto_0
    return v0
.end method

.method private ve(Lcom/byazt/gqp/z;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/byazt/gqp/z;->a:Lcom/byazt/gqp/z$c;

    .line 6
    .line 7
    sget-object v2, Lcom/byazt/gqp/z$c;->c:Lcom/byazt/gqp/z$c;

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    const/4 p1, 0x1

    .line 22
    return p1
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    new-instance v0, Lcom/byazt/eg/yv$c;

    invoke-direct {v0}, Lcom/byazt/eg/yv$c;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/Object;)Lcom/byazt/eg/yv$c;

    .line 19
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/gqp/sp;->c()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/eg/yv$c;->c(Ljava/net/URL;)Lcom/byazt/eg/yv$c;

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byazt/gu/a;->ve(Lcom/byazt/gqp/z;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->ve()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v2

    iget-object v2, v2, Lcom/byazt/gqp/z;->ve:Lcom/byazt/gqp/da;

    invoke-virtual {v2}, Lcom/byazt/gqp/da;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/eg/rl;->c(Ljava/lang/String;)Lcom/byazt/eg/rl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v3

    iget-object v3, v3, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/byazt/eg/p;->c(Lcom/byazt/eg/rl;Ljava/lang/String;)Lcom/byazt/eg/p;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byazt/gu/a;->c(Lcom/byazt/gqp/z;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "multipart/form-data"

    .line 27
    invoke-static {v1}, Lcom/byazt/eg/rl;->c(Ljava/lang/String;)Lcom/byazt/eg/rl;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v2

    iget-object v2, v2, Lcom/byazt/gqp/z;->n:[B

    .line 29
    invoke-static {v1, v2}, Lcom/byazt/eg/p;->c(Lcom/byazt/eg/rl;[B)Lcom/byazt/eg/p;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/byazt/eg/qy$c;

    invoke-direct {v2}, Lcom/byazt/eg/qy$c;-><init>()V

    sget-object v3, Lcom/byazt/eg/qy;->n:Lcom/byazt/eg/rl;

    .line 31
    invoke-virtual {v2, v3}, Lcom/byazt/eg/qy$c;->c(Lcom/byazt/eg/rl;)Lcom/byazt/eg/qy$c;

    move-result-object v2

    .line 32
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/gqp/z;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/gqp/z;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/byazt/eg/qy$c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/eg/p;)Lcom/byazt/eg/qy$c;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/byazt/eg/qy$c;->c()Lcom/byazt/eg/qy;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byazt/gu/a;->tt(Lcom/byazt/gqp/z;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->ve()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v2

    iget-object v2, v2, Lcom/byazt/gqp/z;->ve:Lcom/byazt/gqp/da;

    invoke-virtual {v2}, Lcom/byazt/gqp/da;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/eg/rl;->c(Ljava/lang/String;)Lcom/byazt/eg/rl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v3

    iget-object v3, v3, Lcom/byazt/gqp/z;->n:[B

    invoke-static {v2, v3}, Lcom/byazt/eg/p;->c(Lcom/byazt/eg/rl;[B)Lcom/byazt/eg/p;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;

    .line 39
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->n()Lcom/byazt/gqp/c;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->n()Lcom/byazt/gqp/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/byazt/gqp/c;->c:Z

    if-eqz v1, :cond_5

    .line 40
    new-instance v1, Lcom/byazt/eg/uj$c;

    invoke-direct {v1}, Lcom/byazt/eg/uj$c;-><init>()V

    invoke-virtual {v1}, Lcom/byazt/eg/uj$c;->c()Lcom/byazt/eg/uj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/uj$c;->ve()Lcom/byazt/eg/uj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/eg/yv$c;->c(Lcom/byazt/eg/uj;)Lcom/byazt/eg/yv$c;

    .line 41
    :cond_5
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->uj()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->uj()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 42
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->uj()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    goto :goto_1

    .line 45
    :cond_7
    new-instance p1, Lcom/byazt/gu/uj;

    iget-object v1, p0, Lcom/byazt/gu/a;->t:Lcom/byazt/eg/gu;

    invoke-virtual {v0}, Lcom/byazt/eg/yv$c;->c()Lcom/byazt/eg/yv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/eg/gu;->c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/n;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/byazt/gu/uj;-><init>(Lcom/byazt/eg/n;)V

    return-object p1
.end method

.method public c()Lcom/byazt/gqp/uj;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/gu/a;->u:Lcom/byazt/gqp/uj;

    return-object v0
.end method
