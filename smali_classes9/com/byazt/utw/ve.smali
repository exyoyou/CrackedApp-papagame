.class public final Lcom/byazt/utw/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c2,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/utw/ve$tt;,
        Lcom/byazt/utw/ve$c;
    }
.end annotation


# static fields
.field public static volatile n:Lcom/byazt/utw/ve;


# instance fields
.field public volatile a:Lcom/byazt/emg/ve;

.field public volatile c:I

.field public final da:Lcom/byazt/utw/tt$tt;

.field public final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/byazt/utw/ve$c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile sl:Ljava/lang/String;

.field public volatile sp:Lcom/byazt/byh/ve;

.field public volatile t:Z

.field public final tt:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/utw/tt;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uj:Ljava/util/concurrent/ExecutorService;

.field public final ve:Lcom/byazt/utw/ve$tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/utw/ve$tt<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile x:Lcom/byazt/byh/tt;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x28000

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/utw/ve;->c:I

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/utw/ve;->tt:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/byazt/utw/ve;->i:Ljava/util/HashSet;

    .line 23
    .line 24
    new-instance v1, Lcom/byazt/utw/ve$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/byazt/utw/ve$1;-><init>(Lcom/byazt/utw/ve;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/byazt/utw/ve;->da:Lcom/byazt/utw/tt$tt;

    .line 30
    .line 31
    new-instance v1, Lcom/byazt/utw/ve$tt;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2}, Lcom/byazt/utw/ve$tt;-><init>(Lcom/byazt/utw/ve$1;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/byazt/utw/ve;->ve:Lcom/byazt/utw/ve$tt;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/byazt/utw/ve;->c(Lcom/byazt/utw/ve$tt;)Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, p0, Lcom/byazt/utw/ve;->uj:Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/byazt/utw/ve$tt;->c(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static synthetic c(Lcom/byazt/utw/ve;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/utw/ve;->tt:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static c()Lcom/byazt/utw/ve;
    .locals 2

    .line 7
    sget-object v0, Lcom/byazt/utw/ve;->n:Lcom/byazt/utw/ve;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/byazt/utw/ve;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/byazt/utw/ve;->n:Lcom/byazt/utw/ve;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/byazt/utw/ve;

    invoke-direct {v1}, Lcom/byazt/utw/ve;-><init>()V

    sput-object v1, Lcom/byazt/utw/ve;->n:Lcom/byazt/utw/ve;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/utw/ve;->n:Lcom/byazt/utw/ve;

    return-object v0
.end method

.method private static c(Lcom/byazt/utw/ve$tt;)Ljava/util/concurrent/ExecutorService;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/utw/ve$tt<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/byazt/nxx/c;->c()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v0

    .line 63
    :goto_0
    new-instance v0, Lcom/byazt/jtc/uj;

    const/4 v3, 0x0

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/byazt/utw/ve$4;

    invoke-direct {v9}, Lcom/byazt/utw/ve$4;-><init>()V

    new-instance v10, Lcom/byazt/utw/ve$5;

    invoke-direct {v10, p0}, Lcom/byazt/utw/ve$5;-><init>(Lcom/byazt/utw/ve$tt;)V

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v10}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/utw/ve;)Lcom/byazt/utw/ve$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/utw/ve;->ve:Lcom/byazt/utw/ve$tt;

    return-object p0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 4
    iput p1, p0, Lcom/byazt/utw/ve;->c:I

    .line 5
    :cond_0
    sget-boolean v0, Lcom/byazt/utw/uj;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "MaxPreloadSize: "

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_Preloader"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/byh/ve;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/utw/ve;->sp:Lcom/byazt/byh/ve;

    return-void
.end method

.method public c(Lcom/byazt/emg/ve;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/utw/ve;->a:Lcom/byazt/emg/ve;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v0, p1}, Lcom/byazt/utw/ve;->c(ZZLjava/lang/String;)V

    return-void
.end method

.method public varargs c(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 14
    sget-boolean v11, Lcom/byazt/utw/uj;->n:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v2, v1, Lcom/byazt/utw/ve;->x:Lcom/byazt/byh/tt;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/byazt/utw/ve;->sp:Lcom/byazt/byh/ve;

    :goto_0
    move-object v12, v2

    .line 16
    iget-object v13, v1, Lcom/byazt/utw/ve;->a:Lcom/byazt/emg/ve;

    if-eqz v12, :cond_13

    if-nez v13, :cond_1

    goto/16 :goto_7

    .line 17
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz v10, :cond_12

    array-length v2, v10

    if-gtz v2, :cond_2

    goto/16 :goto_6

    :cond_2
    if-gtz p3, :cond_3

    .line 18
    iget v2, v1, Lcom/byazt/utw/ve;->c:I

    move v14, v2

    goto :goto_1

    :cond_3
    move/from16 v14, p3

    :goto_1
    if-eqz p2, :cond_4

    move-object v15, v9

    goto :goto_2

    .line 19
    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/byazt/lt/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 20
    :goto_2
    invoke-virtual {v12, v15}, Lcom/byazt/byh/c;->uj(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v14

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    if-eqz v11, :cond_5

    const-string v0, "TAG_PROXY_Preloader"

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no need preload, file size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", need preload size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 23
    :cond_6
    iget-object v8, v1, Lcom/byazt/utw/ve;->tt:Landroid/util/SparseArray;

    monitor-enter v8

    .line 24
    :try_start_0
    iget-object v2, v1, Lcom/byazt/utw/ve;->tt:Landroid/util/SparseArray;

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    .line 25
    invoke-interface {v6, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    monitor-exit v8

    return-void

    .line 27
    :cond_8
    new-instance v5, Lcom/byazt/utw/ve$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v5

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v10, v5

    move v5, v14

    move-object/from16 v17, v6

    move-object/from16 v6, p4

    move/from16 p3, v14

    const/4 v14, 0x1

    move-object/from16 v7, p5

    move-object/from16 v18, v8

    move-object/from16 v8, p6

    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/byazt/utw/ve$c;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 28
    iget-object v2, v1, Lcom/byazt/utw/ve;->sl:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 29
    sget v3, Lcom/byazt/utw/uj;->ve:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 30
    iget-object v2, v1, Lcom/byazt/utw/ve;->i:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    :try_start_2
    iget-object v0, v1, Lcom/byazt/utw/ve;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_9

    :try_start_3
    const-string v0, "TAG_PROXY_Preloader"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel preload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", add to pending queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_9
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    .line 35
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_a
    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    if-eqz v11, :cond_b

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cancel preload: "

    .line 36
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_b
    monitor-exit v18

    return-void

    :cond_c
    if-ne v3, v14, :cond_e

    .line 38
    iget-boolean v3, v1, Lcom/byazt/utw/ve;->t:Z

    if-ne v3, v0, :cond_e

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v11, :cond_d

    const-string v0, "TAG_PROXY_Preloader"

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel preload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", it is playing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_d
    monitor-exit v18

    return-void

    .line 41
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/byazt/nxx/c;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nxx/c;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_11

    .line 44
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/utw/a$tt;

    if-eqz v5, :cond_f

    .line 45
    new-instance v6, Lcom/byazt/utw/a$tt;

    iget-object v7, v5, Lcom/byazt/utw/a$tt;->c:Ljava/lang/String;

    iget-object v5, v5, Lcom/byazt/utw/a$tt;->tt:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/byazt/utw/a$tt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    .line 46
    :cond_11
    new-instance v0, Lcom/byazt/utw/tt$c;

    invoke-direct {v0}, Lcom/byazt/utw/tt$c;-><init>()V

    .line 47
    invoke-virtual {v0, v12}, Lcom/byazt/utw/tt$c;->c(Lcom/byazt/byh/c;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/byazt/utw/tt$c;->c(Lcom/byazt/emg/ve;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v9}, Lcom/byazt/utw/tt$c;->c(Ljava/lang/String;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/byazt/utw/tt$c;->tt(Ljava/lang/String;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    new-instance v3, Lcom/byazt/utw/x;

    .line 49
    invoke-static/range {p6 .. p6}, Lcom/byazt/nxx/c;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/byazt/utw/x;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/byazt/utw/tt$c;->c(Lcom/byazt/utw/x;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Lcom/byazt/utw/tt$c;->c(Ljava/util/List;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    move/from16 v2, p3

    .line 51
    invoke-virtual {v0, v2}, Lcom/byazt/utw/tt$c;->c(I)Lcom/byazt/utw/tt$c;

    move-result-object v0

    iget-object v2, v1, Lcom/byazt/utw/ve;->da:Lcom/byazt/utw/tt$tt;

    invoke-virtual {v0, v2}, Lcom/byazt/utw/tt$c;->c(Lcom/byazt/utw/tt$tt;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v10}, Lcom/byazt/utw/tt$c;->c(Ljava/lang/Object;)Lcom/byazt/utw/tt$c;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/byazt/utw/tt$c;->c()Lcom/byazt/utw/tt;

    move-result-object v0

    move-object/from16 v2, v17

    .line 54
    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 56
    iget-object v2, v1, Lcom/byazt/utw/ve;->uj:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    .line 57
    :goto_5
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_12
    :goto_6
    return-void

    :cond_13
    :goto_7
    if-eqz v11, :cond_14

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cache or videoProxyDB null in Preloader!!!"

    .line 58
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public varargs c(ZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/utw/ve;->c(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public c(ZZLjava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/byazt/utw/ve$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/utw/ve$2;-><init>(Lcom/byazt/utw/ve;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/nxx/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/utw/ve$3;

    invoke-direct {v0, p0}, Lcom/byazt/utw/ve$3;-><init>(Lcom/byazt/utw/ve;)V

    invoke-static {v0}, Lcom/byazt/nxx/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method
