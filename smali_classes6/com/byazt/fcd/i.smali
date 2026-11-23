.class public Lcom/byazt/fcd/i;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x2a
    }
.end annotation


# instance fields
.field public d:Z

.field public eo:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/fcd/i;->d:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/byazt/fcd/i;->eo:Z

    .line 8
    .line 9
    invoke-static {p2}, Lcom/byazt/glq/tt;->c(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/fcd/i;->eo:Z

    .line 18
    .line 19
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    const/16 p0, 0x9

    return p0
.end method

.method public static synthetic c(Lcom/byazt/fcd/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/fcd/i;->j()V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;)Z
    .locals 6

    .line 3
    invoke-static {p1}, Lcom/byazt/ete/to;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/byazt/ete/bx;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/bx;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-long v2, v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->cs()I

    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/ete/kp;->c()J

    move-result-wide v4

    long-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    mul-float v2, v2, v0

    float-to-long v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 10
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "reward_countdown"

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event_tag"

    const-string v3, "rewarded_video"

    .line 12
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Lcom/byazt/glq/tt;->c(Lcom/byazt/ete/ic;)I

    move-result v2

    const-string v3, "reward_live_scene"

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Lcom/byazt/apd/tt;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/util/Map;)I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private i(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    instance-of v0, v0, Lcom/byazt/dqg/i;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/fcd/i$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/i$2;-><init>(Lcom/byazt/fcd/i;Z)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/i;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/fcd/i;->d:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/byazt/fcd/i;->i(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
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

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 3

    .line 16
    new-instance v0, Lcom/byazt/dqg/i;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/i;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(I)V

    if-nez p1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/byazt/fcd/i;->j()V

    :cond_0
    return-void
.end method

.method public c(IILandroid/content/Intent;)V
    .locals 4

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/fcd/c;->c(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 18
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void

    :cond_0
    if-eqz p3, :cond_4

    .line 19
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "csj.reward_countdown_duration_ms"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    .line 21
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "csj.reward_auth_status"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 22
    iget-boolean p3, p0, Lcom/byazt/fcd/i;->eo:Z

    if-eqz p3, :cond_2

    if-ne p1, p2, :cond_2

    .line 23
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void

    :cond_2
    const-string p1, "rewardAuthFlag"

    const-string p3, "verify rew...."

    .line 24
    invoke-static {p1, p3}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    .line 26
    invoke-direct {p0, p2}, Lcom/byazt/fcd/i;->i(Z)V

    .line 27
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->nb()Lcom/byazt/nr/d;

    move-result-object p1

    new-instance p2, Lcom/byazt/fcd/i$1;

    invoke-direct {p2, p0}, Lcom/byazt/fcd/i$1;-><init>(Lcom/byazt/fcd/i;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void

    .line 29
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/i;->c(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7e06fff7

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public kk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public ve()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(ZZ)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/n;->ve(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->c(Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "device_info_new"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/byazt/dna/u;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/byazt/dna/u;->getDisplayDpi()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    new-instance v5, Lcom/byazt/ete/i$c;

    .line 52
    .line 53
    invoke-direct {v5}, Lcom/byazt/ete/i$c;-><init>()V

    .line 54
    .line 55
    .line 56
    const/high16 v6, -0x40800000    # -1.0f

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-wide/16 v6, -0x1

    .line 75
    .line 76
    invoke-virtual {v5, v6, v7}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5, v6, v7}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, -0x1

    .line 85
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const/16 v6, -0x400

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Lcom/byazt/omf/x;->tt()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_0

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const/4 v6, 0x2

    .line 112
    :goto_0
    invoke-virtual {v5, v6}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5, v0}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v3}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v4}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 129
    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->by()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-ne v3, v1, :cond_2

    .line 137
    .line 138
    iget-object v1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 139
    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/byazt/dqg/n;->a()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    iget-object v1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/byazt/dqg/n;->da()B

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :cond_1
    invoke-virtual {v0, v2}, Lcom/byazt/ete/i$c;->c(B)Lcom/byazt/ete/i$c;

    .line 155
    .line 156
    .line 157
    :cond_2
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    .line 164
    .line 165
    .line 166
    const-string v2, "click"

    .line 167
    .line 168
    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    iget-object v5, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    .line 175
    .line 176
    const/4 v6, 0x1

    .line 177
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    const/4 v8, -0x1

    .line 184
    const/4 v9, 0x0

    .line 185
    const/4 v10, 0x0

    .line 186
    invoke-static/range {v2 .. v10}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
