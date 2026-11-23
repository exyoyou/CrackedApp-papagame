.class public Lcom/byazt/oi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x78d,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/oi/c;


# instance fields
.field public tt:J

.field public final uj:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public ve:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 10
    .line 11
    return-void
.end method

.method public static c()Lcom/byazt/oi/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/oi/c;->c:Lcom/byazt/oi/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/oi/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/oi/c;->c:Lcom/byazt/oi/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/oi/c;

    invoke-direct {v1}, Lcom/byazt/oi/c;-><init>()V

    sput-object v1, Lcom/byazt/oi/c;->c:Lcom/byazt/oi/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/oi/c;->c:Lcom/byazt/oi/c;

    return-object v0
.end method


# virtual methods
.method public c(JJ)V
    .locals 4

    .line 7
    const-class v0, Lcom/byazt/oi/c;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-wide v1, p0, Lcom/byazt/oi/c;->tt:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    iget-wide v1, p0, Lcom/byazt/oi/c;->ve:J

    cmp-long v3, v1, p3

    if-eqz v3, :cond_1

    .line 9
    :cond_0
    iput-wide p1, p0, Lcom/byazt/oi/c;->tt:J

    .line 10
    iput-wide p3, p0, Lcom/byazt/oi/c;->ve:J

    .line 11
    iget-object p1, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 12
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tt()Z
    .locals 9

    .line 1
    const-class v0, Lcom/byazt/oi/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/byazt/oi/c;->tt:J

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v1, v4

    .line 10
    .line 11
    if-lez v6, :cond_4

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/byazt/oi/c;->ve:J

    .line 14
    .line 15
    cmp-long v6, v1, v4

    .line 16
    .line 17
    if-gtz v6, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    iget-wide v6, p0, Lcom/byazt/oi/c;->tt:J

    .line 32
    .line 33
    cmp-long v8, v4, v6

    .line 34
    .line 35
    if-ltz v8, :cond_3

    .line 36
    .line 37
    :goto_0
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-long v4, v4

    .line 44
    iget-wide v6, p0, Lcom/byazt/oi/c;->tt:J

    .line 45
    .line 46
    cmp-long v8, v4, v6

    .line 47
    .line 48
    if-lez v8, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Long;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    sub-long v4, v1, v4

    .line 69
    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    iget-wide v6, p0, Lcom/byazt/oi/c;->ve:J

    .line 75
    .line 76
    cmp-long v8, v4, v6

    .line 77
    .line 78
    if-gtz v8, :cond_2

    .line 79
    .line 80
    monitor-exit v0

    .line 81
    const/4 v0, 0x1

    .line 82
    return v0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 89
    .line 90
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v4, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object v4, p0, Lcom/byazt/oi/c;->uj:Ljava/util/Queue;

    .line 99
    .line 100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v4, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :goto_1
    monitor-exit v0

    .line 108
    return v3

    .line 109
    :cond_4
    :goto_2
    monitor-exit v0

    .line 110
    return v3

    .line 111
    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw v1
.end method
