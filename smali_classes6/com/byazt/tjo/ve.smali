.class public Lcom/byazt/tjo/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x36
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/je/ve;)Lcom/byazt/yf/a;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/byazt/yf/a;

    invoke-direct {v0}, Lcom/byazt/yf/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/byazt/je/ve;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/a;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/byazt/je/ve;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/a;->uj(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/je/ve;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/a;->tt(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/je/ve;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/a;->ve(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/je/ve;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/a;->c(I)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/je/ve;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/a;->n(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/je/ve;->c()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/yf/a;->c(Ljava/util/Map;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
