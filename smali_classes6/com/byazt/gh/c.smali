.class public Lcom/byazt/gh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d6,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ut/c;

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Lcom/byazt/ut/i;


# direct methods
.method public constructor <init>(Lcom/byazt/ut/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gh/c;->c:Lcom/byazt/ut/c;

    .line 5
    .line 6
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/util/function/Function;I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    iget-boolean v0, p2, Lcom/byazt/ut/sl;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/gh/c;->tt:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 31
    :cond_1
    iget v0, p2, Lcom/byazt/ut/sl;->uj:I

    if-lez v0, :cond_2

    return-void

    :cond_2
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/gh/c;->c(Ljava/lang/String;Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/util/function/Function;IZ)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byaztp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public c(Lcom/byazt/ut/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gh/c;->ve:Lcom/byazt/ut/i;

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/util/function/Function;IZ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 33
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/byazt/gh/c;->c()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    :try_start_1
    const-string v4, "byaztp"

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v2, p3

    move-object v13, v2

    goto/16 :goto_8

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    .line 37
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 38
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 39
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 40
    array-length v11, v6

    :goto_4
    if-ge v2, v11, :cond_4

    aget-object v12, v6, v2

    .line 41
    invoke-virtual {v12, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p3

    .line 42
    :try_start_4
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 43
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_v"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v13, p3

    const-string v2, "fieldInfo"

    .line 45
    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_1
    move-object/from16 v13, p3

    .line 46
    :catchall_2
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object v2

    const-string v5, "model_key"

    .line 47
    iget-object v6, v8, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "origin_key"

    move-object/from16 v6, p1

    .line 48
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sameClassLoader"

    .line 49
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "origin"

    .line 50
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "newRegAts"

    move-object/from16 v11, p4

    .line 51
    invoke-virtual {v4, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "old_sdk_version"

    move/from16 v5, p5

    .line 52
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "current_sdk_version"

    .line 53
    invoke-virtual {v2}, Lcom/byazt/ut/uj;->getVersion()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "currentAts"

    .line 54
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not plugin Clazz"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v7, v4

    move v6, v10

    move-object v5, v13

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v9, v4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v13, p3

    :goto_6
    move-object v2, v13

    goto :goto_9

    :cond_5
    move-object/from16 v13, p3

    move-object/from16 v11, p4

    if-eqz p6, :cond_6

    .line 56
    :try_start_6
    iget-object v0, v1, Lcom/byazt/gh/c;->c:Lcom/byazt/ut/c;

    invoke-virtual {v0}, Lcom/byazt/ut/c;->uj()Lcom/byazt/lk/ve;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 57
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/lk/ve;->tt(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 58
    :cond_6
    iget-object v0, v1, Lcom/byazt/gh/c;->c:Lcom/byazt/ut/c;

    invoke-virtual {v0}, Lcom/byazt/ut/c;->uj()Lcom/byazt/lk/ve;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/lk/ve;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_7
    move-object v2, v0

    .line 60
    :try_start_7
    iget-object v0, v8, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v5, v2

    move-object v7, v9

    move v6, v10

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v13, p3

    move-object v2, v13

    :goto_8
    const/4 v10, 0x0

    :goto_9
    move-object v5, v2

    move-object v7, v9

    move v6, v10

    move-object v9, v0

    .line 61
    :goto_a
    iget-object v2, v1, Lcom/byazt/gh/c;->ve:Lcom/byazt/ut/i;

    if-eqz v2, :cond_7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v8, v9

    .line 62
    invoke-interface/range {v2 .. v8}, Lcom/byazt/ut/i;->c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;ZLorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/gh/c;->tt:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/function/Function;Z)V
    .locals 12

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 5
    invoke-static {p1}, Lcom/byazt/ut/c;->c(Ljava/util/function/Function;)I

    move-result v2

    .line 6
    check-cast v1, Ljava/util/Map;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 10
    iget-object v3, p0, Lcom/byazt/gh/c;->c:Lcom/byazt/ut/c;

    invoke-virtual {v3}, Lcom/byazt/ut/c;->sp()Lcom/byazt/lk/tt;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/byazt/lk/tt;->c(Ljava/lang/String;)Lcom/byazt/ut/sl;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 11
    iget-object v3, v6, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/byazt/gh/c;->ve:Lcom/byazt/ut/i;

    if-eqz v3, :cond_0

    .line 13
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    if-eqz v7, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "null"

    .line 15
    :goto_1
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object v5

    const-string v8, "model_key"

    .line 16
    iget-object v9, v6, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "origin_key"

    .line 17
    invoke-virtual {v10, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "origin"

    .line 18
    invoke-virtual {v10, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "newRegAts"

    .line 19
    invoke-virtual {v10, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "old_sdk_version"

    .line 20
    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "current_sdk_version"

    .line 21
    invoke-virtual {v5}, Lcom/byazt/ut/uj;->getVersion()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "currentAts"

    .line 22
    invoke-virtual {v10, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msg"

    const-string v4, "key not equals model_key"

    .line 23
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    iget-object v5, p0, Lcom/byazt/gh/c;->ve:Lcom/byazt/ut/i;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/byazt/ut/i;->c(Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/lang/Object;ZLorg/json/JSONObject;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_0

    .line 25
    invoke-virtual {v6, v0}, Lcom/byazt/ut/sl;->c(Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v3, 0x1d4c

    if-ge v2, v3, :cond_3

    move-object v3, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    move v8, v2

    .line 26
    invoke-direct/range {v3 .. v8}, Lcom/byazt/gh/c;->c(Ljava/lang/String;Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/util/function/Function;I)V

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    move v8, v2

    .line 27
    invoke-virtual/range {v3 .. v9}, Lcom/byazt/gh/c;->c(Ljava/lang/String;Lcom/byazt/ut/sl;Ljava/lang/Object;Ljava/util/function/Function;IZ)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
