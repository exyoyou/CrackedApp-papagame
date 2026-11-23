.class public final Lcom/windmill/gromore/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/gromore/p$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/p$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/windmill/gromore/p;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/windmill/gromore/p;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/windmill/gromore/a;->a()Lcom/windmill/gromore/a;

    invoke-static {}, Lcom/windmill/gromore/a;->b()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/windmill/gromore/p;->a:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroUtils4 final packages: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/windmill/gromore/p;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    move-object/from16 v10, p3

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v12, p7

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v13, Lcom/windmill/gromore/q$b;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v8

    move-object v3, v7

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v14, p6

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, p8, 0x1

    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/windmill/gromore/p;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_1

    :cond_0
    move-object/from16 v14, p6

    goto :goto_1

    :cond_1
    move-object/from16 v14, p6

    move-object/from16 v12, p7

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 3
    move-object/from16 v0, p3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v1, v0

    if-ge v10, v1, :cond_1

    aget-object v12, v0, v10

    if-eqz v12, :cond_0

    move-object/from16 v15, p7

    invoke-interface {v15, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v11, Lcom/windmill/gromore/q$b;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v11

    move-object v2, v9

    move-object v4, v8

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, p8, 0x1

    move-object/from16 v11, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object v15, v1

    move-object/from16 v16, p7

    invoke-virtual/range {v11 .. v17}, Lcom/windmill/gromore/p;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_1

    :cond_0
    move-object/from16 v2, p6

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Lcom/windmill/gromore/q;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/p$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;",
            "Lcom/windmill/gromore/q;",
            ")V"
        }
    .end annotation

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-wide v12, v4

    move-object v10, v6

    const/4 v11, -0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v14, "."

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/windmill/gromore/p$a;

    iget-object v7, v6, Lcom/windmill/gromore/p$a;->a:Ljava/lang/reflect/Field;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Double;

    if-ne v8, v9, :cond_0

    :cond_1
    :try_start_0
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v15, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    goto :goto_1

    :cond_2
    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    cmpl-double v15, v8, v12

    if-lez v15, :cond_0

    :try_start_1
    iget v6, v6, Lcom/windmill/gromore/p$a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v11, v6

    move-object v10, v7

    move-wide v12, v8

    goto :goto_0

    :catch_0
    move-object v10, v7

    move-wide v12, v8

    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "GroUtils4 ignore inaccessible fields: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    cmpl-double v0, v12, v4

    if-lez v0, :cond_5

    if-eqz v10, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Lcom/windmill/gromore/q$b;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v15

    move-object v4, v2

    move v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v12, v13}, Lcom/windmill/gromore/q;->a(Ljava/util/List;D)V

    iget-wide v3, v1, Lcom/windmill/gromore/q;->a:D

    cmpl-double v0, v12, v3

    if-lez v0, :cond_4

    iput-wide v12, v1, Lcom/windmill/gromore/q;->a:D

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroUtils4 record max price: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/windmill/gromore/p;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/windmill/gromore/q;",
            "Ljava/util/List<",
            "Lcom/windmill/gromore/q$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 4
    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    if-eqz v0, :cond_f

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    if-le v14, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/windmill/gromore/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/windmill/gromore/p;->b:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v16, 0x0

    if-nez v2, :cond_5

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v15

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_3

    const-class v5, Ljava/lang/Object;

    if-eq v3, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/windmill/gromore/p;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    new-instance v9, Lcom/windmill/gromore/p$a;

    invoke-direct {v9, v8, v4}, Lcom/windmill/gromore/p$a;-><init>(Ljava/lang/reflect/Field;I)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/windmill/gromore/p;->b:Ljava/util/Map;

    invoke-interface {v3, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0

    :cond_5
    :goto_2
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v1, 0x0

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/gromore/p$a;

    iget-object v3, v2, Lcom/windmill/gromore/p$a;->a:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_6

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "GroUtils4 find placementId: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", level: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/windmill/gromore/p$a;->b:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    move/from16 v18, v1

    :goto_4
    instance-of v1, v5, Ljava/util/List;

    if-eqz v1, :cond_7

    move-object v4, v5

    check-cast v4, Ljava/util/List;

    iget v8, v2, Lcom/windmill/gromore/p$a;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v19, v8

    move-object/from16 v8, p5

    move-object v11, v9

    move/from16 v9, p6

    move-object v13, v10

    move/from16 v10, v19

    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/windmill/gromore/p;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/util/List;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;II)V

    goto/16 :goto_6

    :cond_7
    move-object v11, v9

    move-object v13, v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    iget v10, v2, Lcom/windmill/gromore/p$a;->b:I

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/windmill/gromore/p;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;II)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_a

    const-class v6, Ljava/lang/Boolean;

    if-eq v1, v6, :cond_a

    const-class v6, Ljava/lang/Character;

    if-eq v1, v6, :cond_a

    const-class v6, Ljava/lang/Number;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_a

    const-class v6, Ljava/lang/String;

    if-eq v1, v6, :cond_a

    const-class v6, Ljava/lang/Enum;

    if-eq v1, v6, :cond_a

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :cond_a
    :goto_5
    if-nez v4, :cond_b

    iget v1, v2, Lcom/windmill/gromore/p$a;->b:I

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    new-instance v2, Lcom/windmill/gromore/q$b;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v2

    move/from16 v25, v1

    invoke-direct/range {v19 .. v25}, Lcom/windmill/gromore/q$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v14, 0x1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/windmill/gromore/p;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/windmill/gromore/q;Ljava/util/List;Ljava/util/Set;I)V

    :cond_b
    :goto_6
    move-object v9, v11

    move-object v10, v13

    move/from16 v1, v18

    :cond_c
    move-object/from16 v11, p2

    move-object/from16 v13, p5

    goto/16 :goto_3

    :cond_d
    move-object v11, v9

    move-object v13, v10

    instance-of v2, v0, Ljava/lang/Comparable;

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    const-string v1, "GroUtils4 find price, in object contains placementId: "

    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-static {v0, v11, v12, v1}, Lcom/windmill/gromore/p;->a(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Lcom/windmill/gromore/q;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v13, v10

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GroUtils4 error processing objects: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :cond_f
    :goto_8
    return-void
.end method
