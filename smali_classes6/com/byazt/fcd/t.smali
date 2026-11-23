.class public Lcom/byazt/fcd/t;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x42
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
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/t;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/t;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public kk()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public nu()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->nu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public os()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x3

    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x7

    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
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
    .locals 15

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/ete/kp;->ve()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    invoke-static {}, Lcom/byazt/ete/kp;->ve()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->ic()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "\u8df3\u8fc7"

    .line 35
    .line 36
    const-string v7, ""

    .line 37
    .line 38
    if-gt v2, v4, :cond_8

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/byazt/fcd/c;->z:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto :goto_6

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Lcom/byazt/fcd/c;->a(Z)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p0, v3}, Lcom/byazt/fcd/c;->a(Z)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    sput v2, Lcom/byazt/fh/a;->c:I

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iget-object v9, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 60
    .line 61
    invoke-virtual {v9}, Lcom/byazt/biq/ve;->ve()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-gt v8, v9, :cond_3

    .line 66
    .line 67
    iget-object v8, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 68
    .line 69
    invoke-virtual {v8}, Lcom/byazt/lcf/TTBaseVideoActivity;->lo()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v14, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_0
    const/4 v14, 0x1

    .line 79
    :goto_1
    if-eqz v0, :cond_4

    .line 80
    .line 81
    if-eqz v14, :cond_4

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v0, 0x0

    .line 86
    :goto_2
    if-eqz v6, :cond_5

    .line 87
    .line 88
    if-eqz v14, :cond_5

    .line 89
    .line 90
    const/4 v13, 0x1

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const/4 v13, 0x0

    .line 93
    :goto_3
    iget-object v9, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 94
    .line 95
    iget-boolean v10, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, "s"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-boolean v3, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 111
    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    const-string v3, "\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    move-object v3, v7

    .line 118
    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    move-object v12, v5

    .line 128
    goto :goto_5

    .line 129
    :cond_7
    move-object v12, v7

    .line 130
    :goto_5
    invoke-virtual/range {v9 .. v14}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v2}, Lcom/byazt/fcd/c;->tt(I)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    :goto_6
    sput v3, Lcom/byazt/fh/a;->c:I

    .line 138
    .line 139
    iget-object v2, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 140
    .line 141
    iget-boolean v3, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 142
    .line 143
    if-eqz v3, :cond_9

    .line 144
    .line 145
    const-string v1, "\u9886\u53d6\u6210\u529f"

    .line 146
    .line 147
    move-object v4, v1

    .line 148
    goto :goto_7

    .line 149
    :cond_9
    move-object v4, v7

    .line 150
    :goto_7
    if-eqz v0, :cond_a

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_a
    move-object v5, v7

    .line 154
    :goto_8
    const/4 v7, 0x1

    .line 155
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->l()V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fe()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->n(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->a(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->qy:Lcom/byazt/ouz/a;

    .line 2
    .line 3
    const-class v1, Lcom/byazt/nat/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/nat/c;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/byazt/nat/c;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
