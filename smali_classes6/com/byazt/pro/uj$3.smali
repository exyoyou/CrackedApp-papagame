.class public Lcom/byazt/pro/uj$3;
.super Lcom/byazt/yh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pro/uj;->getCustomVideo()Lcom/byazt/yh/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/uj;

.field public tt:J


# direct methods
.method public constructor <init>(Lcom/byazt/pro/uj;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pro/uj;->tt(Lcom/byazt/pro/uj;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/byazt/pro/uj;->tt(Lcom/byazt/pro/uj;)Lcom/byazt/ete/ic;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, "invalid invoke url"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3, v4}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->g()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v2, 0x1

    .line 58
    if-ne v0, v2, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/byazt/pro/uj;->ve(Lcom/byazt/pro/uj;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 86
    .line 87
    invoke-static {v0, v2}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;Z)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_3
    :goto_0
    return-object v1
.end method

.method public reportVideoAutoStart()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "feed_auto_play"

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x4

    .line 61
    invoke-static {v1, v0}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "material_meta"

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->gt()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "ad_slot"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const/4 v1, -0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setPlayerType(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    invoke-static {}, Lcom/byazt/sw/uj;->c()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v1, v2, v0, v3, v4}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;ZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    return-void
.end method

.method public reportVideoBreak(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/pro/uj;->getVideoDuration()D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    double-to-long v0, v0

    .line 22
    const-wide/16 v4, 0x3e8

    .line 23
    .line 24
    mul-long v0, v0, v4

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    iget-wide v6, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 31
    .line 32
    sub-long/2addr v4, v6

    .line 33
    sub-long/2addr v4, p1

    .line 34
    cmp-long v6, v4, v2

    .line 35
    .line 36
    if-gez v6, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-wide v2, v4

    .line 40
    :goto_0
    new-instance v4, Lcom/byazt/afw/nu$c;

    .line 41
    .line 42
    invoke-direct {v4}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p1, p2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0, v1}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2, v3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {v4, p1}, Lcom/byazt/afw/nu$c;->n(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p1}, Lcom/byazt/afw/nu$c;->a(I)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {v4, p1}, Lcom/byazt/afw/nu$c;->c(Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    const/4 v0, -0x1

    .line 69
    invoke-static {p1, v4, p2, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/util/Map;I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public reportVideoContinue(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v4, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 20
    .line 21
    sub-long/2addr v0, v4

    .line 22
    sub-long/2addr v0, p1

    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-gez v4, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-wide v2, v0

    .line 29
    :goto_0
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/byazt/pro/uj;->getVideoDuration()D

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    double-to-long p1, p1

    .line 44
    const-wide/16 v4, 0x3e8

    .line 45
    .line 46
    mul-long p1, p1, v4

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Lcom/byazt/afw/nu$c;->c(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public reportVideoError(JII)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 14
    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    iget-object v2, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/byazt/pro/uj;->getVideoDuration()D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    double-to-long v2, v2

    .line 25
    const-wide/16 v6, 0x3e8

    .line 26
    .line 27
    mul-long v2, v2, v6

    .line 28
    .line 29
    sub-long v6, v0, p1

    .line 30
    .line 31
    cmp-long v8, v6, v4

    .line 32
    .line 33
    if-gez v8, :cond_1

    .line 34
    .line 35
    move-wide v6, v4

    .line 36
    :cond_1
    const/4 v8, 0x1

    .line 37
    const/4 v9, 0x0

    .line 38
    cmp-long v10, v0, v4

    .line 39
    .line 40
    if-nez v10, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    new-instance v1, Lcom/byazt/afw/nu$c;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v6, v7}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1, p2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p3}, Lcom/byazt/afw/nu$c;->c(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p4}, Lcom/byazt/afw/nu$c;->tt(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v8}, Lcom/byazt/afw/nu$c;->c(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 69
    .line 70
    const-string p2, "customer error"

    .line 71
    .line 72
    invoke-static {p1, v1, p2, v0, v9}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/lang/String;IZ)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public reportVideoFinish()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/pro/uj;->getVideoDuration()D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    double-to-long v0, v0

    .line 22
    const-wide/16 v4, 0x3e8

    .line 23
    .line 24
    mul-long v0, v0, v4

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    iget-wide v6, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 31
    .line 32
    sub-long/2addr v4, v6

    .line 33
    sub-long/2addr v4, v0

    .line 34
    cmp-long v6, v4, v2

    .line 35
    .line 36
    if-gez v6, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-wide v2, v4

    .line 40
    :goto_0
    new-instance v4, Lcom/byazt/afw/nu$c;

    .line 41
    .line 42
    invoke-direct {v4}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0, v1}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0, v1}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2, v3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {v4, v0}, Lcom/byazt/afw/nu$c;->a(I)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {v4, v0}, Lcom/byazt/afw/nu$c;->c(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 63
    .line 64
    invoke-static {v0, v4}, Lcom/byazt/sw/uj;->uj(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public reportVideoPause(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v4, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 20
    .line 21
    sub-long/2addr v0, v4

    .line 22
    sub-long/2addr v0, p1

    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-gez v4, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-wide v2, v0

    .line 29
    :goto_0
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/byazt/pro/uj;->getVideoDuration()D

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    double-to-long p1, p1

    .line 44
    const-wide/16 v4, 0x3e8

    .line 45
    .line 46
    mul-long p1, p1, v4

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Lcom/byazt/afw/nu$c;->c(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 59
    .line 60
    const/4 p2, -0x1

    .line 61
    invoke-static {p1, v0, p2}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public reportVideoStart()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/byazt/pro/uj$3;->tt:J

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/afw/nu$c;->tt(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/afw/nu$c;->c(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public reportVideoStartError(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "creative_id"

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v1, "error_code"

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p1, "extra_error_code"

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "is_customer"

    .line 49
    .line 50
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/byazt/jzl/uj;->getSize()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string v1, "video_size"

    .line 78
    .line 79
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string p2, "video_resolution"

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/byazt/jzl/uj;->getResolution()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object p1, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/byazt/pro/uj$3;->c:Lcom/byazt/pro/uj;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p2}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const-string v1, "play_start_error"

    .line 116
    .line 117
    invoke-static {p1, p2, v1, v0}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
