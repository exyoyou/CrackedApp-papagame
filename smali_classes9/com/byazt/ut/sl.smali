.class public Lcom/byazt/ut/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x342,
        0x9e
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile da:I

.field public final i:Z

.field public final n:Z

.field public volatile sl:Ljava/util/function/Function;

.field public final sp:Z

.field public volatile t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/byazt/dna/c;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile u:Ljava/lang/Object;

.field public final uj:I

.field public final ve:I

.field public final x:[I

.field public volatile yp:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;ZIILjava/lang/String;Z[IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ut/sl;->c:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ut/sl;->tt:Ljava/lang/Class;

    .line 7
    .line 8
    iput p4, p0, Lcom/byazt/ut/sl;->ve:I

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/byazt/ut/sl;->n:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/byazt/ut/sl;->uj:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/byazt/ut/sl;->sp:Z

    .line 17
    .line 18
    if-gez p4, :cond_0

    .line 19
    .line 20
    iput p4, p0, Lcom/byazt/ut/sl;->yp:I

    .line 21
    .line 22
    :cond_0
    if-eqz p7, :cond_1

    .line 23
    .line 24
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/byazt/ut/sl;->t:Ljava/util/Map;

    .line 30
    .line 31
    :cond_1
    iput-object p8, p0, Lcom/byazt/ut/sl;->x:[I

    .line 32
    .line 33
    iput-boolean p9, p0, Lcom/byazt/ut/sl;->i:Z

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ut/sl;->yp:I

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ut/sl;->da:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/byazt/ut/sl;->yp:I

    .line 8
    .line 9
    iget v1, p0, Lcom/byazt/ut/sl;->ve:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ut/sl;->da:I

    return v0
.end method

.method public declared-synchronized c(Lcom/byazt/dna/c;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/ut/sl;->sp:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/byazt/ut/sl;->t:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ut/sl;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/byazt/ut/sl;->u:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ut/sl;->da:I

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/Object;Lcom/byazt/dna/c;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/ut/sl;->sp:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/byazt/ut/sl;->t:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ut/sl;->t:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/byazt/ut/sl;->u:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/util/function/Function;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ut/sl;->sl:Ljava/util/function/Function;

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ut/sl;->yp:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/util/function/Function;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/sl;->sl:Ljava/util/function/Function;

    return-object v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ut/sl;->yp:I

    return-void
.end method

.method public uj()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/sl;->u:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/byazt/dna/c;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/sl;->t:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
