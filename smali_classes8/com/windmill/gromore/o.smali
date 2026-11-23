.class public final Lcom/windmill/gromore/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GroUtils3 "

    iput-object v0, p0, Lcom/windmill/gromore/o;->a:Ljava/lang/String;

    const-string v0, "TAG_1"

    iput-object v0, p0, Lcom/windmill/gromore/o;->b:Ljava/lang/String;

    const-string v0, "TAG_2"

    iput-object v0, p0, Lcom/windmill/gromore/o;->c:Ljava/lang/String;

    const-string v0, "TAG_3"

    iput-object v0, p0, Lcom/windmill/gromore/o;->d:Ljava/lang/String;

    const-string v0, "TAG_4"

    iput-object v0, p0, Lcom/windmill/gromore/o;->e:Ljava/lang/String;

    const-string v0, "TAG_5"

    iput-object v0, p0, Lcom/windmill/gromore/o;->f:Ljava/lang/String;

    const-string v0, "TAG_6"

    iput-object v0, p0, Lcom/windmill/gromore/o;->g:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/ArrayList;)D
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v4, v0

    move-wide v6, v2

    const/4 v11, -0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    move-object v0, p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

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

    move-result-wide v12

    cmpl-double v14, v12, v6

    if-lez v14, :cond_1

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p4

    :try_start_1
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v11, v4

    move-object v4, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v8

    goto :goto_2

    :cond_0
    move-object/from16 v9, p1

    :cond_1
    move-object/from16 v10, p4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-wide v12, v6

    cmpl-double v0, v12, v2

    if-lez v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "TAG_6"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v12, v13}, Lcom/windmill/gromore/q;->a(Ljava/util/List;D)V

    :cond_3
    return-wide v12
.end method

.method private static synthetic a(Ljava/lang/Double;Ljava/lang/Double;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Field;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
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

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Lcom/windmill/gromore/q$b;

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

    move-object v1, p2

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/WeakHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
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

    .line 6
    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v8, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/windmill/gromore/o;->a(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_4

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v4, p5

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    instance-of v2, v6, Ljava/lang/Comparable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "com.bytedance.msdk"

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Lcom/windmill/gromore/q$b;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "TAG_3"

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move/from16 v21, v0

    invoke-direct/range {v15 .. v21}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v2, v6, Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v15, v6

    check-cast v15, Ljava/util/List;

    invoke-direct {v2, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v15, v13, :cond_2

    invoke-virtual {v2, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v1, v13, Ljava/lang/Comparable;

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v23, v2

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "TAG_4"

    move/from16 v24, v15

    move-object v15, v2

    move/from16 v21, v0

    invoke-direct/range {v15 .. v21}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    goto :goto_2

    :cond_1
    move/from16 v24, v15

    move-object v1, v2

    :goto_2
    move-object/from16 v2, p0

    move-object v15, v3

    move-object v3, v13

    move-object/from16 v4, p2

    move-object v13, v5

    move-object/from16 v5, p3

    move-object/from16 v23, v1

    move-object v1, v6

    move-object/from16 v6, p4

    move-object/from16 v16, v7

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/windmill/gromore/o;->a(Ljava/lang/Object;Ljava/util/WeakHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    add-int/lit8 v2, v24, 0x1

    move-object/from16 v4, p5

    move-object v6, v1

    move-object v5, v13

    move-object v3, v15

    move-object/from16 v7, v16

    move-object/from16 v1, p1

    move v15, v2

    move-object/from16 v2, v23

    goto :goto_1

    :cond_2
    move-object v13, v5

    move-object v1, v6

    move-object/from16 v16, v7

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.bytedance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v8, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "TAG_5"

    move-object v15, v2

    move-object/from16 v16, v3

    move/from16 v21, v0

    invoke-direct/range {v15 .. v21}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/windmill/gromore/o;->a(Ljava/lang/Object;Ljava/util/WeakHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static synthetic b(Ljava/lang/Double;Ljava/lang/Double;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/windmill/gromore/o;->a(Ljava/lang/Double;Ljava/lang/Double;)I

    move-result p0

    return p0
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;)Ljava/lang/Double;
    .locals 22

    .line 4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/windmill/gromore/o;->a(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_9

    new-instance v17, Ljava/util/WeakHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, p0

    move-object/from16 v13, v17

    move-object/from16 v18, v14

    move-object v14, v15

    move-object v4, v15

    move-object/from16 v15, v18

    invoke-direct/range {v11 .. v16}, Lcom/windmill/gromore/o;->a(Ljava/lang/Object;Ljava/util/WeakHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/WeakHashMap;->clear()V

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v12, v18

    invoke-direct {v11, v12, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-static {v13}, Lcom/windmill/gromore/o;->a(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    iget-object v10, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    move-object/from16 v19, v4

    if-nez v17, :cond_7

    const/4 v0, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    move-object/from16 v20, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v21, v6

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v5, p2

    const/16 v17, 0x1

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v5, p2

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v18, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v5, p2

    :cond_2
    :goto_3
    if-eqz v17, :cond_3

    if-eqz v18, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_2

    :cond_4
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v5, p2

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    instance-of v0, v13, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_5

    invoke-static {v9, v8, v2, v14}, Lcom/windmill/gromore/o;->a(Ljava/lang/reflect/Field;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v13, v1, v0, v15}, Lcom/windmill/gromore/o;->a(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/ArrayList;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v9, v8, v2, v14}, Lcom/windmill/gromore/o;->a(Ljava/lang/reflect/Field;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v13, v1, v0, v15}, Lcom/windmill/gromore/o;->a(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/ArrayList;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Ljava/lang/Object;

    if-eq v0, v4, :cond_8

    invoke-static {v9, v8, v2, v14}, Lcom/windmill/gromore/o;->a(Ljava/lang/reflect/Field;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v13, v1, v0, v15}, Lcom/windmill/gromore/o;->a(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/ArrayList;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_7
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v5, p2

    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v5, p2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/windmill/gromore/u;

    invoke-direct {v0}, Lcom/windmill/gromore/u;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    :cond_b
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
