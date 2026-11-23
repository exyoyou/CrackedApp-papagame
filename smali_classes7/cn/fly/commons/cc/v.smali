.class final Lcn/fly/commons/cc/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    instance-of v0, p0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/String;

    check-cast p0, [B

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Class;

    .line 79
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 80
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    .line 81
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to be "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-static {p1, p0, p2, p3}, Lcn/fly/commons/cc/v;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "values"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    invoke-static {v1, p1, p2, p3}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    const-string v1, "003*fadjfg"

    .line 394
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 395
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 396
    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 397
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 399
    invoke-static {p0}, Lcn/fly/commons/cc/v;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    array-length v0, p0

    .line 401
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 402
    aget-byte v5, p0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Object;",
            "Lcn/fly/commons/cc/t;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v3, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    const-string v0, "new"

    .line 1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-class v2, Ljava/util/Map;

    const-string v12, ")"

    const-string v13, "("

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    .line 2
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v8

    if-ne v3, v5, :cond_2

    aget-object v3, v8, v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    aget-object v1, v8, v4

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 7
    aget-object v3, v8, v4

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v8

    if-ne v0, v5, :cond_5

    aget-object v0, v8, v4

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 13
    :goto_2
    aget-object v1, v8, v4

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 14
    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    const-string v1, "org.json.JSONObject"

    .line 15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 16
    aget-object v2, v8, v4

    invoke-static {v2, v1, v10, v11}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "org.json.JSONArray"

    .line 17
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 18
    invoke-static {v0, v2, v1, v3}, Lcn/fly/commons/cc/v;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 19
    :goto_3
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_5
    const-class v0, Lcn/fly/commons/cc/c;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "mth: new at: "

    if-eqz v0, :cond_8

    .line 21
    array-length v0, v8

    if-ne v0, v15, :cond_6

    .line 22
    new-instance v0, Lcn/fly/commons/cc/c;

    aget-object v1, v8, v4

    check-cast v1, Ljava/lang/Number;

    aget-object v2, v8, v5

    check-cast v2, Ljava/lang/Number;

    invoke-direct {v0, v1, v2, v14}, Lcn/fly/commons/cc/c;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_6
    array-length v0, v8

    if-ne v0, v1, :cond_7

    .line 24
    new-instance v0, Lcn/fly/commons/cc/c;

    aget-object v1, v8, v4

    check-cast v1, Ljava/lang/Number;

    aget-object v2, v8, v5

    check-cast v2, Ljava/lang/Number;

    aget-object v3, v8, v15

    check-cast v3, Ljava/lang/Number;

    invoke-direct {v0, v1, v2, v3}, Lcn/fly/commons/cc/c;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_7
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-array v0, v15, [[Z

    .line 26
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v1

    invoke-virtual {v1, v6, v8, v0}, Lcn/fly/commons/cc/z;->a(Ljava/lang/Class;[Ljava/lang/Object;[[Z)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_a

    aget-object v2, v0, v5

    .line 27
    aget-boolean v2, v2, v4

    if-nez v2, :cond_9

    .line 28
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v0, v0, v4

    invoke-virtual {v2, v9, v3, v8, v0}, Lcn/fly/commons/cc/z;->a(Lcn/fly/commons/cc/t;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    .line 29
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 31
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 32
    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v6, v0, v3

    .line 33
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    new-array v14, v5, [Z

    .line 34
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v15

    invoke-virtual {v15, v7, v8, v14}, Lcn/fly/commons/cc/z;->a([Ljava/lang/Class;[Ljava/lang/Object;[Z)[Z

    move-result-object v15

    if-eqz v15, :cond_c

    aget-boolean v0, v14, v4

    if-nez v0, :cond_b

    .line 35
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v0

    invoke-virtual {v0, v9, v7, v8, v15}, Lcn/fly/commons/cc/z;->a(Lcn/fly/commons/cc/t;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    .line 36
    :cond_b
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 37
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 38
    :cond_d
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v0, "fromJson"

    .line 39
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    array-length v0, v8

    if-ne v0, v5, :cond_f

    aget-object v0, v8, v4

    if-eqz v0, :cond_f

    const-string v2, "new"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 40
    invoke-static/range {v0 .. v7}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V

    return-void

    .line 41
    :cond_f
    const-class v0, Ljava/lang/reflect/Array;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "011cdVdecc!cSdgNgbcad"

    .line 42
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    array-length v0, v8

    if-ne v0, v15, :cond_10

    aget-object v0, v8, v5

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 43
    aget-object v1, v8, v4

    check-cast v1, Ljava/lang/Class;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_10
    const-string v0, "copy"

    .line 44
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x5

    if-ne v3, v0, :cond_11

    .line 45
    aget-object v0, v8, v4

    aget-object v2, v8, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v8, v15

    aget-object v1, v8, v1

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x4

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 47
    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_11
    if-ne v3, v15, :cond_12

    .line 48
    aget-object v0, v8, v4

    aget-object v1, v8, v5

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v8, v5

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 49
    :cond_12
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mth: copy at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string v0, "quit"

    .line 50
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-class v0, Lcn/fly/commons/cc/aa;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->f()V

    return-void

    .line 52
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    const/16 v16, 0x0

    move-object/from16 v4, p4

    const/4 v14, 0x1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/fly/commons/cc/z;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    move-object/from16 v17, v6

    :goto_5
    if-eqz v17, :cond_19

    new-array v5, v15, [[Z

    .line 53
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v0

    const/4 v3, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v18, v5

    invoke-virtual/range {v0 .. v5}, Lcn/fly/commons/cc/z;->a(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Object;[[Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_18

    aget-object v1, v18, v14

    .line 54
    aget-boolean v1, v1, v16

    if-nez v1, :cond_16

    .line 55
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v3, v18, v16

    invoke-virtual {v1, v9, v2, v8, v3}, Lcn/fly/commons/cc/z;->a(Lcn/fly/commons/cc/t;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    .line 56
    :cond_16
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_17
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    :goto_6
    return-void

    .line 60
    :cond_18
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v17

    goto :goto_5

    :cond_19
    :goto_7
    if-eqz v6, :cond_1e

    .line 61
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    array-length v1, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_1d

    aget-object v2, v0, v4

    .line 63
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 64
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    new-array v5, v14, [Z

    .line 65
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v15

    invoke-virtual {v15, v3, v8, v5}, Lcn/fly/commons/cc/z;->a([Ljava/lang/Class;[Ljava/lang/Object;[Z)[Z

    move-result-object v15

    if-eqz v15, :cond_1c

    aget-boolean v0, v5, v16

    if-nez v0, :cond_1a

    .line 66
    invoke-virtual/range {p5 .. p5}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v0

    invoke-virtual {v0, v9, v3, v8, v15}, Lcn/fly/commons/cc/z;->a(Lcn/fly/commons/cc/t;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    .line 67
    :cond_1a
    invoke-virtual {v2, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1b

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_1c
    const/4 v3, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1d
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_7

    .line 72
    :cond_1e
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;Ljava/lang/String;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 103
    instance-of v1, v7, Ljava/util/Map;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_8

    .line 104
    move-object v1, v7

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 105
    instance-of v1, v2, Lcn/fly/commons/cc/ab;

    if-eqz v1, :cond_1

    .line 106
    check-cast v2, Lcn/fly/commons/cc/ab;

    .line 107
    invoke-virtual {v2, v8}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 110
    :cond_1
    instance-of v1, v2, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5c

    .line 111
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v9, v2, v8}, Lcn/fly/commons/cc/t;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v2, "005hJbhbicgca"

    .line 112
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "011Obe.cKdg;b@cd3d2ejbhbicgca"

    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    array-length v2, v8

    if-ne v2, v13, :cond_6

    aget-object v2, v8, v14

    if-eqz v2, :cond_6

    .line 113
    instance-of v1, v2, Ljava/lang/Class;

    if-eqz v1, :cond_4

    new-array v1, v13, [Ljava/lang/Class;

    .line 114
    check-cast v2, Ljava/lang/Class;

    aput-object v2, v1, v14

    goto :goto_0

    .line 115
    :cond_4
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 116
    check-cast v2, Ljava/util/List;

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    :goto_0
    const-string v2, "005h$bhbicgca"

    .line 118
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v7, v0, v1}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;Z[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 119
    :cond_5
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v2, "iterator"

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    array-length v2, v8

    if-nez v2, :cond_7

    .line 121
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string v1, "toJson"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-nez v1, :cond_5c

    const-string v0, "org.json.JSONObject"

    .line 123
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Class;

    .line 124
    const-class v2, Ljava/util/Map;

    aput-object v2, v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v7, v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_8
    instance-of v1, v7, Lcn/fly/commons/cc/ab;

    if-eqz v1, :cond_9

    .line 126
    move-object v1, v7

    check-cast v1, Lcn/fly/commons/cc/ab;

    const-string v2, "004gdSdg_g"

    .line 127
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 128
    invoke-virtual {v1, v8}, Lcn/fly/commons/cc/ab;->a([Ljava/lang/Object;)Lcn/fly/commons/cc/ab$a;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_9
    instance-of v1, v7, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_b

    const-string v1, "004gdDdg3g"

    .line 130
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    new-instance v1, Lcn/fly/commons/cc/ab$a;

    invoke-direct {v1}, Lcn/fly/commons/cc/ab$a;-><init>()V

    .line 132
    invoke-virtual/range {p3 .. p3}, Lcn/fly/commons/cc/t;->c()Lcn/fly/commons/cc/t;

    move-result-object v0

    .line 133
    :try_start_0
    move-object v2, v7

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2, v8}, Lcn/fly/commons/cc/t;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Lcn/fly/commons/cc/t;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcn/fly/commons/cc/ab$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 135
    iput-object v0, v1, Lcn/fly/commons/cc/ab$a;->a:Ljava/lang/Throwable;

    .line 136
    :goto_1
    invoke-virtual {v9, v1}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_a
    const-string v1, "013_dgTdg=db!aadKdgdgbgdd)ed"

    .line 137
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-ne v1, v13, :cond_5c

    .line 138
    move-object v0, v7

    check-cast v0, Ljava/lang/reflect/Method;

    aget-object v1, v8, v14

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void

    .line 139
    :cond_b
    instance-of v1, v7, Ljava/util/Collection;

    if-eqz v1, :cond_13

    .line 140
    move-object v1, v7

    check-cast v1, Ljava/util/Collection;

    .line 141
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const-string v3, "toArray"

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    array-length v3, v8

    if-ne v3, v13, :cond_d

    aget-object v3, v8, v14

    if-eqz v3, :cond_d

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_d

    .line 143
    check-cast v3, Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 145
    invoke-static {v0, v14, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/2addr v14, v13

    goto :goto_2

    .line 146
    :cond_c
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string v2, "filter"

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    array-length v2, v8

    if-ne v2, v13, :cond_10

    aget-object v2, v8, v14

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    aget-object v2, v8, v14

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 151
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_e

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 152
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 153
    :cond_f
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_10
    const-string v2, "replace"

    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    array-length v2, v8

    if-ne v2, v12, :cond_5c

    aget-object v2, v8, v14

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5c

    aget-object v2, v8, v13

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    aget-object v2, v8, v14

    check-cast v2, Ljava/lang/String;

    .line 157
    aget-object v3, v8, v13

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 159
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 160
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 161
    :cond_11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 162
    :cond_12
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "iterator"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    array-length v1, v8

    if-nez v1, :cond_15

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_5
    if-ge v14, v1, :cond_14

    .line 167
    invoke-static {v7, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 168
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_15
    const-string v1, "toList"

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    array-length v1, v8

    if-nez v1, :cond_17

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_6
    if-ge v14, v1, :cond_16

    .line 172
    invoke-static {v7, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 173
    :cond_16
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 174
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5c

    const-string v1, "003Cbdbafg"

    .line 175
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    array-length v1, v8

    if-nez v1, :cond_18

    .line 176
    move-object v0, v7

    check-cast v0, [B

    .line 177
    array-length v1, v0

    .line 178
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v14, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 179
    invoke-static {v2}, Lcn/fly/commons/cc/v;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 181
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_18
    const-string v1, "hex"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    array-length v1, v8

    if-nez v1, :cond_19

    .line 183
    move-object v0, v7

    check-cast v0, [B

    invoke-static {v0}, Lcn/fly/commons/cc/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_19
    const-string v1, "sha"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-ne v1, v13, :cond_5c

    .line 185
    move-object v0, v7

    check-cast v0, [B

    .line 186
    aget-object v1, v8, v14

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_1a
    const-class v1, Ljava/util/Iterator;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "hasNext"

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 191
    move-object v0, v7

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_1b
    const-string v1, "next"

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 193
    move-object v0, v7

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_1c
    const-string v1, "remove"

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 195
    move-object v0, v7

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 196
    :cond_1d
    instance-of v1, v7, Lcn/fly/commons/cc/c$a;

    if-eqz v1, :cond_1f

    const-string v1, "hasNext"

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    array-length v1, v8

    if-nez v1, :cond_1e

    .line 198
    move-object v0, v7

    check-cast v0, Lcn/fly/commons/cc/c$a;

    invoke-virtual {v0}, Lcn/fly/commons/cc/c$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_1e
    const-string v1, "next"

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-nez v1, :cond_5c

    .line 200
    move-object v0, v7

    check-cast v0, Lcn/fly/commons/cc/c$a;

    invoke-virtual {v0}, Lcn/fly/commons/cc/c$a;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 201
    :cond_1f
    instance-of v1, v7, Lcn/fly/commons/cc/c;

    if-eqz v1, :cond_23

    const-string v1, "iterator"

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    array-length v1, v8

    if-nez v1, :cond_20

    .line 203
    move-object v0, v7

    check-cast v0, Lcn/fly/commons/cc/c;

    invoke-virtual {v0}, Lcn/fly/commons/cc/c;->a()Lcn/fly/commons/cc/c$a;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_20
    const-string v1, "isInRange"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    array-length v1, v8

    if-ne v1, v13, :cond_21

    .line 205
    move-object v0, v7

    check-cast v0, Lcn/fly/commons/cc/c;

    aget-object v1, v8, v14

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lcn/fly/commons/cc/c;->a(Ljava/lang/Number;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_21
    const-string v1, "contains"

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    array-length v1, v8

    if-ne v1, v13, :cond_22

    .line 207
    move-object v0, v7

    check-cast v0, Lcn/fly/commons/cc/c;

    aget-object v1, v8, v14

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lcn/fly/commons/cc/c;->b(Ljava/lang/Number;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_22
    const-string v1, "boundary"

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-nez v1, :cond_5c

    .line 209
    move-object v0, v7

    check-cast v0, Lcn/fly/commons/cc/c;

    invoke-virtual {v0}, Lcn/fly/commons/cc/c;->b()[Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 210
    :cond_23
    instance-of v1, v7, Ljava/lang/String;

    if-eqz v1, :cond_49

    const-string v1, "getBytes"

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 212
    array-length v1, v8

    if-nez v1, :cond_24

    .line 213
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 214
    :cond_24
    array-length v1, v8

    if-ne v1, v13, :cond_5c

    aget-object v1, v8, v14

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 215
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_25
    const-string v1, "input"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 217
    array-length v1, v8

    if-nez v1, :cond_26

    .line 218
    new-instance v0, Ljava/io/FileInputStream;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_26
    array-length v1, v8

    if-ne v1, v13, :cond_5c

    aget-object v1, v8, v14

    instance-of v1, v1, Lcn/fly/commons/cc/ab;

    if-eqz v1, :cond_5c

    .line 220
    new-instance v0, Ljava/io/FileInputStream;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 221
    aget-object v1, v8, v14

    check-cast v1, Lcn/fly/commons/cc/ab;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v0, v2, v14

    invoke-virtual {v1, v2}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    .line 222
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_27
    const-string v1, "output"

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 224
    array-length v1, v8

    if-nez v1, :cond_28

    .line 225
    new-instance v0, Ljava/io/FileOutputStream;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 226
    :cond_28
    array-length v1, v8

    if-ne v1, v13, :cond_5c

    aget-object v1, v8, v14

    instance-of v1, v1, Lcn/fly/commons/cc/ab;

    if-eqz v1, :cond_5c

    .line 227
    new-instance v0, Ljava/io/FileOutputStream;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 228
    aget-object v1, v8, v14

    check-cast v1, Lcn/fly/commons/cc/ab;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v0, v2, v14

    invoke-virtual {v1, v2}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    .line 229
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 230
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_29
    const-string v1, "012(bh=db0baeabhbibdeabgVed"

    .line 231
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 232
    array-length v1, v8

    if-nez v1, :cond_2a

    const-string v2, "utf-8"

    goto :goto_7

    .line 233
    :cond_2a
    array-length v1, v8

    if-ne v1, v13, :cond_2b

    .line 234
    aget-object v1, v8, v14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2b
    :goto_7
    if-eqz v2, :cond_5c

    .line 235
    new-instance v0, Ljava/io/FileInputStream;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 237
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    :goto_8
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    .line 238
    invoke-virtual {v1, v3, v14, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 239
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    goto :goto_8

    .line 240
    :cond_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 241
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 242
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 243
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_2d
    const-string v1, "011)debhbg6gdPdabieabg0ed"

    .line 244
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 245
    array-length v1, v8

    if-ne v1, v13, :cond_2e

    .line 246
    aget-object v1, v8, v14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "utf-8"

    goto :goto_9

    .line 247
    :cond_2e
    array-length v1, v8

    if-ne v1, v12, :cond_2f

    .line 248
    aget-object v1, v8, v14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 249
    aget-object v1, v8, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_2f
    move-object v1, v2

    :goto_9
    if-eqz v2, :cond_5c

    .line 250
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 251
    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 252
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 253
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_30
    const-string v1, "009,bh:db7badcbg+cd,dg"

    .line 254
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "utf-8"

    .line 255
    array-length v3, v8

    if-nez v3, :cond_31

    .line 256
    new-instance v3, Ljava/io/FileInputStream;

    move-object v4, v7

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_a

    .line 257
    :cond_31
    array-length v3, v8

    if-ne v3, v13, :cond_33

    .line 258
    aget-object v3, v8, v14

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_32

    .line 259
    new-instance v1, Ljava/io/FileInputStream;

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 260
    aget-object v3, v8, v14

    check-cast v3, Ljava/lang/String;

    move-object/from16 v18, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v18

    goto :goto_a

    .line 261
    :cond_32
    instance-of v3, v3, Lcn/fly/commons/cc/ab;

    if-eqz v3, :cond_34

    .line 262
    new-instance v2, Ljava/io/FileInputStream;

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 263
    aget-object v3, v8, v14

    check-cast v3, Lcn/fly/commons/cc/ab;

    goto :goto_a

    .line 264
    :cond_33
    array-length v3, v8

    if-ne v3, v12, :cond_34

    aget-object v3, v8, v14

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_34

    aget-object v3, v8, v13

    instance-of v3, v3, Lcn/fly/commons/cc/ab;

    if-eqz v3, :cond_34

    .line 265
    new-instance v2, Ljava/io/FileInputStream;

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 266
    aget-object v1, v8, v14

    check-cast v1, Ljava/lang/String;

    .line 267
    aget-object v3, v8, v13

    check-cast v3, Lcn/fly/commons/cc/ab;

    goto :goto_a

    :cond_34
    move-object v3, v2

    :goto_a
    if-eqz v2, :cond_5c

    .line 268
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_36

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    if-eqz v0, :cond_35

    .line 272
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 274
    :cond_35
    invoke-virtual {v9, v2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    goto :goto_d

    :cond_36
    :goto_c
    if-eqz v0, :cond_37

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v0, v2, v14

    .line 275
    invoke-virtual {v3, v2}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 277
    :cond_37
    :goto_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_38
    const-string v1, "010@debhbgPgdLdcbg<cd-dg"

    .line 278
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "utf-8"

    .line 279
    array-length v3, v8

    if-lt v3, v13, :cond_3c

    .line 280
    array-length v3, v8

    if-ne v3, v12, :cond_39

    aget-object v3, v8, v13

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 281
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 282
    :cond_39
    aget-object v3, v8, v14

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3a

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    aget-object v3, v8, v14

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 285
    :cond_3a
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_3b

    .line 286
    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    goto :goto_f

    .line 287
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 289
    aget-object v3, v8, v14

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_3c

    .line 290
    aget-object v5, v8, v14

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_3c
    :goto_f
    if-eqz v2, :cond_5c

    .line 291
    new-instance v0, Ljava/io/FileOutputStream;

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_10

    .line 294
    :cond_3d
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 295
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_3e
    const-string v1, "004dNcgYda"

    .line 296
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 297
    array-length v1, v8

    if-nez v1, :cond_3f

    .line 298
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 299
    :cond_3f
    array-length v1, v8

    if-eq v1, v13, :cond_40

    array-length v1, v8

    if-ne v1, v12, :cond_5c

    .line 300
    :cond_40
    aget-object v1, v8, v14

    instance-of v3, v1, [Ljava/lang/String;

    if-eqz v3, :cond_41

    .line 301
    check-cast v1, [Ljava/lang/String;

    goto :goto_13

    .line 302
    :cond_41
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_44

    .line 303
    check-cast v1, Ljava/util/List;

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_43

    .line 305
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_42

    move-object v6, v2

    goto :goto_12

    .line 306
    :cond_42
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_12
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_43
    move-object v1, v4

    goto :goto_13

    :cond_44
    move-object v1, v2

    .line 307
    :goto_13
    array-length v3, v8

    if-ne v3, v12, :cond_45

    aget-object v3, v8, v13

    instance-of v4, v3, Ljava/io/File;

    if-eqz v4, :cond_45

    .line 308
    move-object v2, v3

    check-cast v2, Ljava/io/File;

    :cond_45
    if-eqz v1, :cond_5c

    .line 309
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_46
    const-string v1, "007@cdbhbibddi dHcg"

    .line 310
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-nez v1, :cond_5c

    .line 311
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 313
    rem-int/lit8 v2, v1, 0x2

    if-ne v2, v13, :cond_47

    add-int/lit8 v1, v1, 0x1

    .line 314
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 316
    :cond_47
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    :goto_14
    const/4 v3, 0x0

    :goto_15
    if-ge v14, v1, :cond_48

    add-int/lit8 v4, v14, 0x2

    .line 317
    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/2addr v3, v13

    move v14, v4

    goto :goto_15

    .line 318
    :cond_48
    invoke-virtual {v9, v2}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 319
    :cond_49
    instance-of v1, v7, Ljava/io/InputStream;

    if-eqz v1, :cond_4e

    const-string v1, "017gUbidj6bgbScc<ch:beBgAcj:g@bh\'db%bd"

    .line 320
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    array-length v1, v8

    if-nez v1, :cond_4a

    .line 321
    new-instance v0, Ljava/io/DataInputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_4a
    const-string v1, "021gHbidhbecdcdBdGbhLdEbaccOch3be1gQcj4gZbhMdb>bd"

    .line 322
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    array-length v1, v8

    if-nez v1, :cond_4b

    .line 323
    new-instance v0, Ljava/io/BufferedInputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_4b
    const-string v1, "017gWbigbghccejccZchVbeTg.cjKg9bhXdbVbd"

    .line 324
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    array-length v1, v8

    if-nez v1, :cond_4c

    .line 325
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_4c
    const-string v1, "019gVbiefddfeVdag$cc,ch[beBgEcj=g!bhSdbGbd"

    .line 326
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    array-length v1, v8

    if-nez v1, :cond_4d

    .line 327
    new-instance v0, Ljava/io/ObjectInputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_4d
    const-string v1, "003Vbdbafg"

    .line 328
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-nez v1, :cond_5c

    .line 329
    move-object v1, v7

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lcn/fly/commons/cc/v;->a(Ljava/io/InputStream;)Ljava/lang/String;

    goto/16 :goto_18

    .line 330
    :cond_4e
    instance-of v1, v7, Ljava/io/OutputStream;

    if-eqz v1, :cond_52

    const-string v1, "018gZbidj4bgbRefbeSgh_be1g*cj1g@bh(db7bd"

    .line 331
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    array-length v1, v8

    if-nez v1, :cond_4f

    .line 332
    new-instance v0, Ljava/io/DataOutputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_4f
    const-string v1, "022gVbidhbecdcd%d8bh=d\'baefbe[ghFbeEgFcj^g0bhGdb_bd"

    .line 333
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    array-length v1, v8

    if-nez v1, :cond_50

    .line 334
    new-instance v0, Ljava/io/BufferedOutputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_50
    const-string v1, "018g1bigbghccejefbeIgh2be$g4cj%g_bhPdbQbd"

    .line 335
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    array-length v1, v8

    if-nez v1, :cond_51

    .line 336
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_51
    const-string v1, "020g0biefddfe:dag8efbe:gh.beZg\'cj%g5bhUdb=bd"

    .line 337
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-nez v1, :cond_5c

    .line 338
    new-instance v0, Ljava/io/ObjectOutputStream;

    move-object v1, v7

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_52
    instance-of v1, v7, Ljava/lang/Class;

    if-eqz v1, :cond_54

    const-string v1, "0066bgbdEhXbibhBg"

    .line 340
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 341
    array-length v1, v8

    if-nez v1, :cond_53

    .line 342
    move-object v0, v7

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    .line 343
    :cond_53
    array-length v1, v8

    if-ne v1, v13, :cond_5c

    aget-object v1, v8, v14

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 344
    check-cast v1, Ljava/lang/String;

    move-object v0, v7

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v9, v1, v0}, Lcn/fly/commons/cc/t;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    .line 345
    :cond_54
    instance-of v1, v7, Ljava/lang/Throwable;

    if-eqz v1, :cond_56

    const-string v1, "005gfCbhbide"

    .line 346
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-eqz v1, :cond_55

    goto/16 :goto_18

    .line 347
    :cond_55
    move-object v0, v7

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 348
    :cond_56
    instance-of v1, v7, Ljava/io/BufferedReader;

    if-eqz v1, :cond_5b

    const-string v1, "filter"

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-lez v1, :cond_5c

    aget-object v1, v8, v14

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 350
    check-cast v1, Ljava/lang/String;

    .line 351
    array-length v0, v8

    if-ne v0, v12, :cond_57

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v2, v8, v13

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_16

    :cond_57
    const/4 v13, 0x0

    .line 352
    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    move-object v2, v7

    check-cast v2, Ljava/io/BufferedReader;

    .line 354
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_17
    if-eqz v3, :cond_5a

    .line 355
    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    if-eqz v13, :cond_58

    .line 356
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    .line 358
    :cond_5a
    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    return-void

    .line 359
    :cond_5b
    const-class v1, Ljava/lang/reflect/AccessibleObject;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "013;dg@dg(db%aad+dgdgbgdd]ed"

    .line 360
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    array-length v1, v8

    if-ne v1, v13, :cond_5c

    .line 361
    move-object v0, v7

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    aget-object v1, v8, v14

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void

    :cond_5c
    :goto_18
    const-string v1, "004eJbiSa?cf"

    .line 362
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    array-length v1, v8

    if-lez v1, :cond_5f

    aget-object v1, v8, v14

    instance-of v1, v1, Lcn/fly/commons/cc/ab;

    if-eqz v1, :cond_5f

    .line 363
    monitor-enter p0

    .line 364
    :try_start_1
    aget-object v0, v8, v14

    check-cast v0, Lcn/fly/commons/cc/ab;

    .line 365
    array-length v1, v8

    sub-int/2addr v1, v13

    new-array v2, v1, [Ljava/lang/Object;

    .line 366
    array-length v3, v8

    if-le v3, v13, :cond_5d

    .line 367
    invoke-static {v8, v13, v2, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_5d
    invoke-virtual {v0, v2}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 370
    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    .line 371
    :cond_5e
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 372
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 373
    invoke-virtual/range {p3 .. p3}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v1

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcn/fly/commons/cc/z;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Lcn/fly/commons/cc/t;)Z

    move-result v1

    if-eqz v1, :cond_60

    return-void

    :cond_60
    move-object/from16 v16, v15

    :goto_19
    if-eqz v16, :cond_64

    new-array v6, v12, [[Z

    .line 374
    invoke-virtual/range {p3 .. p3}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v17, v6

    invoke-virtual/range {v1 .. v6}, Lcn/fly/commons/cc/z;->a(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Object;[[Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_63

    aget-object v0, v17, v13

    .line 375
    aget-boolean v0, v0, v14

    if-nez v0, :cond_61

    .line 376
    invoke-virtual/range {p3 .. p3}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v3, v17, v14

    invoke-virtual {v0, v9, v2, v8, v3}, Lcn/fly/commons/cc/z;->a(Lcn/fly/commons/cc/t;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_61
    move-object v0, v8

    .line 377
    :goto_1a
    invoke-virtual {v1, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 378
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_62

    .line 379
    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 380
    :cond_62
    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    :goto_1b
    return-void

    .line 381
    :cond_63
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    goto :goto_19

    :cond_64
    :goto_1c
    if-eqz v15, :cond_69

    .line 382
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 383
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_68

    aget-object v4, v1, v3

    .line 384
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_67

    .line 385
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    new-array v6, v13, [Z

    .line 386
    invoke-virtual/range {p3 .. p3}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v12

    invoke-virtual {v12, v5, v8, v6}, Lcn/fly/commons/cc/z;->a([Ljava/lang/Class;[Ljava/lang/Object;[Z)[Z

    move-result-object v12

    if-eqz v12, :cond_67

    aget-boolean v0, v6, v14

    if-nez v0, :cond_65

    .line 387
    invoke-virtual/range {p3 .. p3}, Lcn/fly/commons/cc/t;->h()Lcn/fly/commons/cc/z;

    move-result-object v0

    invoke-virtual {v0, v9, v5, v8, v12}, Lcn/fly/commons/cc/z;->a(Lcn/fly/commons/cc/t;[Ljava/lang/Class;[Ljava/lang/Object;[Z)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_65
    move-object v0, v8

    .line 388
    :goto_1e
    invoke-virtual {v4, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 389
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_66

    .line 390
    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 391
    :cond_66
    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/fly/commons/cc/t;->a(Ljava/lang/Object;)V

    :goto_1f
    return-void

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 392
    :cond_68
    invoke-virtual {v15}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v15

    goto :goto_1c

    .line 393
    :cond_69
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "nameValuePairs"

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "NULL"

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, p2, p3}, Lcn/fly/commons/cc/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
