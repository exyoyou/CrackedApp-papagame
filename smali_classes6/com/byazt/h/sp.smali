.class public Lcom/byazt/h/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x206,
        0x5b
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/u/a;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/h/t;",
            ">;"
        }
    .end annotation
.end field

.field public volatile da:Z

.field public volatile i:Z

.field public final m:Z

.field public volatile my:J

.field public final n:Lcom/byazt/k/c;

.field public nu:J

.field public volatile rh:J

.field public volatile sl:Z

.field public final sp:Lcom/byazt/h/ve;

.field public final t:Lcom/byazt/g/c;

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/h/t;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Z

.field public final uj:Lcom/byazt/zz/da;

.field public final ve:Lcom/byazt/t/DownloadInfo;

.field public x:Lcom/byazt/m/BaseException;

.field public final yp:J

.field public final z:J


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/u/a;Lcom/byazt/h/ve;)V
    .locals 7

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
    iput-object v0, p0, Lcom/byazt/h/sp;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/h/sp;->tt:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/byazt/h/sp;->i:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/byazt/h/sp;->da:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/byazt/h/sp;->sl:Z

    .line 24
    .line 25
    const-wide/16 v1, 0x0

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/byazt/h/sp;->rh:J

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/byazt/h/sp;->my:J

    .line 30
    .line 31
    iput-object p1, p0, Lcom/byazt/h/sp;->ve:Lcom/byazt/t/DownloadInfo;

    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/byazt/h/sp;->uj:Lcom/byazt/zz/da;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/byazt/h/sp;->a:Lcom/byazt/u/a;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/byazt/h/sp;->sp:Lcom/byazt/h/ve;

    .line 42
    .line 43
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/byazt/h/sp;->t:Lcom/byazt/g/c;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    .line 58
    .line 59
    const-string p2, "sync_strategy"

    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    const/4 p3, 0x1

    .line 66
    if-ne p2, p3, :cond_0

    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 p2, 0x0

    .line 71
    :goto_0
    iput-boolean p2, p0, Lcom/byazt/h/sp;->u:Z

    .line 72
    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    const-string p2, "sync_interval_ms_fg"

    .line 76
    .line 77
    const/16 v1, 0x1388

    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    int-to-long v1, p2

    .line 84
    const-string p2, "sync_interval_ms_bg"

    .line 85
    .line 86
    const/16 v3, 0x3e8

    .line 87
    .line 88
    invoke-virtual {p1, p2, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    int-to-long v3, p2

    .line 93
    const-wide/16 v5, 0x1f4

    .line 94
    .line 95
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    iput-wide v1, p0, Lcom/byazt/h/sp;->yp:J

    .line 100
    .line 101
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    iput-wide v1, p0, Lcom/byazt/h/sp;->z:J

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    iput-wide v1, p0, Lcom/byazt/h/sp;->yp:J

    .line 109
    .line 110
    iput-wide v1, p0, Lcom/byazt/h/sp;->z:J

    .line 111
    .line 112
    :goto_1
    const-string p2, "monitor_rw"

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-ne p1, p3, :cond_2

    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    :cond_2
    iput-boolean v0, p0, Lcom/byazt/h/sp;->m:Z

    .line 122
    .line 123
    return-void
.end method

.method private c(JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-wide v0, p0, Lcom/byazt/h/sp;->my:J

    sub-long v0, p1, v0

    .line 135
    iget-boolean v2, p0, Lcom/byazt/h/sp;->u:Z

    if-eqz v2, :cond_1

    .line 136
    iget-object p3, p0, Lcom/byazt/h/sp;->t:Lcom/byazt/g/c;

    invoke-virtual {p3}, Lcom/byazt/g/c;->tt()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide v2, p0, Lcom/byazt/h/sp;->yp:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/byazt/h/sp;->z:J

    :goto_0
    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    goto :goto_1

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/byazt/h/sp;->ve:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/h/sp;->rh:J

    sub-long/2addr v2, v4

    if-nez p3, :cond_2

    .line 138
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/byazt/h/sp;->c(JJ)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 139
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/byazt/h/sp;->ve()V

    .line 140
    iput-wide p1, p0, Lcom/byazt/h/sp;->my:J

    :cond_3
    return-void
.end method

.method private c(Lcom/byazt/h/n;)V
    .locals 1

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sp;->tt:Ljava/util/List;

    check-cast p1, Lcom/byazt/h/t;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/t;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/t;

    .line 145
    invoke-virtual {v0}, Lcom/byazt/h/t;->tt()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/t;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/t;

    .line 147
    invoke-virtual {v0}, Lcom/byazt/h/t;->n()Lcom/byazt/h/i;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/byazt/h/i;->ve()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/i;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/byazt/h/i;

    invoke-direct {v1, v0}, Lcom/byazt/h/i;-><init>(Lcom/byazt/h/i;)V

    .line 150
    invoke-virtual {v0}, Lcom/byazt/h/i;->ve()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/h/i;->uj()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/h/i;->c(J)V

    .line 152
    invoke-virtual {v0}, Lcom/byazt/h/i;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/h/i;->ve(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(JJ)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x10000

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 p1, 0x1f4

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/t;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/t;

    .line 2
    invoke-virtual {v0}, Lcom/byazt/h/t;->ve()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ve()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/h/sp;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/byazt/h/sp;->ve:Lcom/byazt/t/DownloadInfo;

    .line 4
    iget-object v4, p0, Lcom/byazt/h/sp;->uj:Lcom/byazt/zz/da;

    .line 5
    iget-object v5, p0, Lcom/byazt/h/sp;->c:Ljava/util/List;

    .line 6
    iget-object v6, p0, Lcom/byazt/h/sp;->tt:Ljava/util/List;

    .line 7
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/byazt/zz/da;->t(I)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_1

    .line 8
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    :cond_1
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0, v5}, Lcom/byazt/h/sp;->c(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x1

    .line 11
    :try_start_1
    invoke-direct {p0, v5}, Lcom/byazt/h/sp;->tt(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception v9

    .line 12
    :try_start_2
    invoke-static {v9}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    .line 13
    :goto_1
    invoke-direct {p0, v5, v7}, Lcom/byazt/h/sp;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 15
    invoke-direct {p0, v6}, Lcom/byazt/h/sp;->ve(Ljava/util/List;)V

    .line 16
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 17
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 18
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_3

    .line 19
    invoke-virtual {v3, v8}, Lcom/byazt/t/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 20
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v4, v5, v7}, Lcom/byazt/zz/da;->c(ILjava/util/Map;)Z

    .line 21
    invoke-interface {v4, v3}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 22
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/h/sp;->rh:J

    :cond_3
    if-eqz v0, :cond_4

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 24
    iget-wide v0, p0, Lcom/byazt/h/sp;->nu:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/byazt/h/sp;->nu:J

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private ve(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/t;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/t;

    .line 27
    invoke-virtual {v0}, Lcom/byazt/h/t;->uj()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/byazt/h/sp;->sl:Z

    .line 154
    iput-boolean v0, p0, Lcom/byazt/h/sp;->i:Z

    return-void
.end method

.method public c(Lcom/byazt/h/t;)V
    .locals 1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/h/uj;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 5
    iget-boolean v0, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v0, :cond_2c

    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2f

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/hs/tt;->n()V

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 8
    iget-object v4, v1, Lcom/byazt/h/sp;->ve:Lcom/byazt/t/DownloadInfo;

    .line 9
    iget-object v3, v1, Lcom/byazt/h/sp;->a:Lcom/byazt/u/a;

    .line 10
    iget-object v0, v1, Lcom/byazt/h/sp;->sp:Lcom/byazt/h/ve;

    .line 11
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 13
    iget-boolean v14, v1, Lcom/byazt/h/sp;->m:Z

    const-wide/16 v9, 0x0

    const/16 v22, 0x1

    const/4 v15, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->updateRealStartDownloadTime()V
    :try_end_0
    .catch Lcom/byazt/h/m; {:try_start_0 .. :try_end_0} :catch_16
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-wide v11, v9

    move-wide/from16 v16, v11

    move-wide/from16 v18, v16

    const/4 v13, 0x0

    :goto_0
    if-eqz v14, :cond_1

    .line 15
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11
    :try_end_1
    .catch Lcom/byazt/h/m; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-wide/from16 v23, v9

    :goto_1
    move v15, v13

    move-wide/from16 v17, v16

    :goto_2
    const/16 v27, 0x0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move-wide/from16 v23, v9

    :goto_3
    move v15, v13

    move-wide/from16 v17, v16

    :goto_4
    const/16 v27, 0x0

    goto/16 :goto_22

    :catch_1
    move-exception v0

    move v15, v13

    move-wide/from16 v25, v16

    :goto_5
    const/16 v27, 0x0

    goto/16 :goto_28

    .line 16
    :cond_1
    :goto_6
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/byazt/h/uj;->c()Lcom/byazt/h/c;

    move-result-object v2
    :try_end_2
    .catch Lcom/byazt/h/m; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lcom/byazt/m/BaseException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-eqz v14, :cond_2

    .line 17
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v23
    :try_end_3
    .catch Lcom/byazt/h/m; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/byazt/m/BaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long v23, v23, v11

    add-long v9, v9, v23

    :cond_2
    move-wide/from16 v23, v9

    .line 18
    :try_start_4
    iget v9, v2, Lcom/byazt/h/c;->ve:I
    :try_end_4
    .catch Lcom/byazt/h/m; {:try_start_4 .. :try_end_4} :catch_e
    .catch Lcom/byazt/m/BaseException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 19
    :try_start_5
    iget-object v9, v2, Lcom/byazt/h/c;->tt:Lcom/byazt/h/n;

    invoke-direct {v1, v9}, Lcom/byazt/h/sp;->c(Lcom/byazt/h/n;)V

    .line 20
    invoke-interface {v0, v2}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    move-wide/from16 v9, v23

    const/4 v2, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move v15, v13

    move-wide/from16 v25, v16

    :goto_7
    move-wide/from16 v9, v23

    goto :goto_5

    :cond_3
    if-eqz v14, :cond_4

    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10
    :try_end_5
    .catch Lcom/byazt/h/m; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v11, v10

    .line 22
    :cond_4
    :try_start_6
    iget-object v10, v2, Lcom/byazt/h/c;->tt:Lcom/byazt/h/n;

    invoke-interface {v10, v2}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_6
    .catch Lcom/byazt/h/m; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/byazt/m/BaseException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v14, :cond_5

    .line 23
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25
    :try_end_7
    .catch Lcom/byazt/h/m; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sub-long v25, v25, v11

    add-long v16, v16, v25

    :cond_5
    move-wide/from16 v25, v16

    .line 24
    :try_start_8
    invoke-interface {v0, v2}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    .line 25
    iget-boolean v2, v1, Lcom/byazt/h/sp;->i:Z

    if-eqz v2, :cond_d

    .line 26
    iget-boolean v2, v1, Lcom/byazt/h/sp;->da:Z
    :try_end_8
    .catch Lcom/byazt/h/m; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/byazt/m/BaseException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-nez v2, :cond_7

    :try_start_9
    iget-boolean v2, v1, Lcom/byazt/h/sp;->sl:Z

    if-eqz v2, :cond_6

    goto :goto_8

    .line 27
    :cond_6
    iput-boolean v15, v1, Lcom/byazt/h/sp;->i:Z
    :try_end_9
    .catch Lcom/byazt/h/m; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/byazt/m/BaseException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_2

    :catch_4
    move-exception v0

    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_4

    :catch_5
    move-exception v0

    move v15, v13

    goto :goto_7

    :cond_7
    :goto_8
    if-lez v13, :cond_8

    int-to-long v9, v13

    .line 28
    :try_start_a
    invoke-interface {v3, v9, v10}, Lcom/byazt/u/a;->tt(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    :catchall_3
    nop

    .line 29
    :cond_8
    :goto_9
    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_9

    .line 30
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/byazt/h/sp;->ve()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_9
    :goto_a
    const/4 v2, 0x0

    .line 32
    :goto_b
    monitor-enter p0

    .line 33
    :try_start_c
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/byazt/h/sp;->ve(Ljava/util/List;)V

    .line 34
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 36
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 38
    iget-object v3, v1, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/byazt/h/sp;->da:Z

    iget-boolean v8, v1, Lcom/byazt/h/sp;->sl:Z

    iget-object v9, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/byazt/h/sp;->nu:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    const/16 v27, 0x0

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_c

    .line 39
    iget-boolean v0, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/16 v22, 0x0

    :cond_b
    :goto_c
    if-nez v22, :cond_c

    :try_start_d
    const-string v0, "loopAndWrite_finally"

    .line 40
    invoke-static {v2, v0}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/byazt/m/BaseException; {:try_start_d .. :try_end_d} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 41
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 42
    throw v0

    :cond_c
    return-void

    :catchall_5
    move-exception v0

    .line 43
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_d
    :goto_d
    const/16 v27, 0x0

    add-int/2addr v13, v9

    const/high16 v2, 0x10000

    if-lt v13, v2, :cond_11

    .line 44
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v15, v9, v18

    const-wide/16 v28, 0x64

    cmp-long v2, v15, v28

    if-lez v2, :cond_11

    move-wide/from16 v28, v11

    int-to-long v11, v13

    .line 45
    invoke-interface {v3, v11, v12}, Lcom/byazt/u/a;->tt(J)Z

    move-result v2
    :try_end_f
    .catch Lcom/byazt/h/m; {:try_start_f .. :try_end_f} :catch_a
    .catch Lcom/byazt/m/BaseException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 46
    :try_start_10
    invoke-direct {v1, v9, v10, v2}, Lcom/byazt/h/sp;->c(JZ)V

    .line 47
    sget-boolean v2, Lcom/byazt/hs/tt;->c:Z

    if-nez v2, :cond_10

    .line 48
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result v2

    if-nez v2, :cond_f

    .line 49
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->isDownloadFromReserveWifi()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 50
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_e

    .line 51
    :cond_e
    new-instance v0, Lcom/byazt/m/n;

    invoke-direct {v0}, Lcom/byazt/m/n;-><init>()V

    throw v0

    .line 52
    :cond_f
    new-instance v0, Lcom/byazt/m/ve;

    invoke-direct {v0}, Lcom/byazt/m/ve;-><init>()V

    throw v0
    :try_end_10
    .catch Lcom/byazt/h/m; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/byazt/m/BaseException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_10
    :goto_e
    move-wide/from16 v18, v9

    move-wide/from16 v9, v23

    move-wide/from16 v16, v25

    move-wide/from16 v11, v28

    const/4 v2, 0x0

    const/4 v13, 0x0

    goto :goto_f

    :catchall_6
    move-exception v0

    move-wide/from16 v17, v25

    goto/16 :goto_16

    :catch_7
    move-exception v0

    move-wide/from16 v17, v25

    goto/16 :goto_21

    :catch_8
    move-exception v0

    move-wide/from16 v9, v23

    goto/16 :goto_27

    :catchall_7
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    :catch_a
    move-exception v0

    goto :goto_12

    :cond_11
    move-wide/from16 v28, v11

    move-wide/from16 v9, v23

    move-wide/from16 v16, v25

    move-wide/from16 v11, v28

    const/4 v2, 0x0

    :goto_f
    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    const/16 v27, 0x0

    :goto_10
    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_17

    :catch_b
    move-exception v0

    const/16 v27, 0x0

    :goto_11
    move v15, v13

    move-wide/from16 v17, v25

    goto/16 :goto_22

    :catch_c
    move-exception v0

    const/16 v27, 0x0

    :goto_12
    move v15, v13

    goto :goto_13

    :catchall_9
    move-exception v0

    const/16 v27, 0x0

    goto :goto_14

    :catch_d
    move-exception v0

    const/16 v27, 0x0

    goto :goto_15

    :catch_e
    move-exception v0

    const/16 v27, 0x0

    move v15, v13

    move-wide/from16 v25, v16

    :goto_13
    move-wide/from16 v9, v23

    goto/16 :goto_28

    :catchall_a
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v23, v9

    :goto_14
    move v15, v13

    move-wide/from16 v17, v16

    goto :goto_17

    :catch_f
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v23, v9

    :goto_15
    move v15, v13

    move-wide/from16 v17, v16

    goto/16 :goto_22

    :catch_10
    move-exception v0

    const/16 v27, 0x0

    move v15, v13

    move-wide/from16 v25, v16

    goto/16 :goto_28

    :catchall_b
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v17, v9

    move-wide/from16 v23, v17

    :goto_16
    const/4 v15, 0x0

    .line 53
    :goto_17
    :try_start_11
    iget-boolean v2, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v2, :cond_19

    iget-boolean v2, v1, Lcom/byazt/h/sp;->sl:Z

    if-eqz v2, :cond_12

    goto/16 :goto_1c

    .line 54
    :cond_12
    invoke-static {}, Lcom/byazt/x/c;->c()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 55
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_13
    const-string v2, "MultiSegmentWriter"

    const-string v9, "loopAndWrite:  e = "

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_15

    :try_start_12
    const-string v2, "loopAndWrite"

    .line 57
    invoke-static {v0, v2}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/byazt/m/BaseException; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_15

    if-lez v15, :cond_14

    int-to-long v9, v15

    .line 58
    :try_start_13
    invoke-interface {v3, v9, v10}, Lcom/byazt/u/a;->tt(J)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    goto :goto_18

    :catchall_c
    nop

    .line 59
    :cond_14
    :goto_18
    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_15

    .line 60
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/byazt/h/sp;->ve()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_19

    :catchall_d
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_15
    :goto_19
    const/4 v2, 0x0

    .line 62
    :goto_1a
    monitor-enter p0

    .line 63
    :try_start_15
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/byazt/h/sp;->ve(Ljava/util/List;)V

    .line 64
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 66
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 68
    iget-object v3, v1, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/byazt/h/sp;->da:Z

    iget-boolean v8, v1, Lcom/byazt/h/sp;->sl:Z

    iget-object v9, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/byazt/h/sp;->nu:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_18

    .line 69
    iget-boolean v0, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v0, :cond_17

    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    if-eqz v0, :cond_16

    goto :goto_1b

    :cond_16
    const/16 v22, 0x0

    :cond_17
    :goto_1b
    if-nez v22, :cond_18

    :try_start_16
    const-string v0, "loopAndWrite_finally"

    .line 70
    invoke-static {v2, v0}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/byazt/m/BaseException; {:try_start_16 .. :try_end_16} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 71
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 72
    throw v0

    :cond_18
    return-void

    :catchall_e
    move-exception v0

    .line 73
    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    throw v0

    :catch_12
    move-exception v0

    .line 74
    :try_start_18
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 75
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    :cond_19
    :goto_1c
    if-lez v15, :cond_1a

    int-to-long v9, v15

    .line 76
    :try_start_19
    invoke-interface {v3, v9, v10}, Lcom/byazt/u/a;->tt(J)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    goto :goto_1d

    :catchall_f
    nop

    .line 77
    :cond_1a
    :goto_1d
    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_1b

    .line 78
    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lcom/byazt/h/sp;->ve()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    goto :goto_1e

    :catchall_10
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_1b
    :goto_1e
    const/4 v2, 0x0

    .line 80
    :goto_1f
    monitor-enter p0

    .line 81
    :try_start_1b
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/byazt/h/sp;->ve(Ljava/util/List;)V

    .line 82
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 84
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 86
    iget-object v3, v1, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/byazt/h/sp;->da:Z

    iget-boolean v8, v1, Lcom/byazt/h/sp;->sl:Z

    iget-object v9, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/byazt/h/sp;->nu:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_1e

    .line 87
    iget-boolean v0, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    if-eqz v0, :cond_1c

    goto :goto_20

    :cond_1c
    const/16 v22, 0x0

    :cond_1d
    :goto_20
    if-nez v22, :cond_1e

    :try_start_1c
    const-string v0, "loopAndWrite_finally"

    .line 88
    invoke-static {v2, v0}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1c
    .catch Lcom/byazt/m/BaseException; {:try_start_1c .. :try_end_1c} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 89
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 90
    throw v0

    :cond_1e
    return-void

    :catchall_11
    move-exception v0

    .line 91
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    throw v0

    :catch_14
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v17, v9

    move-wide/from16 v23, v17

    :goto_21
    const/4 v15, 0x0

    .line 92
    :goto_22
    :try_start_1e
    iget-object v2, v1, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    const-string v9, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v9}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 93
    iget-boolean v2, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v1, Lcom/byazt/h/sp;->sl:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    if-eqz v2, :cond_25

    :cond_1f
    if-lez v15, :cond_20

    int-to-long v9, v15

    .line 94
    :try_start_1f
    invoke-interface {v3, v9, v10}, Lcom/byazt/u/a;->tt(J)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    goto :goto_23

    :catchall_12
    nop

    .line 95
    :cond_20
    :goto_23
    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_21

    .line 96
    :try_start_20
    invoke-direct/range {p0 .. p0}, Lcom/byazt/h/sp;->ve()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    goto :goto_24

    :catchall_13
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    const-string v3, "loopAndWrite: finally sync, e = "

    .line 97
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_21
    :goto_24
    const/4 v2, 0x0

    .line 98
    :goto_25
    monitor-enter p0

    .line 99
    :try_start_21
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/byazt/h/sp;->ve(Ljava/util/List;)V

    .line 100
    iget-object v0, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    .line 102
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 103
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 104
    iget-object v3, v1, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/byazt/h/sp;->da:Z

    iget-boolean v8, v1, Lcom/byazt/h/sp;->sl:Z

    iget-object v9, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/byazt/h/sp;->nu:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_24

    .line 105
    iget-boolean v0, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v0, :cond_23

    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    if-eqz v0, :cond_22

    goto :goto_26

    :cond_22
    const/16 v22, 0x0

    :cond_23
    :goto_26
    if-nez v22, :cond_24

    :try_start_22
    const-string v0, "loopAndWrite_finally"

    .line 106
    invoke-static {v2, v0}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/byazt/m/BaseException; {:try_start_22 .. :try_end_22} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 107
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 108
    throw v0

    :cond_24
    return-void

    :catchall_14
    move-exception v0

    .line 109
    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    throw v0

    .line 110
    :cond_25
    :try_start_24
    invoke-static {}, Lcom/byazt/x/c;->c()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 111
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_26
    const-string v2, "MultiSegmentWriter"

    const-string v9, "loopAndWrite:  BaseException e = "

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 114
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    :catchall_15
    move-exception v0

    move-object v2, v0

    goto :goto_29

    :catch_16
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v25, v9

    :goto_27
    const/4 v15, 0x0

    .line 115
    :goto_28
    :try_start_25
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 116
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    :catchall_16
    move-exception v0

    move-object v2, v0

    move-wide/from16 v23, v9

    move-wide/from16 v17, v25

    :goto_29
    if-lez v15, :cond_27

    int-to-long v9, v15

    .line 117
    :try_start_26
    invoke-interface {v3, v9, v10}, Lcom/byazt/u/a;->tt(J)Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_17

    goto :goto_2a

    :catchall_17
    nop

    .line 118
    :cond_27
    :goto_2a
    iget-boolean v0, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v0, :cond_28

    .line 119
    :try_start_27
    invoke-direct/range {p0 .. p0}, Lcom/byazt/h/sp;->ve()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_18

    goto :goto_2b

    :catchall_18
    move-exception v0

    move-object v3, v0

    const-string v0, "MultiSegmentWriter"

    const-string v9, "loopAndWrite: finally sync, e = "

    .line 120
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2c

    :cond_28
    :goto_2b
    const/4 v0, 0x0

    .line 121
    :goto_2c
    monitor-enter p0

    .line 122
    :try_start_28
    iget-object v3, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-direct {v1, v3}, Lcom/byazt/h/sp;->ve(Ljava/util/List;)V

    .line 123
    iget-object v3, v1, Lcom/byazt/h/sp;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 124
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    .line 125
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 127
    iget-object v3, v1, Lcom/byazt/h/sp;->n:Lcom/byazt/k/c;

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/byazt/h/sp;->da:Z

    iget-boolean v8, v1, Lcom/byazt/h/sp;->sl:Z

    iget-object v9, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    move/from16 v25, v7

    iget-wide v6, v1, Lcom/byazt/h/sp;->nu:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move/from16 v7, v25

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v0, :cond_2b

    .line 128
    iget-boolean v3, v1, Lcom/byazt/h/sp;->da:Z

    if-nez v3, :cond_2a

    iget-boolean v3, v1, Lcom/byazt/h/sp;->sl:Z

    if-nez v3, :cond_2a

    iget-object v3, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    if-eqz v3, :cond_29

    goto :goto_2d

    :cond_29
    const/16 v22, 0x0

    :cond_2a
    :goto_2d
    if-nez v22, :cond_2b

    :try_start_29
    const-string v3, "loopAndWrite_finally"

    .line 129
    invoke-static {v0, v3}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/byazt/m/BaseException; {:try_start_29 .. :try_end_29} :catch_17

    goto :goto_2e

    :catch_17
    move-exception v0

    .line 130
    iput-object v0, v1, Lcom/byazt/h/sp;->x:Lcom/byazt/m/BaseException;

    .line 131
    throw v0

    .line 132
    :cond_2b
    :goto_2e
    throw v2

    :catchall_19
    move-exception v0

    .line 133
    :try_start_2a
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_19

    throw v0

    :cond_2c
    :goto_2f
    return-void
.end method

.method public tt()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/h/sp;->da:Z

    .line 4
    iput-boolean v0, p0, Lcom/byazt/h/sp;->i:Z

    return-void
.end method
