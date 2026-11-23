.class public Lcom/byazt/zz/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0x2e
    }
.end annotation


# static fields
.field public static tt:Ljava/lang/String; = "ResponseHandler"


# instance fields
.field public final a:Lcom/byazt/hs/i;

.field public c:Z

.field public d:J

.field public da:Lcom/byazt/t/n;

.field public volatile eo:J

.field public final gr:J

.field public final gt:Lcom/byazt/k/c;

.field public final gu:J

.field public h:J

.field public i:Lcom/byazt/zz/gt;

.field public m:J

.field public md:J

.field public final my:Z

.field public final n:Lcom/byazt/t/tt;

.field public volatile nu:J

.field public p:J

.field public final qy:Z

.field public volatile rh:J

.field public final rl:Lcom/byazt/g/c;

.field public sl:Lcom/byazt/m/BaseException;

.field public sp:Lcom/byazt/zz/da;

.field public volatile t:Z

.field public volatile u:Z

.field public final uj:Ljava/lang/String;

.field public final ve:Lcom/byazt/t/DownloadInfo;

.field public x:Lcom/byazt/b/sl;

.field public final yp:Lcom/byazt/u/a;

.field public yv:Z

.field public z:J

.field public volatile zb:J

.field public final zm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;Lcom/byazt/t/tt;Lcom/byazt/u/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/zz/n;->c:Z

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/byazt/zz/n;->eo:J

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/byazt/zz/n;->zb:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/byazt/zz/n;->uj:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/byazt/zz/n;->sp:Lcom/byazt/zz/da;

    .line 22
    .line 23
    instance-of v3, p2, Lcom/byazt/b/uj;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    check-cast p2, Lcom/byazt/b/uj;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/byazt/b/uj;->c()Lcom/byazt/b/sl;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, p0, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/byazt/b/uj;->a()Lcom/byazt/zz/gt;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/byazt/zz/n;->i:Lcom/byazt/zz/gt;

    .line 40
    .line 41
    :cond_0
    iput-object p3, p0, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    .line 44
    .line 45
    iput-object p5, p0, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 46
    .line 47
    invoke-virtual {p4}, Lcom/byazt/t/tt;->yp()J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    iput-wide p2, p0, Lcom/byazt/zz/n;->z:J

    .line 52
    .line 53
    iput-wide p2, p0, Lcom/byazt/zz/n;->m:J

    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/byazt/t/tt;->uj()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/byazt/t/tt;->nu()J

    .line 62
    .line 63
    .line 64
    move-result-wide p2

    .line 65
    iput-wide p2, p0, Lcom/byazt/zz/n;->rh:J

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p4, v0}, Lcom/byazt/t/tt;->ve(Z)J

    .line 69
    .line 70
    .line 71
    move-result-wide p2

    .line 72
    iput-wide p2, p0, Lcom/byazt/zz/n;->rh:J

    .line 73
    .line 74
    :goto_0
    invoke-virtual {p4}, Lcom/byazt/t/tt;->m()J

    .line 75
    .line 76
    .line 77
    move-result-wide p2

    .line 78
    iput-wide p2, p0, Lcom/byazt/zz/n;->nu:J

    .line 79
    .line 80
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iput-object p2, p0, Lcom/byazt/zz/n;->rl:Lcom/byazt/g/c;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 95
    .line 96
    const-string p2, "sync_strategy"

    .line 97
    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/4 p3, 0x1

    .line 103
    if-ne p2, p3, :cond_2

    .line 104
    .line 105
    const/4 p2, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const/4 p2, 0x0

    .line 108
    :goto_1
    iput-boolean p2, p0, Lcom/byazt/zz/n;->qy:Z

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    const-string p2, "sync_interval_ms_fg"

    .line 113
    .line 114
    const/16 p4, 0x1388

    .line 115
    .line 116
    invoke-virtual {p1, p2, p4}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    int-to-long p4, p2

    .line 121
    const-string p2, "sync_interval_ms_bg"

    .line 122
    .line 123
    const/16 v1, 0x3e8

    .line 124
    .line 125
    invoke-virtual {p1, p2, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    int-to-long v1, p2

    .line 130
    const-wide/16 v3, 0x1f4

    .line 131
    .line 132
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide p4

    .line 136
    iput-wide p4, p0, Lcom/byazt/zz/n;->gu:J

    .line 137
    .line 138
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide p4

    .line 142
    iput-wide p4, p0, Lcom/byazt/zz/n;->gr:J

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    iput-wide v1, p0, Lcom/byazt/zz/n;->gu:J

    .line 146
    .line 147
    iput-wide v1, p0, Lcom/byazt/zz/n;->gr:J

    .line 148
    .line 149
    :goto_2
    const-string p2, "monitor_rw"

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ne p1, p3, :cond_4

    .line 156
    .line 157
    const/4 v0, 0x1

    .line 158
    :cond_4
    iput-boolean v0, p0, Lcom/byazt/zz/n;->zm:Z

    .line 159
    .line 160
    const/high16 p1, 0x10000

    .line 161
    .line 162
    invoke-static {p1}, Lcom/byazt/w/c;->c(I)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput-boolean p1, p0, Lcom/byazt/zz/n;->my:Z

    .line 167
    .line 168
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zz/n;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/zz/n;->u:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public static synthetic c(Lcom/byazt/zz/n;)Lcom/byazt/hs/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    return-object p0
.end method

.method private c(Ljava/io/InputStream;)Lcom/byazt/ty/tt;
    .locals 8

    .line 9
    invoke-static {}, Lcom/byazt/zz/ve;->qp()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    const-string v2, "rw_concurrent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11
    iget-object v1, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 12
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x1400000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    const-string v4, "rw_concurrent_max_buffer_count"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v1

    .line 14
    :try_start_0
    new-instance v4, Lcom/byazt/ty/c;

    invoke-direct {v4, p1, v0, v1}, Lcom/byazt/ty/c;-><init>(Ljava/io/InputStream;II)V

    .line 15
    iput-boolean v2, p0, Lcom/byazt/zz/n;->yv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v1

    .line 16
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    new-instance v1, Lcom/byazt/ty/ve;

    invoke-direct {v1, p1, v0}, Lcom/byazt/ty/ve;-><init>(Ljava/io/InputStream;I)V

    .line 18
    iput-boolean v3, p0, Lcom/byazt/zz/n;->yv:Z

    return-object v1
.end method

.method private c(Lcom/byazt/zz/da;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    return-void

    .line 27
    :cond_0
    instance-of v8, v7, Lcom/byazt/wh/n;

    if-eqz v8, :cond_1

    .line 28
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    move-result v1

    invoke-static {v1}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x0

    :cond_2
    move-object v15, v1

    .line 29
    iget-object v1, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->uj()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    iget-object v1, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->n()Lcom/byazt/t/tt;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_3
    iget-object v1, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_9

    .line 32
    iget-wide v1, v0, Lcom/byazt/zz/n;->z:J

    invoke-virtual {v5, v1, v2}, Lcom/byazt/t/tt;->tt(J)V

    if-eqz v8, :cond_4

    if-eqz v15, :cond_4

    .line 33
    invoke-virtual {v5}, Lcom/byazt/t/tt;->sl()I

    move-result v10

    invoke-virtual {v5}, Lcom/byazt/t/tt;->my()I

    move-result v11

    invoke-virtual {v5}, Lcom/byazt/t/tt;->tt()I

    move-result v12

    iget-wide v13, v0, Lcom/byazt/zz/n;->z:J

    move-object v9, v15

    invoke-interface/range {v9 .. v14}, Lcom/byazt/zz/u;->c(IIIJ)V

    move-object v11, v5

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {v5}, Lcom/byazt/t/tt;->sl()I

    move-result v2

    invoke-virtual {v5}, Lcom/byazt/t/tt;->my()I

    move-result v3

    invoke-virtual {v5}, Lcom/byazt/t/tt;->tt()I

    move-result v4

    iget-wide v9, v0, Lcom/byazt/zz/n;->z:J

    move-object/from16 v1, p1

    move-object v11, v5

    move-wide v5, v9

    invoke-interface/range {v1 .. v6}, Lcom/byazt/zz/da;->c(IIIJ)V

    .line 35
    :goto_1
    invoke-virtual {v11}, Lcom/byazt/t/tt;->x()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 36
    invoke-virtual {v11}, Lcom/byazt/t/tt;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {v11}, Lcom/byazt/t/tt;->da()J

    move-result-wide v1

    .line 38
    iget-wide v3, v0, Lcom/byazt/zz/n;->z:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    if-eqz v8, :cond_5

    if-eqz v15, :cond_5

    .line 39
    invoke-virtual {v11}, Lcom/byazt/t/tt;->sl()I

    move-result v3

    invoke-virtual {v11}, Lcom/byazt/t/tt;->tt()I

    move-result v4

    invoke-interface {v15, v3, v4, v1, v2}, Lcom/byazt/zz/u;->c(IIJ)V

    goto :goto_2

    .line 40
    :cond_5
    invoke-virtual {v11}, Lcom/byazt/t/tt;->sl()I

    move-result v3

    invoke-virtual {v11}, Lcom/byazt/t/tt;->tt()I

    move-result v4

    invoke-interface {v7, v3, v4, v1, v2}, Lcom/byazt/zz/da;->c(IIJ)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_8

    if-eqz v8, :cond_7

    if-eqz v15, :cond_7

    .line 41
    invoke-virtual {v11}, Lcom/byazt/t/tt;->sl()I

    move-result v1

    invoke-virtual {v11}, Lcom/byazt/t/tt;->tt()I

    move-result v2

    iget-wide v3, v0, Lcom/byazt/zz/n;->z:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/byazt/zz/u;->c(IIJ)V

    return-void

    .line 42
    :cond_7
    invoke-virtual {v11}, Lcom/byazt/t/tt;->sl()I

    move-result v1

    invoke-virtual {v11}, Lcom/byazt/t/tt;->tt()I

    move-result v2

    iget-wide v3, v0, Lcom/byazt/zz/n;->z:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/byazt/zz/da;->c(IIJ)V

    :cond_8
    return-void

    .line 43
    :cond_9
    iget-object v1, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->uj()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v8, :cond_a

    if-eqz v15, :cond_a

    .line 44
    iget-object v1, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->sl()I

    move-result v1

    iget-object v2, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v2}, Lcom/byazt/t/tt;->my()I

    move-result v2

    iget-wide v3, v0, Lcom/byazt/zz/n;->z:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/byazt/zz/u;->c(IIJ)V

    return-void

    .line 45
    :cond_a
    iget-object v1, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->sl()I

    move-result v1

    iget-object v2, v0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    invoke-virtual {v2}, Lcom/byazt/t/tt;->my()I

    move-result v2

    iget-wide v3, v0, Lcom/byazt/zz/n;->z:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/byazt/zz/da;->c(IIJ)V

    :cond_b
    return-void
.end method

.method private c(Z)V
    .locals 8

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/byazt/zz/n;->zb:J

    sub-long v2, v0, v2

    .line 21
    iget-boolean v4, p0, Lcom/byazt/zz/n;->qy:Z

    if-eqz v4, :cond_1

    .line 22
    iget-object p1, p0, Lcom/byazt/zz/n;->rl:Lcom/byazt/g/c;

    invoke-virtual {p1}, Lcom/byazt/g/c;->tt()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/byazt/zz/n;->gu:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/byazt/zz/n;->gr:J

    :goto_0
    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    goto :goto_1

    .line 23
    :cond_1
    iget-wide v4, p0, Lcom/byazt/zz/n;->z:J

    iget-wide v6, p0, Lcom/byazt/zz/n;->eo:J

    sub-long/2addr v4, v6

    if-nez p1, :cond_2

    .line 24
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/byazt/zz/n;->tt(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/byazt/zz/n;->x()V

    .line 26
    iput-wide v0, p0, Lcom/byazt/zz/n;->zb:J

    :cond_3
    return-void
.end method

.method private sp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/zz/n$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/zz/n$1;-><init>(Lcom/byazt/zz/n;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private tt(JJ)Z
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

.method private x()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zz/n;->zm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/byazt/t/n;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    nop

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_1
    if-eqz v4, :cond_5

    .line 24
    .line 25
    iget-object v4, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Lcom/byazt/t/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-le v4, v3, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    :cond_1
    invoke-static {}, Lcom/byazt/w/a;->tt()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Lcom/byazt/b/t;->c(Z)Lcom/byazt/zz/u;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object v2, p0, Lcom/byazt/zz/n;->i:Lcom/byazt/zz/gt;

    .line 50
    .line 51
    invoke-direct {p0, v2}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 52
    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 57
    .line 58
    invoke-interface {v3, v2}, Lcom/byazt/zz/u;->ve(Lcom/byazt/t/DownloadInfo;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/byazt/zz/n;->i:Lcom/byazt/zz/gt;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v4, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-interface {v2, v3, v4, v5}, Lcom/byazt/zz/da;->c(IJ)Lcom/byazt/t/DownloadInfo;

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    if-eqz v3, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 83
    .line 84
    invoke-interface {v3, v2}, Lcom/byazt/zz/u;->ve(Lcom/byazt/t/DownloadInfo;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/byazt/zz/n;->i:Lcom/byazt/zz/gt;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/byazt/t/tt;->sl()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    iget-wide v4, p0, Lcom/byazt/zz/n;->z:J

    .line 97
    .line 98
    invoke-interface {v2, v3, v4, v5}, Lcom/byazt/zz/da;->c(IJ)Lcom/byazt/t/DownloadInfo;

    .line 99
    .line 100
    .line 101
    :goto_2
    iget-wide v2, p0, Lcom/byazt/zz/n;->z:J

    .line 102
    .line 103
    iput-wide v2, p0, Lcom/byazt/zz/n;->eo:J

    .line 104
    .line 105
    :cond_5
    iget-boolean v2, p0, Lcom/byazt/zz/n;->zm:Z

    .line 106
    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    sub-long/2addr v2, v0

    .line 114
    iget-wide v0, p0, Lcom/byazt/zz/n;->h:J

    .line 115
    .line 116
    add-long/2addr v0, v2

    .line 117
    iput-wide v0, p0, Lcom/byazt/zz/n;->h:J

    .line 118
    .line 119
    :cond_6
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/zz/n;->z:J

    return-wide v0
.end method

.method public c(JJ)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/byazt/zz/n;->nu:J

    .line 8
    iput-wide p3, p0, Lcom/byazt/zz/n;->rh:J

    return-void
.end method

.method public c(JJJ)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/zz/n;->z:J

    .line 4
    iput-wide p1, p0, Lcom/byazt/zz/n;->m:J

    .line 5
    iput-wide p3, p0, Lcom/byazt/zz/n;->nu:J

    .line 6
    iput-wide p5, p0, Lcom/byazt/zz/n;->rh:J

    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/zz/n;->eo:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/zz/n;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/zz/n;->t:Z

    .line 4
    invoke-direct {p0}, Lcom/byazt/zz/n;->sp()V

    return-void
.end method

.method public uj()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_37

    .line 8
    .line 9
    iget-object v0, v1, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_17

    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/hs/sp;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-eqz v0, :cond_36

    .line 26
    .line 27
    iget-object v0, v1, Lcom/byazt/zz/n;->n:Lcom/byazt/t/tt;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/t/tt;->t()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    iget-boolean v15, v1, Lcom/byazt/zz/n;->zm:Z

    .line 38
    .line 39
    const/4 v14, 0x1

    .line 40
    const/4 v13, 0x0

    .line 41
    :try_start_0
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTempPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v12, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 48
    .line 49
    invoke-virtual {v12}, Lcom/byazt/t/DownloadInfo;->getTempName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    iget-object v10, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 54
    .line 55
    const-string v4, "flush_buffer_size_byte"

    .line 56
    .line 57
    const/4 v5, -0x1

    .line 58
    invoke-virtual {v10, v4, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v0, v11, v12, v4}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/byazt/t/n;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 67
    .line 68
    :try_start_1
    iget-wide v10, v1, Lcom/byazt/zz/n;->z:J

    .line 69
    .line 70
    invoke-virtual {v0, v10, v11}, Lcom/byazt/t/n;->c(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    .line 71
    .line 72
    .line 73
    :try_start_2
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 74
    .line 75
    invoke-interface {v0}, Lcom/byazt/hs/i;->c()Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_1a

    .line 80
    .line 81
    iget-object v4, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->updateRealStartDownloadTime()V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Ljava/io/InputStream;)Lcom/byazt/ty/tt;

    .line 87
    .line 88
    .line 89
    move-result-object v10
    :try_end_2
    .catch Lcom/byazt/m/BaseException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 90
    :try_start_3
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 91
    .line 92
    iget-boolean v4, v1, Lcom/byazt/zz/n;->yv:Z

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Lcom/byazt/t/DownloadInfo;->setIsRwConcurrent(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getOpenLimitSpeed()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput-boolean v0, v1, Lcom/byazt/zz/n;->c:Z

    .line 104
    .line 105
    sget-wide v11, Lcom/byazt/ev/n;->uj:J

    .line 106
    .line 107
    sget-wide v16, Lcom/byazt/ev/n;->n:J

    .line 108
    .line 109
    const-wide/16 v18, 0x3e8

    .line 110
    .line 111
    div-long v18, v18, v16

    .line 112
    .line 113
    div-long v11, v11, v18

    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v18

    .line 119
    const-wide/16 v20, 0x0

    .line 120
    .line 121
    const-wide/16 v22, 0x0

    .line 122
    .line 123
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->a()Z

    .line 124
    .line 125
    .line 126
    move-result v0
    :try_end_3
    .catch Lcom/byazt/m/BaseException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 130
    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 134
    .line 135
    .line 136
    :cond_1
    if-eqz v10, :cond_2

    .line 137
    .line 138
    invoke-interface {v10}, Lcom/byazt/ty/tt;->tt()V

    .line 139
    .line 140
    .line 141
    :cond_2
    :try_start_4
    iget-boolean v0, v1, Lcom/byazt/zz/n;->my:Z

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    iget-object v2, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 146
    .line 147
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    :try_start_5
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 149
    .line 150
    if-nez v0, :cond_3

    .line 151
    .line 152
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 158
    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V

    .line 162
    .line 163
    .line 164
    :cond_3
    monitor-exit v2

    .line 165
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    :try_start_6
    throw v0

    .line 169
    :cond_4
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 175
    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    .line 180
    .line 181
    :cond_5
    :goto_1
    new-array v0, v14, [Ljava/io/Closeable;

    .line 182
    .line 183
    iget-object v2, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 184
    .line 185
    aput-object v2, v0, v13

    .line 186
    .line 187
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    sub-long/2addr v2, v8

    .line 195
    iput-wide v2, v1, Lcom/byazt/zz/n;->d:J

    .line 196
    .line 197
    iget-object v10, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 198
    .line 199
    iget-object v11, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 200
    .line 201
    iget-object v12, v1, Lcom/byazt/zz/n;->uj:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v13, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 204
    .line 205
    iget-boolean v14, v1, Lcom/byazt/zz/n;->t:Z

    .line 206
    .line 207
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 208
    .line 209
    move v4, v15

    .line 210
    move v15, v0

    .line 211
    :goto_2
    iget-object v0, v1, Lcom/byazt/zz/n;->sl:Lcom/byazt/m/BaseException;

    .line 212
    .line 213
    move-object/from16 v16, v0

    .line 214
    .line 215
    iget-wide v2, v1, Lcom/byazt/zz/n;->z:J

    .line 216
    .line 217
    iget-wide v5, v1, Lcom/byazt/zz/n;->m:J

    .line 218
    .line 219
    sub-long v17, v2, v5

    .line 220
    .line 221
    iget-wide v2, v1, Lcom/byazt/zz/n;->d:J

    .line 222
    .line 223
    move-wide/from16 v19, v2

    .line 224
    .line 225
    iget-wide v2, v1, Lcom/byazt/zz/n;->p:J

    .line 226
    .line 227
    move-wide/from16 v22, v2

    .line 228
    .line 229
    iget-wide v2, v1, Lcom/byazt/zz/n;->md:J

    .line 230
    .line 231
    move-wide/from16 v24, v2

    .line 232
    .line 233
    iget-wide v2, v1, Lcom/byazt/zz/n;->h:J

    .line 234
    .line 235
    move-wide/from16 v26, v2

    .line 236
    .line 237
    const/16 v28, 0x0

    .line 238
    .line 239
    move/from16 v21, v4

    .line 240
    .line 241
    invoke-static/range {v10 .. v28}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    new-array v2, v14, [Ljava/io/Closeable;

    .line 247
    .line 248
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 249
    .line 250
    aput-object v3, v2, v13

    .line 251
    .line 252
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 253
    .line 254
    .line 255
    throw v0

    .line 256
    :cond_6
    move v4, v15

    .line 257
    if-eqz v4, :cond_7

    .line 258
    .line 259
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 260
    .line 261
    .line 262
    move-result-wide v20
    :try_end_7
    .catch Lcom/byazt/m/BaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 263
    goto :goto_3

    .line 264
    :catchall_2
    move-exception v0

    .line 265
    move-wide/from16 v29, v6

    .line 266
    .line 267
    move-wide/from16 v25, v8

    .line 268
    .line 269
    goto/16 :goto_d

    .line 270
    .line 271
    :catch_0
    move-exception v0

    .line 272
    move-wide/from16 v25, v8

    .line 273
    .line 274
    goto/16 :goto_14

    .line 275
    .line 276
    :cond_7
    :goto_3
    :try_start_8
    invoke-interface {v10}, Lcom/byazt/ty/tt;->c()Lcom/byazt/h/c;

    .line 277
    .line 278
    .line 279
    move-result-object v0
    :try_end_8
    .catch Lcom/byazt/m/BaseException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 280
    if-eqz v4, :cond_8

    .line 281
    .line 282
    :try_start_9
    iget-wide v14, v1, Lcom/byazt/zz/n;->p:J

    .line 283
    .line 284
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 285
    .line 286
    .line 287
    move-result-wide v25

    .line 288
    sub-long v25, v25, v20

    .line 289
    .line 290
    add-long v14, v14, v25

    .line 291
    .line 292
    iput-wide v14, v1, Lcom/byazt/zz/n;->p:J
    :try_end_9
    .catch Lcom/byazt/m/BaseException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 293
    .line 294
    :cond_8
    :try_start_a
    iget v14, v0, Lcom/byazt/h/c;->ve:I

    .line 295
    .line 296
    if-eq v14, v5, :cond_14

    .line 297
    .line 298
    iget-object v15, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 299
    .line 300
    invoke-virtual {v15}, Lcom/byazt/t/DownloadInfo;->isIgnoreDataVerify()Z

    .line 301
    .line 302
    .line 303
    move-result v15
    :try_end_a
    .catch Lcom/byazt/m/BaseException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 304
    if-nez v15, :cond_9

    .line 305
    .line 306
    move-wide/from16 v29, v6

    .line 307
    .line 308
    :try_start_b
    iget-wide v5, v1, Lcom/byazt/zz/n;->rh:J
    :try_end_b
    .catch Lcom/byazt/m/BaseException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 309
    .line 310
    move-wide/from16 v25, v8

    .line 311
    .line 312
    :try_start_c
    iget-wide v7, v1, Lcom/byazt/zz/n;->z:J
    :try_end_c
    .catch Lcom/byazt/m/BaseException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 313
    .line 314
    move-object v15, v10

    .line 315
    :try_start_d
    iget-wide v9, v1, Lcom/byazt/zz/n;->m:J

    .line 316
    .line 317
    sub-long/2addr v7, v9

    .line 318
    cmp-long v9, v5, v7

    .line 319
    .line 320
    if-lez v9, :cond_a

    .line 321
    .line 322
    iget-wide v5, v1, Lcom/byazt/zz/n;->rh:J

    .line 323
    .line 324
    iget-wide v7, v1, Lcom/byazt/zz/n;->z:J

    .line 325
    .line 326
    iget-wide v9, v1, Lcom/byazt/zz/n;->m:J

    .line 327
    .line 328
    sub-long/2addr v7, v9

    .line 329
    int-to-long v9, v14

    .line 330
    add-long/2addr v7, v9

    .line 331
    cmp-long v9, v5, v7

    .line 332
    .line 333
    if-gez v9, :cond_a

    .line 334
    .line 335
    iget-wide v5, v1, Lcom/byazt/zz/n;->rh:J

    .line 336
    .line 337
    iget-wide v7, v1, Lcom/byazt/zz/n;->z:J

    .line 338
    .line 339
    iget-wide v9, v1, Lcom/byazt/zz/n;->m:J

    .line 340
    .line 341
    sub-long/2addr v7, v9

    .line 342
    sub-long/2addr v5, v7

    .line 343
    long-to-int v14, v5

    .line 344
    goto :goto_6

    .line 345
    :catchall_3
    move-exception v0

    .line 346
    goto :goto_4

    .line 347
    :catch_1
    move-exception v0

    .line 348
    goto :goto_5

    .line 349
    :catchall_4
    move-exception v0

    .line 350
    move-wide/from16 v25, v8

    .line 351
    .line 352
    :goto_4
    move-object v15, v10

    .line 353
    goto/16 :goto_d

    .line 354
    .line 355
    :catch_2
    move-exception v0

    .line 356
    move-wide/from16 v25, v8

    .line 357
    .line 358
    :goto_5
    move-object v15, v10

    .line 359
    goto/16 :goto_14

    .line 360
    .line 361
    :cond_9
    move-wide/from16 v29, v6

    .line 362
    .line 363
    move-wide/from16 v25, v8

    .line 364
    .line 365
    move-object v15, v10

    .line 366
    :cond_a
    :goto_6
    if-eqz v4, :cond_b

    .line 367
    .line 368
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 369
    .line 370
    .line 371
    move-result-wide v5
    :try_end_d
    .catch Lcom/byazt/m/BaseException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 372
    move-wide/from16 v20, v5

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :catchall_5
    move-exception v0

    .line 376
    move-object v10, v15

    .line 377
    goto/16 :goto_d

    .line 378
    .line 379
    :catch_3
    move-exception v0

    .line 380
    move-object v10, v15

    .line 381
    goto/16 :goto_14

    .line 382
    .line 383
    :cond_b
    :goto_7
    :try_start_e
    iget-object v5, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 384
    .line 385
    iget-object v6, v0, Lcom/byazt/h/c;->c:[B

    .line 386
    .line 387
    invoke-virtual {v5, v6, v13, v14}, Lcom/byazt/t/n;->c([BII)V
    :try_end_e
    .catch Lcom/byazt/m/BaseException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 388
    .line 389
    .line 390
    if-eqz v4, :cond_c

    .line 391
    .line 392
    :try_start_f
    iget-wide v5, v1, Lcom/byazt/zz/n;->md:J

    .line 393
    .line 394
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 395
    .line 396
    .line 397
    move-result-wide v7

    .line 398
    sub-long v7, v7, v20

    .line 399
    .line 400
    add-long/2addr v5, v7

    .line 401
    iput-wide v5, v1, Lcom/byazt/zz/n;->md:J
    :try_end_f
    .catch Lcom/byazt/m/BaseException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 402
    .line 403
    :cond_c
    move-object v5, v15

    .line 404
    :try_start_10
    invoke-interface {v5, v0}, Lcom/byazt/ty/tt;->c(Lcom/byazt/h/c;)V

    .line 405
    .line 406
    .line 407
    iget-wide v6, v1, Lcom/byazt/zz/n;->z:J

    .line 408
    .line 409
    int-to-long v8, v14

    .line 410
    add-long/2addr v6, v8

    .line 411
    iput-wide v6, v1, Lcom/byazt/zz/n;->z:J

    .line 412
    .line 413
    add-long v22, v22, v8

    .line 414
    .line 415
    iget-object v6, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 416
    .line 417
    monitor-enter v6
    :try_end_10
    .catch Lcom/byazt/m/BaseException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 418
    :try_start_11
    iget-boolean v0, v1, Lcom/byazt/zz/n;->my:Z

    .line 419
    .line 420
    if-eqz v0, :cond_d

    .line 421
    .line 422
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 423
    .line 424
    if-nez v0, :cond_e

    .line 425
    .line 426
    :cond_d
    iget-object v0, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 427
    .line 428
    invoke-interface {v0, v8, v9}, Lcom/byazt/u/a;->tt(J)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    iget-object v7, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 433
    .line 434
    invoke-direct {v1, v7}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 435
    .line 436
    .line 437
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Z)V

    .line 438
    .line 439
    .line 440
    :cond_e
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 441
    :try_start_12
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isDownloadWithWifiValid()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_13

    .line 448
    .line 449
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isPauseReserveWithWifiValid()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_12

    .line 456
    .line 457
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 458
    .line 459
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isIgnoreDataVerify()Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-nez v0, :cond_f

    .line 464
    .line 465
    iget-wide v6, v1, Lcom/byazt/zz/n;->rh:J

    .line 466
    .line 467
    const-wide/16 v8, 0x0

    .line 468
    .line 469
    cmp-long v0, v6, v8

    .line 470
    .line 471
    if-ltz v0, :cond_f

    .line 472
    .line 473
    iget-wide v6, v1, Lcom/byazt/zz/n;->rh:J

    .line 474
    .line 475
    iget-wide v8, v1, Lcom/byazt/zz/n;->z:J

    .line 476
    .line 477
    iget-wide v14, v1, Lcom/byazt/zz/n;->m:J

    .line 478
    .line 479
    sub-long/2addr v8, v14

    .line 480
    cmp-long v0, v6, v8

    .line 481
    .line 482
    if-lez v0, :cond_15

    .line 483
    .line 484
    :cond_f
    iget-boolean v0, v1, Lcom/byazt/zz/n;->c:Z

    .line 485
    .line 486
    if-eqz v0, :cond_11

    .line 487
    .line 488
    cmp-long v0, v22, v11

    .line 489
    .line 490
    if-lez v0, :cond_11

    .line 491
    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    .line 494
    .line 495
    move-result-wide v6
    :try_end_12
    .catch Lcom/byazt/m/BaseException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 496
    sub-long v6, v6, v18

    .line 497
    .line 498
    cmp-long v0, v6, v16

    .line 499
    .line 500
    if-gez v0, :cond_10

    .line 501
    .line 502
    sub-long v6, v16, v6

    .line 503
    .line 504
    :try_start_13
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lcom/byazt/m/BaseException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 505
    .line 506
    .line 507
    goto :goto_8

    .line 508
    :catch_4
    move-exception v0

    .line 509
    move-object v6, v0

    .line 510
    :try_start_14
    invoke-static {v6}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    :cond_10
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 514
    .line 515
    .line 516
    move-result-wide v6

    .line 517
    move-wide/from16 v18, v6

    .line 518
    .line 519
    const-wide/16 v22, 0x0

    .line 520
    .line 521
    :cond_11
    move v15, v4

    .line 522
    move-object v10, v5

    .line 523
    move-wide/from16 v8, v25

    .line 524
    .line 525
    move-wide/from16 v6, v29

    .line 526
    .line 527
    const/4 v5, -0x1

    .line 528
    const/4 v14, 0x1

    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_12
    new-instance v0, Lcom/byazt/m/n;

    .line 532
    .line 533
    invoke-direct {v0}, Lcom/byazt/m/n;-><init>()V

    .line 534
    .line 535
    .line 536
    throw v0

    .line 537
    :cond_13
    new-instance v0, Lcom/byazt/m/ve;

    .line 538
    .line 539
    invoke-direct {v0}, Lcom/byazt/m/ve;-><init>()V

    .line 540
    .line 541
    .line 542
    throw v0
    :try_end_14
    .catch Lcom/byazt/m/BaseException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 543
    :catchall_6
    move-exception v0

    .line 544
    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 545
    :try_start_16
    throw v0
    :try_end_16
    .catch Lcom/byazt/m/BaseException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 546
    :catchall_7
    move-exception v0

    .line 547
    goto :goto_9

    .line 548
    :catch_5
    move-exception v0

    .line 549
    goto :goto_a

    .line 550
    :catchall_8
    move-exception v0

    .line 551
    move-object v5, v15

    .line 552
    :goto_9
    move-object v10, v5

    .line 553
    goto/16 :goto_d

    .line 554
    .line 555
    :catch_6
    move-exception v0

    .line 556
    move-object v5, v15

    .line 557
    :goto_a
    move-object v10, v5

    .line 558
    goto/16 :goto_14

    .line 559
    .line 560
    :cond_14
    move-wide/from16 v29, v6

    .line 561
    .line 562
    move-wide/from16 v25, v8

    .line 563
    .line 564
    move-object v5, v10

    .line 565
    :cond_15
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 566
    .line 567
    if-eqz v0, :cond_16

    .line 568
    .line 569
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 570
    .line 571
    .line 572
    :cond_16
    invoke-interface {v5}, Lcom/byazt/ty/tt;->tt()V

    .line 573
    .line 574
    .line 575
    :try_start_17
    iget-boolean v0, v1, Lcom/byazt/zz/n;->my:Z

    .line 576
    .line 577
    if-eqz v0, :cond_18

    .line 578
    .line 579
    iget-object v5, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 580
    .line 581
    monitor-enter v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 582
    :try_start_18
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 583
    .line 584
    if-nez v0, :cond_17

    .line 585
    .line 586
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 587
    .line 588
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 589
    .line 590
    .line 591
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 592
    .line 593
    if-eqz v0, :cond_17

    .line 594
    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V

    .line 596
    .line 597
    .line 598
    :cond_17
    monitor-exit v5

    .line 599
    goto :goto_b

    .line 600
    :catchall_9
    move-exception v0

    .line 601
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 602
    :try_start_19
    throw v0

    .line 603
    :cond_18
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 604
    .line 605
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 606
    .line 607
    .line 608
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 609
    .line 610
    if-eqz v0, :cond_19

    .line 611
    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 613
    .line 614
    .line 615
    :cond_19
    :goto_b
    const/4 v5, 0x1

    .line 616
    new-array v0, v5, [Ljava/io/Closeable;

    .line 617
    .line 618
    iget-object v6, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 619
    .line 620
    aput-object v6, v0, v13

    .line 621
    .line 622
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 623
    .line 624
    .line 625
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 626
    .line 627
    .line 628
    move-result-wide v6

    .line 629
    sub-long v6, v6, v25

    .line 630
    .line 631
    iput-wide v6, v1, Lcom/byazt/zz/n;->d:J

    .line 632
    .line 633
    iget-object v10, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 634
    .line 635
    iget-object v11, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 636
    .line 637
    iget-object v12, v1, Lcom/byazt/zz/n;->uj:Ljava/lang/String;

    .line 638
    .line 639
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 640
    .line 641
    const/4 v6, 0x0

    .line 642
    move-object v13, v0

    .line 643
    iget-boolean v14, v1, Lcom/byazt/zz/n;->t:Z

    .line 644
    .line 645
    const/4 v7, 0x1

    .line 646
    iget-boolean v15, v1, Lcom/byazt/zz/n;->u:Z

    .line 647
    .line 648
    iget-object v0, v1, Lcom/byazt/zz/n;->sl:Lcom/byazt/m/BaseException;

    .line 649
    .line 650
    move-object/from16 v16, v0

    .line 651
    .line 652
    iget-wide v8, v1, Lcom/byazt/zz/n;->z:J

    .line 653
    .line 654
    iget-wide v6, v1, Lcom/byazt/zz/n;->m:J

    .line 655
    .line 656
    sub-long v17, v8, v6

    .line 657
    .line 658
    goto/16 :goto_11

    .line 659
    .line 660
    :catchall_a
    move-exception v0

    .line 661
    const/4 v2, 0x1

    .line 662
    new-array v2, v2, [Ljava/io/Closeable;

    .line 663
    .line 664
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 665
    .line 666
    const/4 v4, 0x0

    .line 667
    aput-object v3, v2, v4

    .line 668
    .line 669
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 670
    .line 671
    .line 672
    throw v0

    .line 673
    :catchall_b
    move-exception v0

    .line 674
    move-wide/from16 v29, v6

    .line 675
    .line 676
    move-wide/from16 v25, v8

    .line 677
    .line 678
    move-object v5, v10

    .line 679
    goto :goto_d

    .line 680
    :catch_7
    move-exception v0

    .line 681
    move-wide/from16 v25, v8

    .line 682
    .line 683
    move-object v5, v10

    .line 684
    goto/16 :goto_14

    .line 685
    .line 686
    :catchall_c
    move-exception v0

    .line 687
    move-wide/from16 v29, v6

    .line 688
    .line 689
    move-wide/from16 v25, v8

    .line 690
    .line 691
    move-object v5, v10

    .line 692
    move v4, v15

    .line 693
    goto :goto_d

    .line 694
    :catch_8
    move-exception v0

    .line 695
    move-wide/from16 v25, v8

    .line 696
    .line 697
    move-object v5, v10

    .line 698
    move v4, v15

    .line 699
    goto/16 :goto_14

    .line 700
    .line 701
    :cond_1a
    move-wide/from16 v29, v6

    .line 702
    .line 703
    move-wide/from16 v25, v8

    .line 704
    .line 705
    move v4, v15

    .line 706
    :try_start_1a
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 707
    .line 708
    new-instance v5, Ljava/io/IOException;

    .line 709
    .line 710
    const-string v6, "inputStream is null"

    .line 711
    .line 712
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    const/16 v6, 0x412

    .line 716
    .line 717
    invoke-direct {v0, v6, v5}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    .line 718
    .line 719
    .line 720
    throw v0

    .line 721
    :catch_9
    move-exception v0

    .line 722
    move-wide/from16 v29, v6

    .line 723
    .line 724
    move-wide/from16 v25, v8

    .line 725
    .line 726
    move v4, v15

    .line 727
    new-instance v5, Lcom/byazt/m/BaseException;

    .line 728
    .line 729
    const/16 v6, 0x41e

    .line 730
    .line 731
    invoke-direct {v5, v6, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    .line 732
    .line 733
    .line 734
    throw v5
    :try_end_1a
    .catch Lcom/byazt/m/BaseException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 735
    :catchall_d
    move-exception v0

    .line 736
    goto :goto_c

    .line 737
    :catch_a
    move-exception v0

    .line 738
    goto/16 :goto_13

    .line 739
    .line 740
    :catchall_e
    move-exception v0

    .line 741
    move-wide/from16 v29, v6

    .line 742
    .line 743
    move-wide/from16 v25, v8

    .line 744
    .line 745
    move v4, v15

    .line 746
    :goto_c
    const/4 v10, 0x0

    .line 747
    :goto_d
    :try_start_1b
    sget-object v5, Lcom/byazt/zz/n;->tt:Ljava/lang/String;

    .line 748
    .line 749
    const-string v6, "handleResponse: e = "

    .line 750
    .line 751
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v7

    .line 755
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    invoke-static {v5, v6}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->a()Z

    .line 763
    .line 764
    .line 765
    move-result v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    .line 766
    if-eqz v5, :cond_20

    .line 767
    .line 768
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 769
    .line 770
    if-eqz v0, :cond_1b

    .line 771
    .line 772
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 773
    .line 774
    .line 775
    :cond_1b
    if-eqz v10, :cond_1c

    .line 776
    .line 777
    invoke-interface {v10}, Lcom/byazt/ty/tt;->tt()V

    .line 778
    .line 779
    .line 780
    :cond_1c
    :try_start_1c
    iget-boolean v0, v1, Lcom/byazt/zz/n;->my:Z

    .line 781
    .line 782
    if-eqz v0, :cond_1e

    .line 783
    .line 784
    iget-object v2, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 785
    .line 786
    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 787
    :try_start_1d
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 788
    .line 789
    if-nez v0, :cond_1d

    .line 790
    .line 791
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 792
    .line 793
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 794
    .line 795
    .line 796
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 797
    .line 798
    if-eqz v0, :cond_1d

    .line 799
    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V

    .line 801
    .line 802
    .line 803
    :cond_1d
    monitor-exit v2

    .line 804
    goto :goto_e

    .line 805
    :catchall_f
    move-exception v0

    .line 806
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 807
    :try_start_1e
    throw v0

    .line 808
    :cond_1e
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 809
    .line 810
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 811
    .line 812
    .line 813
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 814
    .line 815
    if-eqz v0, :cond_1f

    .line 816
    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 818
    .line 819
    .line 820
    :cond_1f
    :goto_e
    const/4 v2, 0x1

    .line 821
    new-array v0, v2, [Ljava/io/Closeable;

    .line 822
    .line 823
    iget-object v2, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 824
    .line 825
    const/4 v3, 0x0

    .line 826
    aput-object v2, v0, v3

    .line 827
    .line 828
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 829
    .line 830
    .line 831
    :goto_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 832
    .line 833
    .line 834
    move-result-wide v2

    .line 835
    sub-long v2, v2, v25

    .line 836
    .line 837
    iput-wide v2, v1, Lcom/byazt/zz/n;->d:J

    .line 838
    .line 839
    iget-object v10, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 840
    .line 841
    iget-object v11, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 842
    .line 843
    iget-object v12, v1, Lcom/byazt/zz/n;->uj:Ljava/lang/String;

    .line 844
    .line 845
    iget-object v13, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 846
    .line 847
    iget-boolean v14, v1, Lcom/byazt/zz/n;->t:Z

    .line 848
    .line 849
    iget-boolean v15, v1, Lcom/byazt/zz/n;->u:Z

    .line 850
    .line 851
    goto/16 :goto_2

    .line 852
    .line 853
    :catchall_10
    move-exception v0

    .line 854
    const/4 v2, 0x1

    .line 855
    new-array v2, v2, [Ljava/io/Closeable;

    .line 856
    .line 857
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 858
    .line 859
    const/4 v4, 0x0

    .line 860
    aput-object v3, v2, v4

    .line 861
    .line 862
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 863
    .line 864
    .line 865
    throw v0

    .line 866
    :cond_20
    :try_start_1f
    invoke-static {}, Lcom/byazt/x/c;->c()Z

    .line 867
    .line 868
    .line 869
    move-result v5

    .line 870
    if-eqz v5, :cond_21

    .line 871
    .line 872
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    .line 873
    .line 874
    .line 875
    :cond_21
    :try_start_20
    const-string v5, "ResponseHandler"

    .line 876
    .line 877
    invoke-static {v0, v5}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_20
    .catch Lcom/byazt/m/BaseException; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    .line 878
    .line 879
    .line 880
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 881
    .line 882
    if-eqz v0, :cond_22

    .line 883
    .line 884
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 885
    .line 886
    .line 887
    :cond_22
    if-eqz v10, :cond_23

    .line 888
    .line 889
    invoke-interface {v10}, Lcom/byazt/ty/tt;->tt()V

    .line 890
    .line 891
    .line 892
    :cond_23
    :try_start_21
    iget-boolean v0, v1, Lcom/byazt/zz/n;->my:Z

    .line 893
    .line 894
    if-eqz v0, :cond_25

    .line 895
    .line 896
    iget-object v5, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 897
    .line 898
    monitor-enter v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 899
    :try_start_22
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 900
    .line 901
    if-nez v0, :cond_24

    .line 902
    .line 903
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 904
    .line 905
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 906
    .line 907
    .line 908
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 909
    .line 910
    if-eqz v0, :cond_24

    .line 911
    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V

    .line 913
    .line 914
    .line 915
    :cond_24
    monitor-exit v5

    .line 916
    goto :goto_10

    .line 917
    :catchall_11
    move-exception v0

    .line 918
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 919
    :try_start_23
    throw v0

    .line 920
    :cond_25
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 921
    .line 922
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 923
    .line 924
    .line 925
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 926
    .line 927
    if-eqz v0, :cond_26

    .line 928
    .line 929
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    .line 930
    .line 931
    .line 932
    :cond_26
    :goto_10
    const/4 v5, 0x1

    .line 933
    new-array v0, v5, [Ljava/io/Closeable;

    .line 934
    .line 935
    iget-object v5, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 936
    .line 937
    const/4 v6, 0x0

    .line 938
    aput-object v5, v0, v6

    .line 939
    .line 940
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 941
    .line 942
    .line 943
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 944
    .line 945
    .line 946
    move-result-wide v5

    .line 947
    sub-long v5, v5, v25

    .line 948
    .line 949
    iput-wide v5, v1, Lcom/byazt/zz/n;->d:J

    .line 950
    .line 951
    iget-object v10, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 952
    .line 953
    iget-object v11, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 954
    .line 955
    iget-object v12, v1, Lcom/byazt/zz/n;->uj:Ljava/lang/String;

    .line 956
    .line 957
    iget-object v13, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 958
    .line 959
    iget-boolean v14, v1, Lcom/byazt/zz/n;->t:Z

    .line 960
    .line 961
    iget-boolean v15, v1, Lcom/byazt/zz/n;->u:Z

    .line 962
    .line 963
    iget-object v0, v1, Lcom/byazt/zz/n;->sl:Lcom/byazt/m/BaseException;

    .line 964
    .line 965
    move-object/from16 v16, v0

    .line 966
    .line 967
    iget-wide v5, v1, Lcom/byazt/zz/n;->z:J

    .line 968
    .line 969
    iget-wide v7, v1, Lcom/byazt/zz/n;->m:J

    .line 970
    .line 971
    sub-long v17, v5, v7

    .line 972
    .line 973
    :goto_11
    iget-wide v5, v1, Lcom/byazt/zz/n;->d:J

    .line 974
    .line 975
    move-wide/from16 v19, v5

    .line 976
    .line 977
    iget-wide v5, v1, Lcom/byazt/zz/n;->p:J

    .line 978
    .line 979
    move-wide/from16 v22, v5

    .line 980
    .line 981
    iget-wide v5, v1, Lcom/byazt/zz/n;->md:J

    .line 982
    .line 983
    move-wide/from16 v24, v5

    .line 984
    .line 985
    iget-wide v5, v1, Lcom/byazt/zz/n;->h:J

    .line 986
    .line 987
    move-wide/from16 v26, v5

    .line 988
    .line 989
    const/16 v28, 0x0

    .line 990
    .line 991
    move/from16 v21, v4

    .line 992
    .line 993
    invoke-static/range {v10 .. v28}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 994
    .line 995
    .line 996
    iget-object v0, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 997
    .line 998
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isIgnoreDataVerify()Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    if-eqz v0, :cond_27

    .line 1003
    .line 1004
    return-void

    .line 1005
    :cond_27
    iget-wide v4, v1, Lcom/byazt/zz/n;->z:J

    .line 1006
    .line 1007
    iget-wide v6, v1, Lcom/byazt/zz/n;->m:J

    .line 1008
    .line 1009
    sub-long/2addr v4, v6

    .line 1010
    const-wide/16 v6, 0x0

    .line 1011
    .line 1012
    cmp-long v0, v4, v6

    .line 1013
    .line 1014
    if-ltz v0, :cond_29

    .line 1015
    .line 1016
    iget-wide v8, v1, Lcom/byazt/zz/n;->rh:J

    .line 1017
    .line 1018
    cmp-long v0, v8, v6

    .line 1019
    .line 1020
    if-ltz v0, :cond_29

    .line 1021
    .line 1022
    iget-wide v6, v1, Lcom/byazt/zz/n;->rh:J

    .line 1023
    .line 1024
    cmp-long v0, v6, v4

    .line 1025
    .line 1026
    if-nez v0, :cond_28

    .line 1027
    .line 1028
    goto :goto_12

    .line 1029
    :cond_28
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 1030
    .line 1031
    const-string v6, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    .line 1032
    .line 1033
    const/4 v7, 0x7

    .line 1034
    new-array v7, v7, [Ljava/lang/Object;

    .line 1035
    .line 1036
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    const/4 v5, 0x0

    .line 1041
    aput-object v4, v7, v5

    .line 1042
    .line 1043
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    const/4 v3, 0x1

    .line 1048
    aput-object v2, v7, v3

    .line 1049
    .line 1050
    iget-wide v2, v1, Lcom/byazt/zz/n;->rh:J

    .line 1051
    .line 1052
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    const/4 v3, 0x2

    .line 1057
    aput-object v2, v7, v3

    .line 1058
    .line 1059
    const/4 v2, 0x3

    .line 1060
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v3

    .line 1064
    aput-object v3, v7, v2

    .line 1065
    .line 1066
    iget-wide v2, v1, Lcom/byazt/zz/n;->nu:J

    .line 1067
    .line 1068
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    const/4 v3, 0x4

    .line 1073
    aput-object v2, v7, v3

    .line 1074
    .line 1075
    iget-wide v2, v1, Lcom/byazt/zz/n;->z:J

    .line 1076
    .line 1077
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    const/4 v3, 0x5

    .line 1082
    aput-object v2, v7, v3

    .line 1083
    .line 1084
    iget-wide v2, v1, Lcom/byazt/zz/n;->m:J

    .line 1085
    .line 1086
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    const/4 v3, 0x6

    .line 1091
    aput-object v2, v7, v3

    .line 1092
    .line 1093
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v2

    .line 1097
    const/16 v3, 0x41b

    .line 1098
    .line 1099
    invoke-direct {v0, v3, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    throw v0

    .line 1103
    :cond_29
    :goto_12
    return-void

    .line 1104
    :catchall_12
    move-exception v0

    .line 1105
    const/4 v2, 0x1

    .line 1106
    new-array v2, v2, [Ljava/io/Closeable;

    .line 1107
    .line 1108
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1109
    .line 1110
    const/4 v4, 0x0

    .line 1111
    aput-object v3, v2, v4

    .line 1112
    .line 1113
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 1114
    .line 1115
    .line 1116
    throw v0

    .line 1117
    :catch_b
    move-exception v0

    .line 1118
    :try_start_24
    iput-object v0, v1, Lcom/byazt/zz/n;->sl:Lcom/byazt/m/BaseException;

    .line 1119
    .line 1120
    throw v0

    .line 1121
    :catch_c
    move-exception v0

    .line 1122
    move-wide/from16 v25, v8

    .line 1123
    .line 1124
    move v4, v15

    .line 1125
    :goto_13
    const/4 v10, 0x0

    .line 1126
    :goto_14
    sget-object v2, Lcom/byazt/zz/n;->tt:Ljava/lang/String;

    .line 1127
    .line 1128
    const-string v3, "handleResponse: BaseException e = "

    .line 1129
    .line 1130
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v5

    .line 1134
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v3

    .line 1138
    invoke-static {v2, v3}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    iget-object v2, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 1142
    .line 1143
    const-string v3, "ignore_base_ex_on_stop_status"

    .line 1144
    .line 1145
    invoke-virtual {v2, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v2

    .line 1149
    if-eqz v2, :cond_2f

    .line 1150
    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->a()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    .line 1155
    if-eqz v2, :cond_2f

    .line 1156
    .line 1157
    iget-object v0, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 1158
    .line 1159
    if-eqz v0, :cond_2a

    .line 1160
    .line 1161
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 1162
    .line 1163
    .line 1164
    :cond_2a
    if-eqz v10, :cond_2b

    .line 1165
    .line 1166
    invoke-interface {v10}, Lcom/byazt/ty/tt;->tt()V

    .line 1167
    .line 1168
    .line 1169
    :cond_2b
    :try_start_25
    iget-boolean v0, v1, Lcom/byazt/zz/n;->my:Z

    .line 1170
    .line 1171
    if-eqz v0, :cond_2d

    .line 1172
    .line 1173
    iget-object v2, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 1174
    .line 1175
    monitor-enter v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    .line 1176
    :try_start_26
    iget-boolean v0, v1, Lcom/byazt/zz/n;->u:Z

    .line 1177
    .line 1178
    if-nez v0, :cond_2c

    .line 1179
    .line 1180
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 1181
    .line 1182
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1186
    .line 1187
    if-eqz v0, :cond_2c

    .line 1188
    .line 1189
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V

    .line 1190
    .line 1191
    .line 1192
    :cond_2c
    monitor-exit v2

    .line 1193
    goto :goto_15

    .line 1194
    :catchall_13
    move-exception v0

    .line 1195
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    .line 1196
    :try_start_27
    throw v0

    .line 1197
    :cond_2d
    iget-object v0, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 1198
    .line 1199
    invoke-direct {v1, v0}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 1200
    .line 1201
    .line 1202
    iget-object v0, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1203
    .line 1204
    if-eqz v0, :cond_2e

    .line 1205
    .line 1206
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    .line 1207
    .line 1208
    .line 1209
    :cond_2e
    :goto_15
    const/4 v2, 0x1

    .line 1210
    new-array v0, v2, [Ljava/io/Closeable;

    .line 1211
    .line 1212
    iget-object v2, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1213
    .line 1214
    const/4 v3, 0x0

    .line 1215
    aput-object v2, v0, v3

    .line 1216
    .line 1217
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 1218
    .line 1219
    .line 1220
    goto/16 :goto_f

    .line 1221
    .line 1222
    :catchall_14
    move-exception v0

    .line 1223
    const/4 v2, 0x1

    .line 1224
    new-array v2, v2, [Ljava/io/Closeable;

    .line 1225
    .line 1226
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1227
    .line 1228
    const/4 v4, 0x0

    .line 1229
    aput-object v3, v2, v4

    .line 1230
    .line 1231
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 1232
    .line 1233
    .line 1234
    throw v0

    .line 1235
    :cond_2f
    :try_start_28
    invoke-static {}, Lcom/byazt/x/c;->c()Z

    .line 1236
    .line 1237
    .line 1238
    move-result v2

    .line 1239
    if-eqz v2, :cond_30

    .line 1240
    .line 1241
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 1242
    .line 1243
    .line 1244
    :cond_30
    iput-object v0, v1, Lcom/byazt/zz/n;->sl:Lcom/byazt/m/BaseException;

    .line 1245
    .line 1246
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    .line 1247
    :catchall_15
    move-exception v0

    .line 1248
    iget-object v2, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 1249
    .line 1250
    if-eqz v2, :cond_31

    .line 1251
    .line 1252
    invoke-interface {v2}, Lcom/byazt/hs/i;->uj()V

    .line 1253
    .line 1254
    .line 1255
    :cond_31
    if-eqz v10, :cond_32

    .line 1256
    .line 1257
    invoke-interface {v10}, Lcom/byazt/ty/tt;->tt()V

    .line 1258
    .line 1259
    .line 1260
    :cond_32
    :try_start_29
    iget-boolean v2, v1, Lcom/byazt/zz/n;->my:Z

    .line 1261
    .line 1262
    if-eqz v2, :cond_34

    .line 1263
    .line 1264
    iget-object v2, v1, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 1265
    .line 1266
    monitor-enter v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    .line 1267
    :try_start_2a
    iget-boolean v3, v1, Lcom/byazt/zz/n;->u:Z

    .line 1268
    .line 1269
    if-nez v3, :cond_33

    .line 1270
    .line 1271
    iget-object v3, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 1272
    .line 1273
    invoke-direct {v1, v3}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 1274
    .line 1275
    .line 1276
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1277
    .line 1278
    if-eqz v3, :cond_33

    .line 1279
    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V

    .line 1281
    .line 1282
    .line 1283
    :cond_33
    monitor-exit v2

    .line 1284
    goto :goto_16

    .line 1285
    :catchall_16
    move-exception v0

    .line 1286
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    .line 1287
    :try_start_2b
    throw v0

    .line 1288
    :cond_34
    iget-object v2, v1, Lcom/byazt/zz/n;->x:Lcom/byazt/b/sl;

    .line 1289
    .line 1290
    invoke-direct {v1, v2}, Lcom/byazt/zz/n;->c(Lcom/byazt/zz/da;)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v2, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1294
    .line 1295
    if-eqz v2, :cond_35

    .line 1296
    .line 1297
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zz/n;->x()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    .line 1298
    .line 1299
    .line 1300
    :cond_35
    :goto_16
    const/4 v2, 0x1

    .line 1301
    new-array v2, v2, [Ljava/io/Closeable;

    .line 1302
    .line 1303
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1304
    .line 1305
    const/4 v5, 0x0

    .line 1306
    aput-object v3, v2, v5

    .line 1307
    .line 1308
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 1309
    .line 1310
    .line 1311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1312
    .line 1313
    .line 1314
    move-result-wide v2

    .line 1315
    sub-long v2, v2, v25

    .line 1316
    .line 1317
    iput-wide v2, v1, Lcom/byazt/zz/n;->d:J

    .line 1318
    .line 1319
    iget-object v10, v1, Lcom/byazt/zz/n;->gt:Lcom/byazt/k/c;

    .line 1320
    .line 1321
    iget-object v11, v1, Lcom/byazt/zz/n;->ve:Lcom/byazt/t/DownloadInfo;

    .line 1322
    .line 1323
    iget-object v12, v1, Lcom/byazt/zz/n;->uj:Ljava/lang/String;

    .line 1324
    .line 1325
    iget-object v13, v1, Lcom/byazt/zz/n;->a:Lcom/byazt/hs/i;

    .line 1326
    .line 1327
    iget-boolean v14, v1, Lcom/byazt/zz/n;->t:Z

    .line 1328
    .line 1329
    iget-boolean v15, v1, Lcom/byazt/zz/n;->u:Z

    .line 1330
    .line 1331
    iget-object v2, v1, Lcom/byazt/zz/n;->sl:Lcom/byazt/m/BaseException;

    .line 1332
    .line 1333
    move-object/from16 v16, v2

    .line 1334
    .line 1335
    iget-wide v2, v1, Lcom/byazt/zz/n;->z:J

    .line 1336
    .line 1337
    iget-wide v5, v1, Lcom/byazt/zz/n;->m:J

    .line 1338
    .line 1339
    sub-long v17, v2, v5

    .line 1340
    .line 1341
    iget-wide v2, v1, Lcom/byazt/zz/n;->d:J

    .line 1342
    .line 1343
    move-wide/from16 v19, v2

    .line 1344
    .line 1345
    iget-wide v2, v1, Lcom/byazt/zz/n;->p:J

    .line 1346
    .line 1347
    move-wide/from16 v22, v2

    .line 1348
    .line 1349
    iget-wide v2, v1, Lcom/byazt/zz/n;->md:J

    .line 1350
    .line 1351
    move-wide/from16 v24, v2

    .line 1352
    .line 1353
    iget-wide v2, v1, Lcom/byazt/zz/n;->h:J

    .line 1354
    .line 1355
    move-wide/from16 v26, v2

    .line 1356
    .line 1357
    const/16 v28, 0x0

    .line 1358
    .line 1359
    move/from16 v21, v4

    .line 1360
    .line 1361
    invoke-static/range {v10 .. v28}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;ZZLcom/byazt/m/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 1362
    .line 1363
    .line 1364
    throw v0

    .line 1365
    :catchall_17
    move-exception v0

    .line 1366
    const/4 v2, 0x1

    .line 1367
    new-array v2, v2, [Ljava/io/Closeable;

    .line 1368
    .line 1369
    iget-object v3, v1, Lcom/byazt/zz/n;->da:Lcom/byazt/t/n;

    .line 1370
    .line 1371
    const/4 v4, 0x0

    .line 1372
    aput-object v3, v2, v4

    .line 1373
    .line 1374
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 1375
    .line 1376
    .line 1377
    throw v0

    .line 1378
    :cond_36
    new-instance v0, Lcom/byazt/m/a;

    .line 1379
    .line 1380
    const/16 v2, 0x3ec

    .line 1381
    .line 1382
    const-string v3, "the content-length is 0"

    .line 1383
    .line 1384
    invoke-direct {v0, v2, v3}, Lcom/byazt/m/a;-><init>(ILjava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    throw v0

    .line 1388
    :cond_37
    :goto_17
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zz/n;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/zz/n;->yp:Lcom/byazt/u/a;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    iput-boolean v1, p0, Lcom/byazt/zz/n;->u:Z

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-direct {p0}, Lcom/byazt/zz/n;->sp()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v1
.end method
