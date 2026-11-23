.class public Lcom/byazt/fcd/n;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/dqg/sp;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/sp;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/dqg/a;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/a;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object p1
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/n;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Landroid/view/View;
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    .line 2
    .line 3
    const/high16 v1, 0x42c80000    # 100.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->kp()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/c;->ve:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    const/16 v2, 0x21

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eq v0, v3, :cond_2

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/vfu/a;->my(Landroid/content/Context;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/byazt/vfu/a;->rh(Landroid/content/Context;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/byazt/vfu/a;->nu(Landroid/content/Context;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eq v0, v3, :cond_5

    .line 60
    .line 61
    if-eq v0, v2, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/byazt/vfu/a;->qy(Landroid/content/Context;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/byazt/vfu/a;->rl(Landroid/content/Context;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/byazt/vfu/a;->gt(Landroid/content/Context;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_0
    return-object v0
.end method

.method public ic()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/n;->x(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/ete/kp;->c()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-int v2, v2

    .line 22
    int-to-long v2, v2

    .line 23
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    long-to-int v1, v0

    .line 28
    return v1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-super {p0}, Lcom/byazt/fcd/c;->ic()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    double-to-int v0, v0

    .line 49
    return v0
.end method

.method public kk()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ys()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/high16 v3, 0x42c80000    # 100.0f

    .line 20
    .line 21
    cmpl-float v0, v0, v3

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->sl()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_0
    return v2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return v1

    .line 59
    :cond_3
    :goto_0
    return v2

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {v0, v3}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/byazt/ete/xd;->t(Lcom/byazt/ete/ic;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    return v2

    .line 81
    :cond_5
    return v1
.end method

.method public os()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 2
    .line 3
    return v0
.end method

.method public oz()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ys()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->kk()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    return v1
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 14

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/tt;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->oz()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->p()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->ys()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->kk()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v2, v3}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    int-to-double v2, v0

    .line 48
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    cmpl-double v0, v2, v4

    .line 55
    .line 56
    if-lez v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kk()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/byazt/fcd/n;->x(Z)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const-string v3, "0"

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    const/4 v5, 0x7

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->ic()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-gt v1, v0, :cond_5

    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->z:Z

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0, v4}, Lcom/byazt/fcd/c;->a(Z)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0, v2}, Lcom/byazt/fcd/c;->a(Z)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    sput v0, Lcom/byazt/fh/a;->c:I

    .line 108
    .line 109
    iget-object v4, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->tt(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->gr()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-ne v0, v5, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 128
    .line 129
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/byazt/dqg/n;->c(Ljava/lang/CharSequence;IIZ)V

    .line 134
    .line 135
    .line 136
    :cond_4
    return-void

    .line 137
    :cond_5
    :goto_0
    sput v2, Lcom/byazt/fh/a;->c:I

    .line 138
    .line 139
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 145
    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->gr()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-ne v0, v5, :cond_d

    .line 153
    .line 154
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 155
    .line 156
    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/byazt/dqg/n;->c(Ljava/lang/CharSequence;IIZ)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->ic()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const-string v6, ""

    .line 165
    .line 166
    if-gt v1, v0, :cond_b

    .line 167
    .line 168
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->z:Z

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    invoke-virtual {p0, v4}, Lcom/byazt/fcd/c;->a(Z)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {p0, v2}, Lcom/byazt/fcd/c;->a(Z)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    sput v0, Lcom/byazt/fh/a;->c:I

    .line 182
    .line 183
    iget-object v7, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 184
    .line 185
    invoke-virtual {v7}, Lcom/byazt/biq/ve;->ve()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-gt v1, v7, :cond_9

    .line 190
    .line 191
    iget-object v7, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 192
    .line 193
    invoke-virtual {v7}, Lcom/byazt/lcf/TTBaseVideoActivity;->lo()Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_8

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_8
    const/4 v13, 0x0

    .line 201
    goto :goto_2

    .line 202
    :cond_9
    :goto_1
    const/4 v13, 0x1

    .line 203
    :goto_2
    iget-object v8, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 204
    .line 205
    iget-boolean v9, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 206
    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v7, "s"

    .line 216
    .line 217
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-boolean v7, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 221
    .line 222
    if-eqz v7, :cond_a

    .line 223
    .line 224
    const-string v6, "\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    .line 225
    .line 226
    :cond_a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    const/4 v11, 0x0

    .line 234
    move v12, v13

    .line 235
    invoke-virtual/range {v8 .. v13}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->tt(I)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 242
    .line 243
    if-eqz v0, :cond_d

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->gr()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-ne v0, v5, :cond_d

    .line 250
    .line 251
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 252
    .line 253
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/byazt/dqg/n;->c(Ljava/lang/CharSequence;IIZ)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->l()V

    .line 264
    .line 265
    .line 266
    sput v2, Lcom/byazt/fh/a;->c:I

    .line 267
    .line 268
    iget-object v7, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 269
    .line 270
    iget-boolean v8, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 271
    .line 272
    if-eqz v8, :cond_c

    .line 273
    .line 274
    const-string v6, "\u9886\u53d6\u6210\u529f"

    .line 275
    .line 276
    :cond_c
    move-object v9, v6

    .line 277
    const/4 v10, 0x0

    .line 278
    const/4 v11, 0x1

    .line 279
    const/4 v12, 0x1

    .line 280
    invoke-virtual/range {v7 .. v12}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 284
    .line 285
    if-eqz v0, :cond_d

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->gr()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-ne v0, v5, :cond_d

    .line 292
    .line 293
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 294
    .line 295
    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/byazt/dqg/n;->c(Ljava/lang/CharSequence;IIZ)V

    .line 296
    .line 297
    .line 298
    :cond_d
    :goto_4
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->kk()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fe()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x(Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ys()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->kk()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/byazt/fcd/n;->oz()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    return v1
.end method
