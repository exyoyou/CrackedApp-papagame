.class public Lcn/fly/tcp/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tcp/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/fly/tcp/f/b;

.field private final b:Lcn/fly/tcp/d/b;

.field private final c:Lcn/fly/tcp/c/d;

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

.field private final e:Lcn/fly/tcp/c/b$a;


# direct methods
.method public constructor <init>(Lcn/fly/tcp/f/b;Lcn/fly/tcp/d/b;Lcn/fly/tcp/c/d;Ljava/util/concurrent/ConcurrentHashMap;Lcn/fly/tcp/c/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/f/b;",
            "Lcn/fly/tcp/d/b;",
            "Lcn/fly/tcp/c/d;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcn/fly/mcl/BusinessMessageListener;",
            ">;>;",
            "Lcn/fly/tcp/c/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/fly/tcp/c/b;->a:Lcn/fly/tcp/f/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/c/b;->b:Lcn/fly/tcp/d/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcn/fly/tcp/c/b;->c:Lcn/fly/tcp/c/d;

    .line 9
    .line 10
    iput-object p4, p0, Lcn/fly/tcp/c/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iput-object p5, p0, Lcn/fly/tcp/c/b;->e:Lcn/fly/tcp/c/b$a;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/c/b;)Lcn/fly/tcp/c/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tcp/c/b;->e:Lcn/fly/tcp/c/b$a;

    return-object p0
.end method

.method private a(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 8

    .line 17
    :try_start_0
    invoke-static {p5}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p5

    const-string v0, "uniqueId"

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p5}, Lcn/fly/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 21
    iget-object p4, p0, Lcn/fly/tcp/c/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p4, :cond_0

    .line 22
    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 23
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealBusinessMsg]TP Biz msg listener detected, callback directly. bisType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Lcn/fly/mcl/BusinessMessageListener;

    .line 25
    new-instance p5, Lcn/fly/tcp/c/b$2;

    move-object v1, p5

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcn/fly/tcp/c/b$2;-><init>(Lcn/fly/tcp/c/b;Lcn/fly/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0, p5}, Lcn/fly/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[dealBusinessMsg]TP No biz msg listener detected, cache msg. bisType: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 27
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string p5, "bisType"

    .line 28
    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "workId"

    .line 29
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object p2, Lcn/fly/tcp/c/a;->a:Ljava/lang/String;

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ackStatus"

    .line 31
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcn/fly/tcp/c/a;->a()Lcn/fly/tcp/c/a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcn/fly/tcp/c/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 33
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/c/b;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcn/fly/tcp/c/b;->a(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 6

    monitor-enter p0

    if-lez p2, :cond_1

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcn/fly/tcp/c/b;->a:Lcn/fly/tcp/f/b;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 12
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TP duplicate biz push detected. workId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expireTime: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 15
    iget-object p2, p0, Lcn/fly/tcp/c/b;->a:Lcn/fly/tcp/f/b;

    invoke-virtual {p2, p1, v0, v1}, Lcn/fly/tcp/f/b;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 16
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcn/fly/tcp/c/b;)Lcn/fly/tcp/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tcp/c/b;->b:Lcn/fly/tcp/d/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(JLjava/lang/String;IILjava/lang/String;Lcn/fly/tcp/d/a;)Z
    .locals 13

    move-object v9, p0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v10, p7

    .line 3
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcn/fly/tcp/c/b;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TP duplicate biz push ignored, no callback. uniqueId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", workId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bisType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expire: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, v9, Lcn/fly/tcp/c/b;->c:Lcn/fly/tcp/c/d;

    invoke-virtual {v0, v10}, Lcn/fly/tcp/c/d;->a(Lcn/fly/tcp/d/a;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    move-wide v4, p1

    move/from16 v7, p5

    .line 6
    sget-object v11, Lcn/fly/commons/ac;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v12, Lcn/fly/tcp/c/b$1;

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcn/fly/tcp/c/b$1;-><init>(Lcn/fly/tcp/c/b;Lcn/fly/tcp/d/a;JLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, v9, Lcn/fly/tcp/c/b;->c:Lcn/fly/tcp/c/d;

    invoke-virtual {v0, v10}, Lcn/fly/tcp/c/d;->a(Lcn/fly/tcp/d/a;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
