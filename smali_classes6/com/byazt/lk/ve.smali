.class public Lcom/byazt/lk/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2cb,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ut/i;

.field public final tt:Lcom/byazt/ut/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ut/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/lk/ve;->tt:Lcom/byazt/ut/c;

    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;ZZ)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/byazt/ut/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 4
    iget-object v0, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p1, p2}, Lcom/byazt/ut/sl;->c(Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    iget-object p4, p0, Lcom/byazt/lk/ve;->c:Lcom/byazt/ut/i;

    if-eqz p4, :cond_2

    .line 7
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p5, "key"

    .line 8
    iget-object p6, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "origin"

    .line 9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p5, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "memoryProxyService"

    .line 10
    invoke-virtual {p4, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "apiClazz"

    .line 11
    iget-object p1, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object p1, p0, Lcom/byazt/lk/ve;->tt:Lcom/byazt/ut/c;

    .line 13
    invoke-virtual {p1}, Lcom/byazt/ut/c;->n()Lcom/byazt/lk/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/lk/uj;->c()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 15
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .line 16
    instance-of v0, p6, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 17
    check-cast p6, Landroid/util/Pair;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p6, p6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p3, "allServices"

    .line 21
    invoke-virtual {p4, p3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    iget-object p1, p0, Lcom/byazt/lk/ve;->c:Lcom/byazt/ut/i;

    .line 23
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/RuntimeException;

    const-string p5, "service not match"

    invoke-direct {p4, p5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p5, 0x5

    .line 24
    invoke-interface {p1, p5, p3, p4}, Lcom/byazt/ut/i;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_4
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/byazt/lk/ve;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p3

    if-eqz p5, :cond_6

    .line 26
    invoke-virtual {p1, p3, p2}, Lcom/byazt/ut/sl;->c(Ljava/lang/Object;Lcom/byazt/dna/c;)V

    if-eqz p4, :cond_5

    .line 27
    invoke-virtual {p1, p4}, Lcom/byazt/ut/sl;->c(Ljava/util/function/Function;)V

    .line 28
    iget-object p2, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-static {p4, p2}, Lcom/byazt/rj/c;->c(Ljava/util/function/Function;Ljava/lang/String;)I

    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/byazt/ut/sl;->c(I)V

    goto :goto_1

    .line 30
    :cond_5
    iget p2, p1, Lcom/byazt/ut/sl;->ve:I

    invoke-virtual {p1, p2}, Lcom/byazt/ut/sl;->c(I)V

    :cond_6
    :goto_1
    return-object p3
.end method

.method private c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 31
    :try_start_0
    iget-object v1, p1, Lcom/byazt/ut/sl;->tt:Ljava/lang/Class;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p3

    .line 32
    :cond_0
    iget-object v1, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 33
    iget-object p2, p1, Lcom/byazt/ut/sl;->tt:Ljava/lang/Class;

    new-array p4, v2, [Ljava/lang/Class;

    iget-object v1, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    aput-object v1, p4, v0

    .line 34
    invoke-virtual {p2, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v0

    .line 35
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_2

    .line 36
    :cond_1
    invoke-static {p3}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    iget-boolean v1, p1, Lcom/byazt/ut/sl;->i:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    .line 38
    iget-object p4, p1, Lcom/byazt/ut/sl;->tt:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v4, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    aput-object v4, v1, v2

    .line 39
    invoke-virtual {p4, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p4

    .line 40
    iget-object v1, p0, Lcom/byazt/lk/ve;->tt:Lcom/byazt/ut/c;

    .line 41
    invoke-virtual {v1}, Lcom/byazt/ut/c;->ve()Lcom/byazt/lk/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/byazt/lk/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Z)Landroid/util/Pair;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 42
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    iget-object p2, p1, Lcom/byazt/ut/sl;->tt:Ljava/lang/Class;

    new-array p4, v2, [Ljava/lang/Class;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p4, v0

    .line 44
    invoke-virtual {p2, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v0

    .line 45
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    const/4 v0, 0x2

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/byazt/lk/ve;->c:Lcom/byazt/ut/i;

    goto :goto_1

    .line 47
    :cond_3
    iget-object p2, p0, Lcom/byazt/lk/ve;->c:Lcom/byazt/ut/i;

    if-eqz p2, :cond_4

    const-string p4, "service not instanceof Function:"

    .line 48
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, p4, v1}, Lcom/byazt/ut/i;->c(Lcom/byazt/ut/sl;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 49
    iget-object p4, p0, Lcom/byazt/lk/ve;->c:Lcom/byazt/ut/i;

    if-eqz p4, :cond_4

    const-string v1, "reuse failed"

    .line 50
    invoke-interface {p4, p1, v0, v1, p2}, Lcom/byazt/ut/i;->c(Lcom/byazt/ut/sl;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    move-object p1, p3

    :goto_2
    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/byazt/lk/ve;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/ut/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lk/ve;->c:Lcom/byazt/ut/i;

    return-void
.end method

.method public tt(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v6, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/byazt/lk/ve;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;ZZ)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
