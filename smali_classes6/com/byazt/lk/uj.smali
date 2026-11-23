.class public Lcom/byazt/lk/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2cb,
        0xf
    }
.end annotation


# instance fields
.field public volatile c:Lcom/byazt/dna/gu;

.field public tt:Lcom/byazt/ut/i;


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

.method private c(Lcom/byazt/ut/sl;)Ljava/lang/Object;
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/byazt/lk/uj;->c()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 14
    iget-object p1, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 16
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private c(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, -0x2

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 88
    iget-object p1, p1, Lcom/byazt/ut/sl;->x:[I

    if-eqz p1, :cond_0

    array-length p1, p1

    if-lez p1, :cond_0

    .line 89
    invoke-static {p2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/lk/uj;->c(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-static {p3}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/byazt/lk/uj;->c(Ljava/util/function/Function;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 3

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, -0x3

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private tt()Lcom/byazt/dna/gu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lk/uj;->c:Lcom/byazt/dna/gu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "m_d_s"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/dna/gu;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/lk/uj;->c:Lcom/byazt/dna/gu;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/lk/uj;->c:Lcom/byazt/dna/gu;

    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ut/sl;",
            "Lcom/byazt/dna/c;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/function/Function;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/byazt/lk/uj;->c(Lcom/byazt/ut/sl;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 18
    :cond_0
    iget-boolean v2, p1, Lcom/byazt/ut/sl;->sp:Z

    if-eqz v2, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    instance-of p1, v0, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 20
    check-cast v0, Ljava/util/Map;

    .line 21
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 22
    invoke-interface {p2}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 23
    :cond_2
    invoke-interface {p2}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1

    :cond_3
    return-object v1

    .line 24
    :cond_4
    :goto_0
    instance-of p2, v0, Landroid/util/Pair;

    if-eqz p2, :cond_5

    .line 25
    check-cast v0, Landroid/util/Pair;

    return-object v0

    .line 26
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "provideMemoryService:noContextService serviceObj is not Pair, key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoService"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/lk/uj;->tt()Lcom/byazt/dna/gu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    monitor-enter v0

    const/4 v1, -0x1

    .line 4
    :try_start_0
    invoke-interface {v0, v1}, Lcom/byazt/dna/gu;->getData(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/byazt/dna/gu;->setData(ILjava/lang/Object;)V

    .line 7
    monitor-exit v0

    return-object v2

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 10
    check-cast v2, Ljava/util/Map;

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const-string v0, "AutoService"

    const-string v1, "provideMemoryService: memoryDataService is null"

    .line 12
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/byazt/ut/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lk/uj;->tt:Lcom/byazt/ut/i;

    return-void
.end method

.method public c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/byazt/lk/uj;->c()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v1, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 30
    :cond_1
    iget-object v2, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 31
    iget-object p2, p0, Lcom/byazt/lk/uj;->tt:Lcom/byazt/ut/i;

    if-eqz p2, :cond_2

    .line 32
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p4, "key"

    .line 33
    invoke-virtual {p2, p4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "origin"

    .line 34
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "apiClazz"

    .line 35
    iget-object p1, p1, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    iget-object p1, p0, Lcom/byazt/lk/uj;->tt:Lcom/byazt/ut/i;

    .line 37
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/RuntimeException;

    const-string p4, "newService is not assignable to apiClazz"

    invoke-direct {p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x6

    .line 38
    invoke-interface {p1, p4, p2, p3}, Lcom/byazt/ut/i;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 39
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    iget-boolean v3, p1, Lcom/byazt/ut/sl;->sp:Z

    if-eqz v3, :cond_7

    if-nez p2, :cond_4

    goto :goto_1

    .line 41
    :cond_4
    invoke-interface {p2}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p2

    .line 42
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 43
    check-cast v2, Ljava/util/Map;

    .line 44
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_6

    .line 45
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p3}, Lcom/byazt/lk/uj;->c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_6
    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 49
    :cond_7
    :goto_1
    instance-of p2, v2, Landroid/util/Pair;

    if-eqz p2, :cond_8

    .line 50
    check-cast v2, Landroid/util/Pair;

    .line 51
    iget-object p2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lk/uj;->c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_8
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/byazt/ut/sl;Lcom/byazt/ut/c;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/lk/uj;->c()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v9, v7, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 55
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    iget-boolean v3, v7, Lcom/byazt/ut/sl;->sp:Z

    const/4 v8, 0x0

    if-nez v3, :cond_5

    .line 58
    instance-of v3, v2, Landroid/util/Pair;

    if-eqz v3, :cond_8

    .line 59
    check-cast v2, Landroid/util/Pair;

    .line 60
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v3

    iget-object v4, v7, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 61
    invoke-static {v3, v4}, Lcom/byazt/rj/c;->c(Ljava/util/function/Function;Ljava/lang/String;)I

    move-result v12

    .line 62
    iget v3, v7, Lcom/byazt/ut/sl;->ve:I

    if-ge v12, v3, :cond_4

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ut/c;->ve()Lcom/byazt/lk/c;

    move-result-object v3

    const/4 v4, 0x0

    .line 64
    invoke-virtual {v3, v7, v4, v8}, Lcom/byazt/lk/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Z)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 65
    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v7, v4, v5}, Lcom/byazt/lk/uj;->c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v8, v0, Lcom/byazt/lk/uj;->tt:Lcom/byazt/ut/i;

    if-eqz v8, :cond_3

    .line 68
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget v13, v7, Lcom/byazt/ut/sl;->ve:I

    invoke-interface/range {v8 .. v13}, Lcom/byazt/ut/i;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 69
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ut/c;->uj()Lcom/byazt/lk/ve;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v6

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/lk/ve;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;Z)Ljava/lang/Object;

    :cond_4
    return-void

    .line 71
    :cond_5
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 72
    move-object v9, v2

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_8

    .line 73
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 76
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v3

    iget-object v4, v7, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 77
    invoke-static {v3, v4}, Lcom/byazt/rj/c;->c(Ljava/util/function/Function;Ljava/lang/String;)I

    move-result v15

    .line 78
    iget v3, v7, Lcom/byazt/ut/sl;->ve:I

    if-ge v15, v3, :cond_6

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ut/c;->ve()Lcom/byazt/lk/c;

    move-result-object v3

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-virtual {v6, v4}, Lcom/byazt/ut/c;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    move-result-object v4

    .line 81
    invoke-virtual {v3, v7, v4, v8}, Lcom/byazt/lk/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Z)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 82
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v7, v5, v11}, Lcom/byazt/lk/uj;->c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v11, v0, Lcom/byazt/lk/uj;->tt:Lcom/byazt/ut/i;

    if-eqz v11, :cond_7

    .line 85
    iget-object v12, v7, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    iget-object v13, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v14, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget v1, v7, Lcom/byazt/ut/sl;->ve:I

    move/from16 v16, v1

    invoke-interface/range {v11 .. v16}, Lcom/byazt/ut/i;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 86
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ut/c;->uj()Lcom/byazt/lk/ve;

    move-result-object v1

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v11

    move v6, v12

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/lk/ve;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    return-void
.end method
