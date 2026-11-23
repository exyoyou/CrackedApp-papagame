.class public Lcn/fly/tcp/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/fly/tcp/a/c;

.field private final b:Lcn/fly/tcp/e/a;

.field private final c:Lcn/fly/tcp/f/b;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcn/fly/mcl/BusinessMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcn/fly/tcp/c/d;

.field private final f:Lcn/fly/tcp/c/b;

.field private final g:Lcn/fly/tcp/c/c;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/a/c;Lcn/fly/tcp/e/a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/e/b;->a:Lcn/fly/tcp/a/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/e/b;->b:Lcn/fly/tcp/e/a;

    .line 7
    .line 8
    new-instance v1, Lcn/fly/tcp/f/b;

    .line 9
    .line 10
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {v1, v0}, Lcn/fly/tcp/f/b;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcn/fly/tcp/e/b;->c:Lcn/fly/tcp/f/b;

    .line 18
    .line 19
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v4, p0, Lcn/fly/tcp/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    new-instance v6, Lcn/fly/tcp/c/d;

    .line 27
    .line 28
    invoke-direct {p0}, Lcn/fly/tcp/e/b;->b()Lcn/fly/tcp/c/d$a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v6, p1, v0}, Lcn/fly/tcp/c/d;-><init>(Lcn/fly/tcp/a/c;Lcn/fly/tcp/c/d$a;)V

    .line 33
    .line 34
    .line 35
    iput-object v6, p0, Lcn/fly/tcp/e/b;->e:Lcn/fly/tcp/c/d;

    .line 36
    .line 37
    new-instance p1, Lcn/fly/tcp/c/b;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcn/fly/tcp/e/a;->a()Lcn/fly/tcp/d/b;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {p0}, Lcn/fly/tcp/e/b;->c()Lcn/fly/tcp/c/b$a;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object v0, p1

    .line 48
    move-object v3, v6

    .line 49
    invoke-direct/range {v0 .. v5}, Lcn/fly/tcp/c/b;-><init>(Lcn/fly/tcp/f/b;Lcn/fly/tcp/d/b;Lcn/fly/tcp/c/d;Ljava/util/concurrent/ConcurrentHashMap;Lcn/fly/tcp/c/b$a;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcn/fly/tcp/e/b;->f:Lcn/fly/tcp/c/b;

    .line 53
    .line 54
    new-instance p2, Lcn/fly/tcp/c/c;

    .line 55
    .line 56
    invoke-direct {p0}, Lcn/fly/tcp/e/b;->d()Lcn/fly/tcp/c/c$a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p2, v6, p1, v0}, Lcn/fly/tcp/c/c;-><init>(Lcn/fly/tcp/c/d;Lcn/fly/tcp/c/b;Lcn/fly/tcp/c/c$a;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcn/fly/tcp/e/b;->g:Lcn/fly/tcp/c/c;

    .line 64
    .line 65
    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tcp/e/b;->b:Lcn/fly/tcp/e/a;

    return-object p0
.end method

.method static synthetic b(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tcp/e/b;->a:Lcn/fly/tcp/a/c;

    return-object p0
.end method

.method private b()Lcn/fly/tcp/c/d$a;
    .locals 1

    .line 2
    new-instance v0, Lcn/fly/tcp/e/b$2;

    invoke-direct {v0, p0}, Lcn/fly/tcp/e/b$2;-><init>(Lcn/fly/tcp/e/b;)V

    return-object v0
.end method

.method private c()Lcn/fly/tcp/c/b$a;
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/tcp/e/b$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/fly/tcp/e/b$3;-><init>(Lcn/fly/tcp/e/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private d()Lcn/fly/tcp/c/c$a;
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/tcp/e/b$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/fly/tcp/e/b$4;-><init>(Lcn/fly/tcp/e/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/e/b;->c:Lcn/fly/tcp/f/b;

    invoke-virtual {v0}, Lcn/fly/tcp/f/b;->a()V

    return-void
.end method

.method a(ILcn/fly/mcl/BusinessMessageListener;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 4
    :try_start_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP tcpPu5hServ addBMListener: bisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", listener = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TP tcpPu5hServ addBMListener: remove key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, v8, Lcn/fly/tcp/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    iget-object v1, v8, Lcn/fly/tcp/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 10
    iget-object v2, v8, Lcn/fly/tcp/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    move-object v10, v1

    .line 11
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcn/fly/tcp/c/a;->a()Lcn/fly/tcp/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    const-string v1, "TP tcpPu5hServ addBMListener: has cached msg"

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcn/fly/tcp/c/a;->a()Lcn/fly/tcp/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/c/a;->c()Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map;

    const-string v1, "bisType"

    .line 17
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    .line 18
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    const-string v1, "workId"

    .line 19
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 20
    sget-object v1, Lcn/fly/tcp/c/a;->a:Ljava/lang/String;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "ackStatus"

    invoke-static {v1, v2, v13}, Lcn/fly/tcp/e/a;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v17

    .line 22
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP tcpPu5hServ addBMListener: cachedBisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", target bisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v14, v1, :cond_5

    .line 24
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 25
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/fly/mcl/BusinessMessageListener;

    .line 27
    new-instance v7, Lcn/fly/tcp/e/b$1;

    move-object v1, v7

    move-object/from16 v2, p0

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 p1, v0

    move-object v0, v7

    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcn/fly/tcp/e/b$1;-><init>(Lcn/fly/tcp/e/b;Lcn/fly/mcl/BusinessMessageListener;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v13, v0}, Lcn/fly/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    move-object/from16 v0, p1

    goto :goto_3

    :cond_4
    move-object/from16 p1, v0

    .line 28
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TP tcpPu5hServ addBMListener: mark msg to rm. msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 29
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object/from16 p1, v0

    :goto_4
    move-object/from16 v0, p1

    goto/16 :goto_1

    .line 30
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 31
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 32
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP tcpPu5hServ addBMListener: rm msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcn/fly/tcp/c/a;->a()Lcn/fly/tcp/c/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/fly/tcp/c/a;->b(Ljava/util/Map;)V

    goto :goto_5

    .line 34
    :cond_7
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v0

    const-string v1, "TP tcpPu5hServ addBMListener: no cached msg"

    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 35
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    const-string v2, "TP tcpPu5hServ addBMListener: error"

    invoke-virtual {v1, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/fly/tcp/e/b;->g:Lcn/fly/tcp/c/c;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tcp/c/c;->a(Lcn/fly/tcp/a/a;Lcn/fly/tcp/b/a;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/fly/tcp/e/b;->c:Lcn/fly/tcp/f/b;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/b;->b(Ljava/lang/String;)V

    return-void
.end method
