.class public Lcom/alibaba/fastjson/serializer/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# instance fields
.field private final a:[Lcom/alibaba/fastjson/serializer/h0;

.field private final b:[Lcom/alibaba/fastjson/serializer/h0;

.field private transient c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/serializer/h0;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/z0;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/alibaba/fastjson/serializer/z0;->d:I

    .line 5
    invoke-static {p1}, Lcom/alibaba/fastjson/util/k;->G(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/z0;->d:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/k;->z(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/e;

    .line 9
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/z0;->c(Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/serializer/h0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/h0;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/serializer/h0;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/z0;->a:[Lcom/alibaba/fastjson/serializer/h0;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 12
    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson/util/k;->z(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/util/e;

    .line 14
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/z0;->c(Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/serializer/h0;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/h0;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/alibaba/fastjson/serializer/h0;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/z0;->b:[Lcom/alibaba/fastjson/serializer/h0;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/z0;->b([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/z0;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method static varargs b([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v0
.end method


# virtual methods
.method public c(Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/serializer/h0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Number;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/alibaba/fastjson/serializer/g1;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/g1;-><init>(Lcom/alibaba/fastjson/util/e;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/i1;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/i1;-><init>(Lcom/alibaba/fastjson/util/e;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p4

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    move-result-object v10

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v10}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    return-void

    :cond_0
    move/from16 v7, p5

    .line 3
    invoke-virtual {v1, v8, v0, v7}, Lcom/alibaba/fastjson/serializer/z0;->k(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, v1, Lcom/alibaba/fastjson/serializer/z0;->b:[Lcom/alibaba/fastjson/serializer/h0;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, v1, Lcom/alibaba/fastjson/serializer/z0;->a:[Lcom/alibaba/fastjson/serializer/h0;

    :goto_0
    move-object v11, v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    move-result-object v12

    .line 8
    iget v6, v1, Lcom/alibaba/fastjson/serializer/z0;->d:I

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/v0;->E(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/z0;->i(Lcom/alibaba/fastjson/serializer/v0;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x5b

    goto :goto_1

    :cond_3
    const/16 v3, 0x7b

    :goto_1
    if-eqz v2, :cond_4

    const/16 v4, 0x5d

    goto :goto_2

    :cond_4
    const/16 v4, 0x7d

    .line 10
    :goto_2
    :try_start_0
    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 11
    array-length v3, v11

    if-lez v3, :cond_5

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->x()V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    :cond_5
    move-object/from16 v3, p3

    .line 14
    invoke-virtual {v1, v8, v0, v9, v3}, Lcom/alibaba/fastjson/serializer/z0;->j(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v9, :cond_6

    .line 16
    sget-object v3, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    const/16 v7, 0x2c

    if-eqz v3, :cond_7

    const/16 v3, 0x2c

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 18
    :goto_4
    invoke-static {v8, v0, v3}, Lcom/alibaba/fastjson/serializer/j0;->w(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;C)C

    move-result v3

    if-ne v3, v7, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const/4 v9, 0x0

    .line 19
    :goto_6
    array-length v13, v11

    if-ge v9, v13, :cond_1b

    .line 20
    aget-object v13, v11, v9

    .line 21
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 22
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->a()Ljava/lang/reflect/Field;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 23
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v14

    if-eqz v14, :cond_9

    goto/16 :goto_7

    .line 24
    :cond_9
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->c()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v0, v14}, Lcom/alibaba/fastjson/serializer/j0;->i(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_7

    .line 25
    :cond_a
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/h0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 26
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->c()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v0, v15, v14}, Lcom/alibaba/fastjson/serializer/j0;->g(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto/16 :goto_7

    .line 27
    :cond_b
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->c()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v0, v15, v14}, Lcom/alibaba/fastjson/serializer/j0;->r(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 28
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v0, v5, v14}, Lcom/alibaba/fastjson/serializer/j0;->u(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    if-nez v2, :cond_c

    .line 29
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->e()Z

    move-result v16

    if-nez v16, :cond_c

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 30
    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_7

    :cond_c
    if-eqz v5, :cond_13

    .line 31
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 32
    iget-object v6, v13, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    move-result-object v6

    .line 33
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_d

    instance-of v7, v5, Ljava/lang/Byte;

    if-eqz v7, :cond_d

    move-object v7, v5

    check-cast v7, Ljava/lang/Byte;

    .line 34
    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_7

    .line 35
    :cond_d
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_e

    instance-of v7, v5, Ljava/lang/Short;

    if-eqz v7, :cond_e

    move-object v7, v5

    check-cast v7, Ljava/lang/Short;

    .line 36
    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    if-nez v7, :cond_e

    goto :goto_7

    .line 37
    :cond_e
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_f

    move-object v7, v5

    check-cast v7, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_f

    goto :goto_7

    .line 39
    :cond_f
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_10

    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_10

    move-object v7, v5

    check-cast v7, Ljava/lang/Long;

    .line 40
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v7, v16, v18

    if-nez v7, :cond_10

    goto :goto_7

    .line 41
    :cond_10
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_11

    instance-of v7, v5, Ljava/lang/Float;

    if-eqz v7, :cond_11

    move-object v7, v5

    check-cast v7, Ljava/lang/Float;

    .line 42
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/16 v16, 0x0

    cmpl-float v7, v7, v16

    if-nez v7, :cond_11

    goto :goto_7

    .line 43
    :cond_11
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_12

    instance-of v7, v5, Ljava/lang/Double;

    if-eqz v7, :cond_12

    move-object v7, v5

    check-cast v7, Ljava/lang/Double;

    .line 44
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v7, v16, v18

    if-nez v7, :cond_12

    goto :goto_7

    .line 45
    :cond_12
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_13

    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_13

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_13

    :goto_7
    const/16 v6, 0x2c

    goto :goto_a

    :cond_13
    if-eqz v3, :cond_14

    const/16 v6, 0x2c

    .line 47
    invoke-virtual {v10, v6}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 48
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    goto :goto_8

    :cond_14
    const/16 v6, 0x2c

    .line 50
    :cond_15
    :goto_8
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/h0;->c()Ljava/lang/String;

    move-result-object v3

    if-eq v15, v3, :cond_17

    if-nez v2, :cond_16

    .line 51
    invoke-virtual {v10, v15}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 52
    :cond_16
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    if-eq v14, v5, :cond_19

    if-nez v2, :cond_18

    .line 53
    invoke-virtual {v13, v8}, Lcom/alibaba/fastjson/serializer/h0;->f(Lcom/alibaba/fastjson/serializer/v0;)V

    .line 54
    :cond_18
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    goto :goto_9

    :cond_19
    if-nez v2, :cond_1a

    .line 55
    invoke-virtual {v13, v8, v5}, Lcom/alibaba/fastjson/serializer/h0;->g(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;)V

    goto :goto_9

    .line 56
    :cond_1a
    invoke-virtual {v13, v8, v5}, Lcom/alibaba/fastjson/serializer/h0;->h(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;)V

    :goto_9
    const/4 v3, 0x1

    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/16 v7, 0x2c

    goto/16 :goto_6

    :cond_1b
    const/16 v6, 0x2c

    if-eqz v3, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v6, 0x0

    .line 57
    :goto_b
    invoke-static {v8, v0, v6}, Lcom/alibaba/fastjson/serializer/j0;->v(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;C)C

    .line 58
    array-length v0, v11

    if-lez v0, :cond_1d

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->d()V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 61
    :cond_1d
    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "write javaBean error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_c
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    throw v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/z0;->g()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/alibaba/fastjson/serializer/h0;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/h0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/z0;->b:[Lcom/alibaba/fastjson/serializer/h0;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/z0;->b:[Lcom/alibaba/fastjson/serializer/h0;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/h0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/serializer/h0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/z0;->c:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/z0;->a:[Lcom/alibaba/fastjson/serializer/h0;

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/z0;->b:[Lcom/alibaba/fastjson/serializer/h0;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/h0;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/z0;->c:Ljava/util/Map;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/z0;->c:Ljava/util/Map;

    .line 34
    .line 35
    return-object v0
.end method

.method public h()[Lcom/alibaba/fastjson/serializer/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/z0;->a:[Lcom/alibaba/fastjson/serializer/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/alibaba/fastjson/serializer/v0;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/z0;->d:I

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method protected j(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/serializer/v0;->z(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public k(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;I)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->a()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 13
    .line 14
    invoke-static {v0, p3, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v0;->c(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v0;->O(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1
.end method
