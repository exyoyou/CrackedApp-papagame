.class public Lcom/byazt/vd/n;
.super Lcom/byazt/vd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62e,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/vd/c;-><init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/xj/ve;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->kp()Lcom/byazt/pm/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p2}, Lcom/byazt/pm/i;->c(Ljava/lang/String;)V

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 12
    invoke-direct {p0, v0, p2}, Lcom/byazt/vd/n;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/vd/c;->a:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/byazt/vd/c;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v1, v1}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/byazt/vd/n;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method
