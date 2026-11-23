.class public Lcom/byazt/fcd/sl;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x9e
    }
.end annotation


# instance fields
.field public d:I

.field public eo:I

.field public zb:Lcom/byazt/ddx/sp;


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
    iput p1, p0, Lcom/byazt/fcd/sl;->d:I

    .line 6
    .line 7
    iput p1, p0, Lcom/byazt/fcd/sl;->eo:I

    .line 8
    .line 9
    new-instance p1, Lcom/byazt/ddx/sp;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Lcom/byazt/ddx/sp;-><init>(Lcom/byazt/ete/ic;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/fcd/sl;->zb:Lcom/byazt/ddx/sp;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p1, p2}, Lcom/byazt/ddx/sp;->c(Z)Lcom/byazt/ddx/sp;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/byazt/xs/da;->ve(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x7

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

    const/4 v0, 0x0

    return v0
.end method

.method public bx()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

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
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/sl;->d:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cs()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v2, p0, Lcom/byazt/fcd/sl;->d:I

    .line 48
    .line 49
    mul-int v2, v2, v0

    .line 50
    .line 51
    int-to-float v0, v2

    .line 52
    const/high16 v2, 0x42c80000    # 100.0f

    .line 53
    .line 54
    div-float/2addr v0, v2

    .line 55
    const/high16 v2, 0x41d80000    # 27.0f

    .line 56
    .line 57
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sub-int/2addr v0, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    return v0

    .line 72
    :cond_3
    :goto_0
    iget v0, p0, Lcom/byazt/fcd/sl;->d:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sub-int/2addr v0, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    return v0
.end method

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 7

    .line 3
    new-instance v6, Lcom/byazt/dqg/c;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/fcd/sl;->zb:Lcom/byazt/ddx/sp;

    iget-object v5, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    move-object v0, v6

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/dqg/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;ZLcom/byazt/ddx/sp;Lcom/byazt/kcl/n;)V

    iput-object v6, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object v6
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 2

    .line 4
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
    iget-object v1, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {v1}, Lcom/byazt/kcl/tt;->rl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->c(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->c(I)V

    .line 9
    new-instance v1, Lcom/byazt/fcd/sl$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/fcd/sl$1;-><init>(Lcom/byazt/fcd/sl;Lcom/byazt/qq/da;Lcom/byazt/ete/ic;)V

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/sl;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public gu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 10
    .line 11
    check-cast v0, Lcom/byazt/dqg/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/dqg/c;->ve()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 20
    .line 21
    check-cast v0, Lcom/byazt/dqg/c;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/c;->c(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7e06fff7

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public kk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/byazt/dqg/c;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/byazt/dqg/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/dqg/c;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/fcd/sl;->zb:Lcom/byazt/ddx/sp;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/ddx/sp;->uj()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/dqg/tt;->da()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->n(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 13
    .line 14
    check-cast v0, Lcom/byazt/dqg/c;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/byazt/dqg/c;->tt(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
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
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 18
    .line 19
    check-cast v0, Lcom/byazt/dqg/c;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/c;->c(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/fcd/c;->yv()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, Lcom/byazt/fcd/sl;->d:I

    .line 8
    .line 9
    sub-int/2addr v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v4, v0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/byazt/kcl/tt;->cu()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_a

    .line 22
    .line 23
    iget v4, v0, Lcom/byazt/fcd/sl;->d:I

    .line 24
    .line 25
    const-string v5, ""

    .line 26
    .line 27
    if-lt v1, v4, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/byazt/xs/da;->ve(Lcom/byazt/ete/ic;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v6, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 38
    .line 39
    iget-boolean v7, v0, Lcom/byazt/fcd/c;->yp:Z

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    const-string v5, "\u9886\u53d6\u6210\u529f"

    .line 44
    .line 45
    :cond_0
    move-object v8, v5

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x1

    .line 48
    const/4 v11, 0x1

    .line 49
    invoke-virtual/range {v6 .. v11}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v12, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 54
    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/16 v16, 0x1

    .line 59
    .line 60
    const/16 v17, 0x1

    .line 61
    .line 62
    invoke-virtual/range {v12 .. v17}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v1, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->t()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_2
    iget v6, v0, Lcom/byazt/fcd/sl;->eo:I

    .line 73
    .line 74
    if-lt v6, v4, :cond_3

    .line 75
    .line 76
    iget-object v7, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    invoke-virtual/range {v7 .. v12}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_3
    iget-object v4, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 92
    .line 93
    invoke-static {v4}, Lcom/byazt/xs/da;->ve(Lcom/byazt/ete/ic;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    iget-object v6, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 100
    .line 101
    iget-boolean v7, v0, Lcom/byazt/fcd/c;->yp:Z

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v8, "s"

    .line 112
    .line 113
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-boolean v8, v0, Lcom/byazt/fcd/c;->yp:Z

    .line 117
    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    const-string v5, "\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const/4 v9, 0x0

    .line 130
    iget v4, v0, Lcom/byazt/fcd/sl;->eo:I

    .line 131
    .line 132
    if-gt v4, v1, :cond_5

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    const/4 v10, 0x1

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    const/4 v10, 0x0

    .line 138
    :goto_1
    const/4 v11, 0x1

    .line 139
    invoke-virtual/range {v6 .. v11}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    iget-object v4, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 144
    .line 145
    invoke-static {v4}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_9

    .line 150
    .line 151
    iget-object v4, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 152
    .line 153
    invoke-static {v4}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    iget v4, v0, Lcom/byazt/fcd/sl;->eo:I

    .line 161
    .line 162
    if-lt v1, v4, :cond_8

    .line 163
    .line 164
    iget-object v5, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 165
    .line 166
    const/4 v6, 0x0

    .line 167
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    const-string v8, "\u8df3\u8fc7"

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    const/4 v10, 0x1

    .line 175
    invoke-virtual/range {v5 .. v10}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_8
    iget-object v11, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 180
    .line 181
    const/4 v12, 0x0

    .line 182
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    iget v5, v0, Lcom/byazt/fcd/sl;->eo:I

    .line 192
    .line 193
    sub-int/2addr v5, v1

    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, "s\u540e\u53ef\u8df3\u8fc7"

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    const/4 v15, 0x0

    .line 207
    const/16 v16, 0x0

    .line 208
    .line 209
    invoke-virtual/range {v11 .. v16}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_9
    :goto_2
    iget v4, v0, Lcom/byazt/fcd/sl;->eo:I

    .line 214
    .line 215
    if-lt v1, v4, :cond_a

    .line 216
    .line 217
    iget-object v5, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 218
    .line 219
    const/4 v6, 0x0

    .line 220
    const/4 v7, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v9, 0x1

    .line 223
    const/4 v10, 0x1

    .line 224
    invoke-virtual/range {v5 .. v10}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_3
    iget-object v1, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 233
    .line 234
    invoke-static {v1}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_b

    .line 239
    .line 240
    iget-object v1, v0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 241
    .line 242
    check-cast v1, Lcom/byazt/dqg/c;

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Lcom/byazt/dqg/c;->c(I)V

    .line 245
    .line 246
    .line 247
    :cond_b
    if-nez v2, :cond_c

    .line 248
    .line 249
    iget-object v1, v0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 250
    .line 251
    instance-of v2, v1, Lcom/byazt/dqg/c;

    .line 252
    .line 253
    if-eqz v2, :cond_c

    .line 254
    .line 255
    check-cast v1, Lcom/byazt/dqg/c;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/byazt/dqg/c;->sp()V

    .line 258
    .line 259
    .line 260
    :cond_c
    return-void
.end method

.method public s()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->c(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->n(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->fe()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/xs/da;->ve(Lcom/byazt/ete/ic;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->ve(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->n(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 79
    .line 80
    iget-boolean v4, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->pf()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "s"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    const-string v1, "\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const-string v1, ""

    .line 107
    .line 108
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, 0x1

    .line 117
    const/4 v8, 0x1

    .line 118
    invoke-virtual/range {v3 .. v8}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x1

    .line 133
    const/4 v7, 0x1

    .line 134
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public sp(Z)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->cu()Z

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
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    iget p1, p0, Lcom/byazt/fcd/sl;->d:I

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p1, p0, Lcom/byazt/fcd/sl;->d:I

    .line 42
    .line 43
    const/16 v1, 0x1b

    .line 44
    .line 45
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sub-int/2addr p1, v1

    .line 54
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_3
    :goto_0
    iget p1, p0, Lcom/byazt/fcd/sl;->d:I

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sub-int/2addr p1, v1

    .line 66
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public tt(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->tt(Z)V

    .line 2
    iget-object p1, p0, Lcom/byazt/fcd/sl;->zb:Lcom/byazt/ddx/sp;

    invoke-virtual {p1}, Lcom/byazt/ddx/sp;->ve()V

    .line 3
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    instance-of v0, p1, Lcom/byazt/dqg/c;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/byazt/dqg/c;

    invoke-virtual {p1}, Lcom/byazt/dqg/c;->i()V

    :cond_0
    return-void
.end method

.method public ve()V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(I)V

    .line 8
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    check-cast v0, Lcom/byazt/dqg/c;

    iget v2, p0, Lcom/byazt/fcd/sl;->d:I

    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dqg/c;->c(I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, v1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(ZZ)V

    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->ve(Z)V

    .line 2
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    instance-of v0, p1, Lcom/byazt/dqg/c;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/byazt/dqg/c;

    invoke-virtual {p1}, Lcom/byazt/dqg/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    check-cast p1, Lcom/byazt/dqg/c;

    invoke-virtual {p1}, Lcom/byazt/dqg/c;->n()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/byazt/fcd/sl;->zb:Lcom/byazt/ddx/sp;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ddx/sp;->c(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    check-cast p1, Lcom/byazt/dqg/c;

    invoke-virtual {p1}, Lcom/byazt/dqg/c;->x()V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 3

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
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/aas/rl;->n(Lcom/byazt/ete/ic;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/byazt/fcd/sl;->d:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v1, 0x1e

    .line 46
    .line 47
    iput v1, p0, Lcom/byazt/fcd/sl;->d:I

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/byazt/lo/c;->ve()Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const-string v2, "reward_time"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/byazt/fcd/sl;->d:I

    .line 64
    .line 65
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/byazt/aas/rl;->a(Lcom/byazt/ete/ic;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/byazt/fcd/sl;->eo:I

    .line 72
    .line 73
    return-void
.end method

.method public yp()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->yp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
