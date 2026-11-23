.class public Lcom/alibaba/fastjson/serializer/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static a:Lcom/alibaba/fastjson/serializer/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/e1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/e1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/e1;->a:Lcom/alibaba/fastjson/serializer/e1;

    .line 7
    .line 8
    return-void
.end method

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
.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    move-result-object v8

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    return-void

    .line 3
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 4
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    instance-of v2, v1, Ljava/util/SortedMap;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    .line 6
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v2

    goto :goto_0

    :catch_0
    nop

    :cond_1
    move-object v9, v1

    .line 7
    :goto_0
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/v0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/v0;->O(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v1, p3

    .line 10
    invoke-virtual {v7, v10, v0, v1, v11}, Lcom/alibaba/fastjson/serializer/v0;->D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v1, 0x7b

    .line 11
    :try_start_1
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->x()V

    .line 13
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    .line 14
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 16
    :goto_1
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v2, 0x0

    move-object v14, v2

    move-object v15, v14

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->s()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    if-eqz v2, :cond_6

    .line 21
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_5

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_7

    .line 23
    :cond_5
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {v7, v0, v4}, Lcom/alibaba/fastjson/serializer/j0;->i(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 25
    :cond_6
    :goto_3
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v7, v0, v4}, Lcom/alibaba/fastjson/serializer/j0;->i(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->q()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    if-eqz v2, :cond_a

    .line 28
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_8

    goto :goto_4

    .line 29
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_9

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_b

    .line 30
    :cond_9
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {v7, v0, v4, v3}, Lcom/alibaba/fastjson/serializer/j0;->g(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    .line 32
    :cond_a
    :goto_4
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v7, v0, v4, v3}, Lcom/alibaba/fastjson/serializer/j0;->g(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    .line 33
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->n()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    if-eqz v2, :cond_e

    .line 35
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_c

    goto :goto_5

    .line 36
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_d

    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_f

    .line 37
    :cond_d
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v7, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/j0;->r(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 39
    :cond_e
    :goto_5
    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/j0;->r(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_f
    :goto_6
    move-object v4, v2

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->v()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    if-eqz v4, :cond_12

    .line 42
    instance-of v2, v4, Ljava/lang/String;

    if-eqz v2, :cond_10

    goto :goto_7

    .line 43
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_11

    instance-of v2, v4, Ljava/lang/Number;

    if-eqz v2, :cond_13

    .line 44
    :cond_11
    invoke-static {v4}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v7, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/j0;->u(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    .line 46
    :cond_12
    :goto_7
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/j0;->u(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_8
    move-object v3, v2

    :cond_13
    if-nez v3, :cond_14

    .line 47
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_2

    .line 48
    :cond_14
    instance-of v2, v4, Ljava/lang/String;

    const/16 v5, 0x2c

    if-eqz v2, :cond_17

    .line 49
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_15

    .line 50
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 51
    :cond_15
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 53
    :cond_16
    invoke-virtual {v8, v2, v12}, Lcom/alibaba/fastjson/serializer/v1;->x(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_17
    if-nez v1, :cond_18

    .line 54
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 55
    :cond_18
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 56
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_9

    .line 57
    :cond_19
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    goto :goto_a

    .line 58
    :cond_1a
    :goto_9
    invoke-static {v4}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/v0;->L(Ljava/lang/String;)V

    :goto_a
    const/16 v1, 0x3a

    .line 60
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    :goto_b
    if-nez v3, :cond_1b

    .line 61
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 62
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v14, :cond_1c

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    .line 63
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_c

    .line 64
    :cond_1c
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    move-result-object v14

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v16, v6

    move v6, v15

    .line 65
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v14

    move-object/from16 v14, v16

    goto :goto_c

    .line 66
    :cond_1d
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->d()V

    .line 68
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    :cond_1e
    const/16 v0, 0x7d

    .line 70
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    return-void

    :catchall_0
    move-exception v0

    .line 71
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    throw v0
.end method
