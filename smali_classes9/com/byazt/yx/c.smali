.class public final Lcom/byazt/yx/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eg/gt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfc,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/eg/u;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yx/c;->c:Lcom/byazt/eg/u;

    .line 5
    .line 6
    return-void
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/eg/t;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/eg/t;

    .line 41
    invoke-virtual {v3}, Lcom/byazt/eg/t;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/eg/t;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/eg/gt$c;)Lcom/byazt/eg/h;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/byazt/eg/gt$c;->c()Lcom/byazt/eg/yv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->a()Lcom/byazt/eg/yv$c;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->uj()Lcom/byazt/eg/p;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/byazt/eg/p;->c()Lcom/byazt/eg/rl;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Lcom/byazt/eg/rl;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/byazt/eg/p;->tt()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 8
    invoke-virtual {v1, v2}, Lcom/byazt/eg/yv$c;->tt(Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    .line 9
    invoke-virtual {v1, v2, v7}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 10
    invoke-virtual {v1, v6}, Lcom/byazt/eg/yv$c;->tt(Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/byazt/kh/ve;->c(Lcom/byazt/eg/my;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 16
    invoke-virtual {v1, v2, v9}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    const/4 v8, 0x1

    .line 17
    :cond_5
    iget-object v2, p0, Lcom/byazt/yx/c;->c:Lcom/byazt/eg/u;

    invoke-virtual {v0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/byazt/eg/u;->c(Lcom/byazt/eg/my;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Cookie"

    .line 19
    invoke-direct {p0, v2}, Lcom/byazt/yx/c;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    :cond_6
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 21
    invoke-static {}, Lcom/byazt/kh/uj;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 22
    :cond_7
    invoke-virtual {v1}, Lcom/byazt/eg/yv$c;->c()Lcom/byazt/eg/yv;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/byazt/eg/gt$c;->c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/h;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/byazt/yx/c;->c:Lcom/byazt/eg/u;

    invoke-virtual {v0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/eg/h;->sp()Lcom/byazt/eg/rh;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/byazt/yx/n;->c(Lcom/byazt/eg/u;Lcom/byazt/eg/my;Lcom/byazt/eg/rh;)V

    .line 24
    invoke-virtual {p1}, Lcom/byazt/eg/h;->i()Lcom/byazt/eg/h$c;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/h$c;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v1}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {p1}, Lcom/byazt/yx/n;->ve(Lcom/byazt/eg/h;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Lcom/byazt/mk/da;

    invoke-virtual {p1}, Lcom/byazt/eg/h;->x()Lcom/byazt/eg/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/eg/d;->ve()Lcom/byazt/mk/n;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/byazt/mk/da;-><init>(Lcom/byazt/mk/my;)V

    .line 29
    invoke-virtual {p1}, Lcom/byazt/eg/h;->sp()Lcom/byazt/eg/rh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/eg/rh;->tt()Lcom/byazt/eg/rh$c;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v1}, Lcom/byazt/eg/rh$c;->tt(Ljava/lang/String;)Lcom/byazt/eg/rh$c;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v6}, Lcom/byazt/eg/rh$c;->tt(Ljava/lang/String;)Lcom/byazt/eg/rh$c;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/byazt/eg/rh$c;->c()Lcom/byazt/eg/rh;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/rh;)Lcom/byazt/eg/h$c;

    .line 34
    invoke-virtual {p1, v3}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Lcom/byazt/yx/x;

    invoke-static {v2}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Lcom/byazt/yx/x;-><init>(Ljava/lang/String;JLcom/byazt/mk/n;)V

    invoke-virtual {v0, v1}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/d;)Lcom/byazt/eg/h$c;

    .line 36
    :cond_8
    invoke-virtual {v0}, Lcom/byazt/eg/h$c;->c()Lcom/byazt/eg/h;

    move-result-object p1

    return-object p1
.end method
