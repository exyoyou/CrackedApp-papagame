.class public Lcom/byazt/fcd/sp;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x5b
    }
.end annotation


# instance fields
.field public d:I

.field public eo:I

.field public zb:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/fcd/sp;->d:I

    .line 6
    .line 7
    iput p1, p0, Lcom/byazt/fcd/sp;->eo:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/byazt/fcd/sp;->zb:Z

    .line 10
    .line 11
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result p0

    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bx()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/sp;->d:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cs()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lcom/byazt/fcd/sp;->d:I

    .line 23
    .line 24
    mul-int v2, v2, v0

    .line 25
    .line 26
    int-to-float v0, v2

    .line 27
    const/high16 v2, 0x42c80000    # 100.0f

    .line 28
    .line 29
    div-float/2addr v0, v2

    .line 30
    const/high16 v2, 0x41d80000    # 27.0f

    .line 31
    .line 32
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    float-to-int v0, v0

    .line 37
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v0, v2

    .line 42
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    return v0
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c;->rl:Lcom/byazt/kcl/uj;

    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/byazt/qq/tt$c;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 5
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bx()V

    .line 6
    new-instance v0, Lcom/byazt/qq/x;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1, p1}, Lcom/byazt/qq/x;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->rl()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->c(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->c(I)V

    .line 9
    new-instance p1, Lcom/byazt/fcd/sp$1;

    invoke-direct {p1, p0, p2}, Lcom/byazt/fcd/sp$1;-><init>(Lcom/byazt/fcd/sp;Lcom/byazt/qq/da;)V

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public da()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/go/RewardJointEndCardFrameLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/byazt/go/RewardJointEndCardFrameLayout;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lcom/byazt/fcd/c;->da()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/sp;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->c(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ka()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->n(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x1

    .line 34
    invoke-virtual/range {v3 .. v8}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->n(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fe()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->n(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fe()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method public kk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->m()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/ab/tt;->c()Lcom/byazt/ab/tt;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/ab/tt;->tt(Lcom/byazt/ete/ic;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public or()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->pf()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/ete/lo;->c(Lcom/byazt/ete/ic;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->rl()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public os()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public oz()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/fcd/c;->yv()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, v0, Lcom/byazt/fcd/sp;->d:I

    .line 17
    .line 18
    sub-int v3, v2, v1

    .line 19
    .line 20
    if-lt v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v4, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, 0x1

    .line 29
    invoke-virtual/range {v4 .. v9}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    iget-object v1, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->t()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget v4, v0, Lcom/byazt/fcd/sp;->eo:I

    .line 47
    .line 48
    if-lt v4, v2, :cond_2

    .line 49
    .line 50
    iget-object v5, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    invoke-virtual/range {v5 .. v10}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-lt v1, v4, :cond_3

    .line 65
    .line 66
    iget-object v11, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    const-string v14, "\u8df3\u8fc7"

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    const/16 v16, 0x1

    .line 77
    .line 78
    invoke-virtual/range {v11 .. v16}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-object v2, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iget v6, v0, Lcom/byazt/fcd/sp;->eo:I

    .line 95
    .line 96
    sub-int/2addr v6, v1

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "s\u540e\u53ef\u8df3\u8fc7"

    .line 101
    .line 102
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    move-object v1, v2

    .line 112
    move v2, v4

    .line 113
    move-object v4, v5

    .line 114
    move v5, v6

    .line 115
    move v6, v7

    .line 116
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-virtual {v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->a(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/byazt/fcd/sp;->j()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fe()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public sp(Z)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget p1, p0, Lcom/byazt/fcd/sp;->d:I

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    int-to-float p1, p1

    .line 17
    const/high16 v1, 0x41d80000    # 27.0f

    .line 18
    .line 19
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    float-to-int p1, p1

    .line 24
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr p1, v1

    .line 29
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public tt(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->tt(Z)V

    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->tt()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->rh()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/aas/rl;->n(Lcom/byazt/ete/ic;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/byazt/fcd/sp;->d:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/byazt/aas/rl;->a(Lcom/byazt/ete/ic;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/byazt/fcd/sp;->eo:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->a()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->x()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/ab/tt;->c()Lcom/byazt/ab/tt;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/ab/tt;->c(Lcom/byazt/ete/ic;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public yp()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->yp()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bx()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
