.class public final Lcom/windmill/gromore/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field private final b:D

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/windmill/gromore/m;->b:D

    const/4 v0, 0x2

    iput v0, p0, Lcom/windmill/gromore/m;->a:I

    const-string v0, "TAG_1"

    iput-object v0, p0, Lcom/windmill/gromore/m;->c:Ljava/lang/String;

    const-string v0, "TAG_2"

    iput-object v0, p0, Lcom/windmill/gromore/m;->d:Ljava/lang/String;

    const-string v0, "TAG_3"

    iput-object v0, p0, Lcom/windmill/gromore/m;->e:Ljava/lang/String;

    const-string v0, "TAG_4"

    iput-object v0, p0, Lcom/windmill/gromore/m;->f:Ljava/lang/String;

    const-string v0, "TAG_5"

    iput-object v0, p0, Lcom/windmill/gromore/m;->g:Ljava/lang/String;

    const-string v0, "TAG_6"

    iput-object v0, p0, Lcom/windmill/gromore/m;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;I)D
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;I)D"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    move-wide v6, v2

    :goto_0
    :try_start_1
    array-length v8, v0

    if-ge v5, v8, :cond_3

    aget-object v8, v0, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v13, v11, v6

    if-lez v13, :cond_1

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v8

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide v6, v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_2
    move-wide v6, v2

    :cond_3
    :goto_3
    cmpl-double v0, v6, v2

    if-lez v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "TAG_6"

    move-object v8, v2

    move/from16 v14, p4

    invoke-direct/range {v8 .. v14}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v6, v7}, Lcom/windmill/gromore/q;->a(Ljava/util/List;D)V

    :cond_4
    return-wide v6
.end method

.method private a(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;)Landroid/util/Pair;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/api/proto/Bridge;",
            "Ljava/lang/String;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Landroid/util/Pair;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "tt"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v9, :cond_a

    aget-object v12, v8, v10

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-direct {v1, v14}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_9

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_8

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v18, v4

    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v17, v8

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    if-eqz v4, :cond_7

    move/from16 v19, v9

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v20, v11

    array-length v11, v9

    move-object/from16 v21, v14

    const/4 v14, 0x0

    const/16 v22, 0x1

    :goto_2
    if-ge v14, v11, :cond_3

    move/from16 v23, v11

    aget-object v11, v9, v14

    move-object/from16 v24, v9

    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v25, v15

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v15, p2

    goto :goto_3

    :cond_0
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v15, Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v15, p2

    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v22, 0x0

    goto :goto_3

    :cond_1
    move-object/from16 v15, p2

    :cond_2
    move/from16 v22, v20

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v22

    move/from16 v11, v23

    move-object/from16 v9, v24

    move-object/from16 v15, v25

    goto :goto_2

    :cond_3
    move-object/from16 v25, v15

    move-object/from16 v15, p2

    if-nez v22, :cond_6

    instance-of v9, v13, Lcom/bykv/vk/openvk/api/proto/Bridge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "adn"

    if-eqz v9, :cond_4

    :try_start_2
    invoke-static {v12, v3, v0}, Lcom/windmill/gromore/m;->a(Ljava/lang/reflect/Field;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v13, v2, v0, v8}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;I)D

    move-result-wide v8

    new-instance v0, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v4, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v14, "$"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v12, v3, v0}, Lcom/windmill/gromore/m;->a(Ljava/lang/reflect/Field;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v13, v2, v0, v8}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;I)D

    move-result-wide v8

    new-instance v0, Landroid/util/Pair;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/Object;

    if-eq v9, v14, :cond_6

    invoke-static {v12, v3, v0}, Lcom/windmill/gromore/m;->a(Ljava/lang/reflect/Field;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v13, v2, v0, v8}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;I)D

    move-result-wide v8

    new-instance v0, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v4, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_6
    :goto_5
    move/from16 v11, v20

    goto :goto_6

    :cond_7
    move/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    move-object/from16 v25, v15

    move-object/from16 v15, p2

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v8, v17

    move-object/from16 v4, v18

    move/from16 v9, v19

    move-object/from16 v14, v21

    move-object/from16 v15, v25

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_8
    move-object/from16 v15, p2

    move-object/from16 v18, v4

    move-object/from16 v17, v8

    move/from16 v19, v9

    move/from16 v20, v11

    goto :goto_7

    :cond_9
    move-object/from16 v15, p2

    move-object/from16 v18, v4

    move-object/from16 v17, v8

    move/from16 v19, v9

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v8, v17

    move-object/from16 v4, v18

    move/from16 v9, v19

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_a
    move-object/from16 v18, v4

    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/windmill/gromore/m$1;

    invoke-direct {v0, v1}, Lcom/windmill/gromore/m$1;-><init>(Lcom/windmill/gromore/m;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_b

    move-object v4, v0

    goto :goto_a

    :cond_b
    move-object/from16 v4, v18

    :goto_a
    return-object v4
.end method

.method private static a(Ljava/lang/Class;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p0, :cond_4

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v4

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;>;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .line 4
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/List;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList;",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;>;>;"
        }
    .end annotation

    .line 5
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p0

    goto/16 :goto_2

    :cond_1
    :goto_1
    move-object/from16 v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.bytedance.msdk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "$"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Lcom/windmill/gromore/q$b;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v10, v15

    move-object v5, v15

    move-object v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    instance-of v5, v10, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v5, :cond_3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Lcom/windmill/gromore/q$b;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, ""

    const/16 v16, 0x0

    move-object v9, v15

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/util/List;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList;",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;>;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-static {p0, v2, p1}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/windmill/gromore/q;Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    const-string v0, "tt"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v4, p2, v7, v6}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;I)D

    move-result-wide v4

    new-instance v6, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "adn"

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x1

    invoke-static {v5, v4, p2, v6, v7}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;I)D

    move-result-wide v4

    new-instance v6, Landroid/util/Pair;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v6, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/windmill/gromore/m$2;

    invoke-direct {p1, p0}, Lcom/windmill/gromore/m$2;-><init>(Lcom/windmill/gromore/m;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    new-instance p1, Landroid/util/Pair;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a(Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;)",
            "Lcom/bykv/vk/openvk/api/proto/Bridge;"
        }
    .end annotation

    .line 9
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v10, :cond_1

    check-cast v9, Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-object v5, v7

    move-object v2, v9

    :cond_0
    move-object/from16 v7, p0

    goto :goto_1

    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-le v10, v11, :cond_0

    invoke-static {v9}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Lcom/windmill/gromore/q$b;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v10

    invoke-direct/range {v11 .. v17}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p0

    :try_start_1
    invoke-direct {v7, v9, v0, v1}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    new-instance v0, Lcom/windmill/gromore/q$b;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v2
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/windmill/gromore/q$b;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;)V"
        }
    .end annotation

    .line 11
    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz v1, :cond_5

    invoke-static {v8, v1}, Lcom/windmill/gromore/m;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v6, v7

    const/16 v19, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v0, v7, v5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v2, p5

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    instance-of v11, v4, Ljava/lang/Comparable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v15, "com.bytedance.msdk"

    if-eqz v11, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "TAG_3"

    move-object v11, v13

    move-object/from16 v22, v13

    move-object/from16 v13, v16

    move-object v1, v14

    move-object/from16 v14, v17

    move-object v8, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move/from16 v17, v18

    invoke-direct/range {v11 .. v17}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    move-object/from16 v11, v22

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v8, v15

    :goto_1
    instance-of v1, v4, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_2

    :try_start_2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    invoke-direct {v1, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    if-ge v15, v11, :cond_2

    invoke-virtual {v1, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v11, v14, Ljava/lang/Comparable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "TAG_4"

    move-object v11, v12

    move-object/from16 v23, v1

    move-object v1, v12

    move-object/from16 v12, v16

    move-object v2, v13

    move-object/from16 v13, v17

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    move/from16 v20, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    move/from16 v17, v18

    invoke-direct/range {v11 .. v17}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :cond_1
    move-object/from16 v23, v1

    move-object/from16 v24, v14

    move/from16 v20, v15

    :goto_3
    move-object/from16 v2, p0

    move-object v1, v3

    move-object/from16 v3, v24

    move-object v15, v4

    move-object/from16 v4, p2

    move/from16 v21, v5

    move-object/from16 v5, p3

    move/from16 v22, v6

    move-object/from16 v6, p4

    move-object/from16 v24, v7

    move-object v7, v1

    :try_start_4
    invoke-direct/range {v2 .. v7}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    add-int/lit8 v2, v20, 0x1

    move-object v3, v1

    move-object v4, v15

    move/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v1, v23

    move-object/from16 v7, v24

    move v15, v2

    move-object/from16 v2, p5

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v24, v7

    :goto_4
    move-object/from16 v8, p2

    goto/16 :goto_6

    :cond_2
    move-object v1, v3

    move-object v15, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v24, v7

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.bytedance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    move-object/from16 v8, p2

    :try_start_5
    invoke-static {v8, v15}, Lcom/windmill/gromore/m;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x0

    const-string v16, "TAG_5"

    move-object v11, v1

    move-object v3, v15

    move-object v15, v0

    move/from16 v17, v18

    invoke-direct/range {v11 .. v17}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v8, p2

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_5

    :catchall_4
    move-exception v0

    :goto_5
    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v24, v7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_7
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v22

    move-object/from16 v7, v24

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;)Landroid/util/Pair;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/windmill/gromore/q;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    new-instance v3, Landroid/util/Pair;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v4, "tt"

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v4}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v5, :cond_9

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_9

    aget-object v0, v7, v10

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.bytedance.msdk.core.admanager"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v13, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "TAG_1"

    const/16 v20, 0x0

    move-object v14, v13

    invoke-direct/range {v14 .. v20}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v4}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v1, v12, v2, v0}, Lcom/windmill/gromore/m;->a(Ljava/util/List;Lcom/windmill/gromore/q;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v14, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    cmpl-double v16, v12, v14

    if-lez v16, :cond_7

    move-object v3, v0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v15, v13

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_7

    aget-object v11, v13, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v22, v7

    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v11, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v23, v8

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    move-object/from16 v24, v12

    array-length v12, v8

    move-object/from16 v25, v13

    move/from16 v16, v15

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    move/from16 v17, v12

    aget-object v12, v8, v13

    move-object/from16 v18, v8

    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v26, v5

    :try_start_4
    const-class v5, Ljava/util/List;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v26

    goto :goto_2

    :cond_3
    move-object/from16 v26, v5

    const/4 v5, 0x3

    if-lt v15, v5, :cond_4

    new-instance v5, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const-string v32, "TAG_1"

    const/16 v33, 0x0

    move-object/from16 v27, v5

    invoke-direct/range {v27 .. v33}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/windmill/gromore/q$b;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "TAG_2"

    move/from16 v11, v16

    move-object v15, v5

    move-object/from16 v16, v8

    move/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v7, v5, v4}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v5

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {v1, v7, v2, v5}, Lcom/windmill/gromore/m;->a(Ljava/util/List;Lcom/windmill/gromore/q;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v5

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v12, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmpl-double v15, v7, v12

    if-lez v15, :cond_6

    move-object v3, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_4
    move/from16 v11, v16

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v26, v5

    goto :goto_6

    :cond_5
    move-object/from16 v26, v5

    move/from16 v23, v8

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move v11, v15

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v15, v11

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v5, v26

    const/4 v11, 0x1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v26, v5

    goto :goto_5

    :cond_7
    :goto_4
    move-object/from16 v26, v5

    move-object/from16 v22, v7

    move/from16 v23, v8

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v22, v7

    :goto_5
    move/from16 v23, v8

    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v26, v5

    move-object/from16 v22, v7

    move/from16 v23, v8

    :goto_8
    const/4 v5, 0x1

    add-int/2addr v10, v5

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v5, v26

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object/from16 v26, v5

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v4, p2

    move-object/from16 v5, v26

    goto :goto_a

    :cond_9
    move-object/from16 v4, p2

    :goto_a
    invoke-direct {v1, v5, v4, v2, v6}, Lcom/windmill/gromore/m;->a(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-lez v2, :cond_a

    move-object v3, v0

    :cond_a
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method final b(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;)Landroid/util/Pair;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/windmill/gromore/q;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "com.bytedance.msdk.core.admanager"

    new-instance v5, Landroid/util/Pair;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v6, "tt"

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v3, v6}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v7, :cond_10

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_e

    aget-object v0, v9, v12

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v13, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v16, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_2

    move/from16 v17, v10

    :try_start_1
    aget-object v10, v11, v9

    move-object/from16 v18, v11

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v10, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "TAG_1"

    const/16 v25, 0x0

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v25}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v6}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v10

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-direct {v1, v11, v3, v10}, Lcom/windmill/gromore/m;->a(Ljava/util/List;Lcom/windmill/gromore/q;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v10

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    iget-object v11, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v11, v19, v21

    if-lez v11, :cond_0

    add-int/lit8 v9, v9, 0x1

    move-object v5, v10

    :cond_0
    const/4 v10, 0x1

    add-int/2addr v9, v10

    move/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {v1, v7, v2, v3, v8}, Lcom/windmill/gromore/m;->a(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v4, v8, v10

    if-lez v4, :cond_1

    move-object v5, v0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v0, v4, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    return-object v0

    :cond_2
    move/from16 v17, v10

    move-object/from16 v18, v4

    goto/16 :goto_b

    :cond_3
    move-object/from16 v16, v9

    move/from16 v17, v10

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_c

    :try_start_4
    aget-object v13, v9, v11

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v18, v4

    if-eqz v15, :cond_b

    :try_start_5
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    const/4 v5, 0x1

    :try_start_6
    new-array v9, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v21, 0x0

    :try_start_7
    aput-object v5, v9, v21

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v4, 0x1

    goto :goto_3

    :catchall_1
    move-object/from16 v19, v5

    move-object/from16 v20, v9

    :catchall_2
    const/16 v21, 0x0

    :catchall_3
    nop

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_a

    :try_start_8
    instance-of v4, v15, Landroid/view/ViewGroup;

    if-nez v4, :cond_a

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/windmill/gromore/m;->a(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v9, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move/from16 p1, v10

    move-object/from16 v29, v14

    move-object/from16 v10, v19

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v9, :cond_9

    move/from16 v30, v9

    :try_start_9
    aget-object v9, v4, v14

    move-object/from16 v31, v4

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v32, v15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v33, v8

    :try_start_a
    array-length v8, v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v34, v7

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v2, v8, :cond_6

    move/from16 v19, v8

    :try_start_b
    aget-object v8, v15, v2

    move-object/from16 v22, v15

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move/from16 v35, v12

    :try_start_c
    const-class v12, Ljava/util/List;

    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v19

    move-object/from16 v15, v22

    move/from16 v12, v35

    goto :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_7

    :cond_6
    move/from16 v35, v12

    const/4 v2, 0x3

    if-lt v7, v2, :cond_8

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const-string v27, "TAG_1"

    const/16 v28, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v42}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move/from16 v28, v5

    invoke-direct/range {v22 .. v28}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v4, v2, v6}, Lcom/windmill/gromore/m;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v4, v3, v2}, Lcom/windmill/gromore/m;->a(Ljava/util/List;Lcom/windmill/gromore/q;Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    cmpl-double v4, v7, v22

    if-lez v4, :cond_8

    move-object v10, v2

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v34, v7

    goto :goto_7

    :cond_7
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move/from16 v35, v12

    move-object/from16 v32, v15

    :cond_8
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move/from16 v9, v30

    move-object/from16 v4, v31

    move-object/from16 v15, v32

    move-object/from16 v8, v33

    move-object/from16 v7, v34

    move/from16 v12, v35

    goto/16 :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v33, v8

    :goto_7
    move/from16 v35, v12

    :goto_8
    move-object v5, v10

    goto/16 :goto_d

    :cond_9
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move/from16 v35, v12

    move-object v5, v10

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move/from16 v35, v12

    move-object/from16 v5, v19

    goto :goto_d

    :cond_a
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move/from16 p1, v10

    move/from16 v35, v12

    move-object/from16 v29, v14

    goto :goto_9

    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v20, v9

    move/from16 p1, v10

    move/from16 v35, v12

    move-object/from16 v29, v14

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v5, v19

    :goto_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v9, v20

    move-object/from16 v14, v29

    move-object/from16 v8, v33

    move-object/from16 v7, v34

    move/from16 v12, v35

    goto/16 :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto :goto_c

    :cond_c
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    :goto_b
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move/from16 v35, v12

    const/16 v21, 0x0

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object/from16 v18, v4

    :goto_c
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move/from16 v35, v12

    const/16 v21, 0x0

    :goto_d
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :goto_e
    add-int/lit8 v12, v35, 0x1

    goto :goto_f

    :catchall_b
    move-exception v0

    goto :goto_10

    :cond_d
    move-object/from16 v18, v4

    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v35, v12

    const/16 v21, 0x0

    :goto_f
    const/4 v2, 0x1

    add-int/2addr v12, v2

    move-object/from16 v2, p2

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v33

    move-object/from16 v7, v34

    goto/16 :goto_0

    :cond_e
    move-object/from16 v2, p2

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object/from16 v34, v7

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v2, p2

    move-object/from16 v4, v34

    invoke-direct {v1, v4, v2, v3, v6}, Lcom/windmill/gromore/m;->a(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v2, v6

    if-gez v4, :cond_f

    move-object v5, v0

    :cond_f
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_10
    :goto_11
    move-object v4, v7

    move-object v6, v8

    invoke-direct {v1, v4, v2, v3, v6}, Lcom/windmill/gromore/m;->a(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v2, v6

    if-lez v4, :cond_11

    move-object v5, v0

    :cond_11
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
