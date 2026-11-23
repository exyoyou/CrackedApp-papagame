.class public Lcom/byazt/hk/c;
.super Lcom/byazt/yt/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83d,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hk/c$c;
    }
.end annotation


# static fields
.field public static volatile x:Lcom/byazt/hk/c;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Ljava/lang/String;

.field public final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/ix/sp;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/byazt/ix/sp;",
            ">;>;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/yt/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "unity"

    .line 5
    .line 6
    const-string v1, "ks"

    .line 7
    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/hk/c;->c:[Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/hk/c;->tt:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/hk/c;->ve:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/byazt/hk/c;->n:Ljava/util/Map;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/byazt/hk/c;->a:Ljava/util/Map;

    .line 48
    .line 49
    new-instance v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/byazt/hk/c;->sp:Ljava/util/Map;

    .line 55
    .line 56
    new-instance v0, Lcom/byazt/hk/c$4;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/byazt/hk/c$4;-><init>(Lcom/byazt/hk/c;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/byazt/hk/c;->i:Ljava/util/Comparator;

    .line 62
    .line 63
    return-void
.end method

.method public static c()Lcom/byazt/hk/c;
    .locals 2

    .line 4
    sget-object v0, Lcom/byazt/hk/c;->x:Lcom/byazt/hk/c;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/byazt/hk/c;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/byazt/hk/c;->x:Lcom/byazt/hk/c;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/byazt/hk/c;

    invoke-direct {v1}, Lcom/byazt/hk/c;-><init>()V

    sput-object v1, Lcom/byazt/hk/c;->x:Lcom/byazt/hk/c;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/hk/c;->x:Lcom/byazt/hk/c;

    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ix/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ix/c;

    .line 76
    invoke-virtual {v2}, Lcom/byazt/ix/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, "]"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u5e7f\u544a\u590d\u7528\uff1aadCannotUseInfo json err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "json error"

    return-object p1

    :cond_3
    const-string p1, "[]"

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/hk/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hk/c;Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)Ljava/util/Map;
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/hk/c;->tt(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hk/c;Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;Landroid/content/Context;Lcom/byazt/yf/sl;Lcom/byazt/nbs/i;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;Landroid/content/Context;Lcom/byazt/yf/sl;Lcom/byazt/nbs/i;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;Landroid/content/Context;Lcom/byazt/yf/sl;Lcom/byazt/nbs/i;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/byazt/yf/sl;",
            "Lcom/byazt/nbs/i;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p4

    const-string v13, "TTMediationSDK"

    if-nez v15, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0cadSlot\u4e3a\u7a7a -------: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v14, :cond_1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0ccontext\u4e3anull -------: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v9}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/nbs/da;

    move-result-object v12

    const/4 v1, 0x0

    if-eqz v12, :cond_2

    .line 87
    :try_start_0
    invoke-virtual {v12}, Lcom/byazt/nbs/da;->sp()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v12}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v12}, Lcom/byazt/nbs/da;->u()I

    move-result v3

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->a()I

    move-result v4

    invoke-static {v3, v4}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v0, v2, v3}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    .line 92
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/byazt/oi/ve;->tt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v12, :cond_3

    goto/16 :goto_3

    .line 93
    :cond_3
    iget-object v0, v8, Lcom/byazt/hk/c;->c:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 94
    invoke-virtual {v12}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u4e3a\u5355\u4f8b\u6a21\u5f0f -------: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    :cond_5
    iget-object v0, v8, Lcom/byazt/hk/c;->sp:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/byazt/hk/c;->sp:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    .line 97
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5f00\u59cb -------: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v12, v1}, Lcom/byazt/dv/tt;->c(Lcom/byazt/nbs/da;Lcom/byazt/pq/c;)Lcom/byazt/dv/tt;

    move-result-object v11

    const/4 v10, 0x4

    .line 99
    invoke-virtual {v11, v10}, Lcom/byazt/dv/tt;->ve(I)V

    const/4 v7, 0x1

    .line 100
    invoke-virtual {v11, v7}, Lcom/byazt/dv/tt;->tt(I)V

    .line 101
    new-instance v6, Lcom/byazt/hk/c$c;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v4, v12

    move-object v5, v11

    move-object v10, v6

    move-object/from16 v6, p6

    const/4 v8, 0x1

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/byazt/hk/c$c;-><init>(Lcom/byazt/hk/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;I)V

    invoke-static {v11, v15, v10}, Lcom/byazt/qv/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 102
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/byazt/hr/sl;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v1, "TMe"

    const-string v2, "adn \u4ee3\u7801\u4f4d\u9884\u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    .line 103
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/byazt/hr/sl;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 105
    new-instance v2, Lcom/byazt/bnd/tt;

    const v3, 0xa051

    invoke-static {v3}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/byazt/bnd/tt;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    const/4 v13, 0x2

    const/4 v3, 0x4

    const/16 v16, 0x1

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object v9, v12

    move-object/from16 v10, p2

    move-object v4, v12

    move v12, v1

    move v14, v0

    move-object v5, v15

    move v15, v3

    move-object/from16 v17, v2

    invoke-static/range {v9 .. v23}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    const/4 v13, 0x4

    const/4 v14, 0x1

    .line 107
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {v4}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move-object v9, v2

    move-object v11, v4

    move v12, v0

    .line 108
    invoke-static/range {v9 .. v22}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    return-void

    :cond_8
    move-object v4, v12

    move-object v5, v15

    .line 109
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    invoke-virtual {v4}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/byazt/dv/tt;->n()Z

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {v11}, Lcom/byazt/dv/tt;->ve()I

    move-result v15

    const/16 v16, 0x4

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 110
    invoke-virtual {v11}, Lcom/byazt/dv/tt;->uj()J

    move-result-wide v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    move-object v10, v4

    move-object v3, v11

    move-object/from16 v11, p2

    move-object v6, v13

    move v13, v0

    move-object v4, v14

    move v14, v2

    .line 111
    invoke-static/range {v10 .. v24}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    move-object/from16 v2, p3

    .line 112
    invoke-static {v3, v5, v2}, Lcom/byazt/qv/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v4, v3, v5, v0}, Lcom/byazt/db/c;->adnStartLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5df2\u53d1\u5b8c -------: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    move-object v4, v12

    move-object v5, v15

    const/4 v0, 0x4

    .line 114
    invoke-static {v4, v5, v0, v8}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V

    return-void

    :cond_a
    :goto_3
    move-object v4, v12

    move-object v6, v13

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0cclassName\u6216wfcBean\u4e3a\u7a7a, className: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wfcBean: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adnSlotId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/List;Lcom/byazt/ix/sp;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ix/sp;",
            ">;",
            "Lcom/byazt/ix/sp;",
            ")Z"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ix/sp;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 24
    iget-object v0, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    iget-object v1, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private tt(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 12
    iget-object v3, v0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    const-string v5, "TTMediationSDK"

    if-eqz v3, :cond_a

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, ""

    .line 15
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/byazt/ix/sp;

    .line 17
    iget-object v14, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v14}, Lcom/byazt/yl/ve;->isReadyStatus()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 18
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x4

    if-ne v14, v15, :cond_2

    .line 19
    iget-object v13, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v0, v6, v13}, Lcom/byazt/yt/c;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)Z

    move-result v13

    goto :goto_3

    :cond_2
    if-eq v14, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const-string v14, ", adSlotId: "

    if-nez v13, :cond_5

    .line 20
    invoke-virtual {v12}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    move-result-object v13

    iget-object v15, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-static {v13, v2, v15}, Lcom/byazt/yt/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "--==-- \u5e7f\u544a\u590d\u7528:\u590d\u7528\u6210\u529f\uff1a--------"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 22
    invoke-virtual {v12}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-static {v5, v11}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_1

    .line 24
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "--==-- \u5e7f\u544a\u590d\u7528:AdSlot\u4e0d\u7b26\u5408 -------: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 25
    invoke-virtual {v15}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 26
    invoke-static {v5, v13}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    goto :goto_4

    .line 27
    :cond_5
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "--==-- \u5e7f\u544a\u590d\u7528:\u5e7f\u544a\u8fc7\u671f\u4e86 -------: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 29
    invoke-virtual {v15}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-static {v5, v13}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x5

    :goto_4
    if-nez v10, :cond_6

    move-object v10, v12

    .line 31
    :cond_6
    new-instance v14, Lcom/byazt/ix/c;

    invoke-direct {v14}, Lcom/byazt/ix/c;-><init>()V

    .line 32
    iget-object v15, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v15}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/byazt/ix/c;->uj(I)V

    .line 33
    iget-object v15, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v15}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/byazt/ix/c;->n(I)V

    .line 34
    iget-object v15, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v15}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/byazt/ix/c;->tt(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v14, v13}, Lcom/byazt/ix/c;->tt(I)V

    .line 36
    iget-object v12, v12, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v12}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v12

    invoke-virtual {v14, v12}, Lcom/byazt/ix/c;->c(I)V

    .line 37
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    if-eqz v11, :cond_8

    const/4 v1, 0x3

    return v1

    :cond_8
    if-eqz p3, :cond_9

    if-eqz v10, :cond_9

    .line 38
    iget-object v1, v10, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-direct {v0, v7}, Lcom/byazt/hk/c;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Ljava/lang/String;)V

    :cond_9
    return v13

    .line 39
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:\u5f53\u524d\u6ca1\u6709\u5e7f\u544a\u7f13\u5b58 -------adnSlotId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private tt(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/byazt/ll/tt;",
            "I",
            "Lcom/byazt/yl/ve;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/ix/sp;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-eqz v1, :cond_1

    if-eq v1, p5, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->setUseFromCache(Z)V

    :cond_1
    if-eqz v1, :cond_0

    if-eq v1, p5, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p4}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v5, Lcom/byazt/ix/sp;

    invoke-direct {v5, v1, v3, v4, p3}, Lcom/byazt/ix/sp;-><init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    new-instance v5, Lcom/byazt/ix/sp;

    invoke-direct {v5, v1, v3, v4, p3}, Lcom/byazt/ix/sp;-><init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hk/c;->ve:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "_"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I
    .locals 10

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 52
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/byazt/yt/c;->tt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/hk/c;->tt(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 54
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object v2, p1

    .line 57
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/ix/sp;

    .line 58
    invoke-virtual {v6}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    move-result-object v7

    const-string v8, "\u5e7f\u544a\u590d\u7528"

    invoke-virtual {p0, v6, v7, p2, v8}, Lcom/byazt/yt/c;->c(Lcom/byazt/ix/sp;Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x6

    if-eq v7, v8, :cond_5

    .line 59
    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_3

    if-nez p1, :cond_6

    move-object p1, v6

    .line 60
    :cond_6
    new-instance v8, Lcom/byazt/ix/c;

    invoke-direct {v8}, Lcom/byazt/ix/c;-><init>()V

    .line 61
    iget-object v9, v6, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/ix/c;->uj(I)V

    .line 62
    iget-object v9, v6, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/byazt/ix/c;->n(I)V

    .line 63
    iget-object v9, v6, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/byazt/ix/c;->tt(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v8, v7}, Lcom/byazt/ix/c;->tt(I)V

    .line 65
    iget-object v6, v6, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v6}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v8, v6}, Lcom/byazt/ix/c;->c(I)V

    .line 66
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    .line 67
    monitor-exit p0

    const/4 p1, 0x3

    return p1

    :cond_9
    if-eqz p3, :cond_a

    if-eqz p1, :cond_a

    .line 68
    :try_start_2
    iget-object p1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-direct {p0, v2}, Lcom/byazt/hk/c;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_a
    monitor-exit p0

    const/4 p1, 0x2

    return p1

    :cond_b
    :try_start_3
    const-string p2, "TTMediationSDK"

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "--==-- \u5e7f\u544a\u590d\u7528:\u5f53\u524d\u6ca1\u6709\u5e7f\u544a\u7f13\u5b58 -------adnSlotId: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/hk/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/ll/tt;",
            "I)",
            "Ljava/util/List<",
            "Lcom/byazt/ix/sp;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 26
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 27
    :try_start_1
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gr()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 28
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v4

    .line 30
    :cond_2
    invoke-virtual {p0, v4, p1, p3}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v1, :cond_8

    const/4 p3, 0x0

    const/4 v4, 0x0

    .line 31
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 32
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ix/sp;

    invoke-virtual {v5}, Lcom/byazt/ix/sp;->ve()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ix/sp;

    invoke-virtual {v5}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/ix/sp;

    iget-object v6, v6, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-static {v5, p2, v6}, Lcom/byazt/yt/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 33
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_6

    .line 35
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ix/sp;

    invoke-virtual {v4}, Lcom/byazt/ix/sp;->ve()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ix/sp;

    invoke-virtual {v4}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    move-result-object v4

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ix/sp;

    iget-object v5, v5, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-static {v4, p2, v5}, Lcom/byazt/yt/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 37
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/ix/sp;

    .line 38
    invoke-virtual {p3, v1}, Lcom/byazt/ix/sp;->c(Z)V

    goto :goto_3

    :cond_7
    const-string p2, "TTMediationSDK"

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "--==-- \u590d\u7528\u6a21\u5f0f1\uff0c\u4e0d\u4ece\u590d\u7528\u6c60\u79fb\u9664\uff0c\u83b7\u53d6\u7f13\u5b58: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    const/4 v4, 0x2

    if-ne p3, v4, :cond_c

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ix/sp;

    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v2, :cond_b

    .line 42
    invoke-virtual {v4}, Lcom/byazt/ix/sp;->sp()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz v5, :cond_a

    const-string v5, "TTMediationSDK"

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--==-- \u590d\u7528\u6a21\u5f0f2\uff0c\u5e7f\u544a\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/byazt/ix/sp;->tt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  adnName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v7}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " showSort:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v7}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u6682\u4e0d\u53ef\u7528\uff0c \u5df2\u7ecf\u88ab\u4f7f\u7528\u4e2d..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_a
    invoke-virtual {v4}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    move-result-object v5

    iget-object v6, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-static {v5, p2, v6}, Lcom/byazt/yt/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/byazt/ix/sp;->sp()Z

    move-result v5

    if-nez v5, :cond_9

    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const-string p2, "TTMediationSDK"

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "--==-- \u590d\u7528\u6a21\u5f0f2\uff0c\u4ece\u590d\u7528\u6c60\u79fb\u9664\uff0c\u83b7\u53d6\u7f13\u5b58: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_c
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/ix/sp;

    .line 49
    invoke-virtual {p2, v1}, Lcom/byazt/ix/sp;->tt(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 50
    :cond_d
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;ZLcom/byazt/yf/sl;Lcom/byazt/nbs/i;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/byazt/yf/sl;",
            "Lcom/byazt/nbs/i;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 13
    new-instance v9, Lcom/byazt/hk/c$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    move-object/from16 v6, p7

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/byazt/hk/c$2;-><init>(Lcom/byazt/hk/c;Ljava/lang/String;Lcom/byazt/ll/tt;ZLjava/util/Map;Landroid/content/Context;Lcom/byazt/yf/sl;Lcom/byazt/nbs/i;)V

    invoke-static {v9}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/nbs/da;I)V
    .locals 2

    if-eqz p3, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/hk/c;->n:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/hk/c;->sp:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/ix/sp;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ix/sp;

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/byazt/hk/c;->c(Ljava/util/List;Lcom/byazt/ix/sp;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p3, :cond_4

    .line 22
    iget-object p2, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/byazt/hk/c;->i:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/byazt/vx/h;->c(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/byazt/ll/tt;",
            "I",
            "Lcom/byazt/yl/ve;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/byazt/hk/c$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/hk/c$3;-><init>(Lcom/byazt/hk/c;Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/byazt/hk/c;->tt:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/nbs/da;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/hk/c;->n:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nbs/da;

    return-object p1
.end method

.method public tt(Ljava/lang/String;)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/hk/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/hk/c$1;-><init>(Lcom/byazt/hk/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/hk/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public uj(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/byazt/hk/c;->tt:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    :cond_1
    return p3

    :cond_2
    return v0
.end method

.method public ve()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/hk/c;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public ve(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hk/c;->tt:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ve(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/hk/c;->ve:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
