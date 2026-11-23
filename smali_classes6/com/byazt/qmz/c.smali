.class public Lcom/byazt/qmz/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d2,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/xj/ve;

.field public final c:Lcom/byazt/nr/d;

.field public da:Lcom/byazt/xj/ve;

.field public gr:Z

.field public gt:I

.field public gu:Z

.field public i:Lcom/byazt/xj/ve;

.field public m:I

.field public md:Z

.field public my:Z

.field public n:Lcom/byazt/xj/ve;

.field public nu:I

.field public p:I

.field public qy:I

.field public rh:I

.field public rl:I

.field public sl:Lcom/byazt/xj/ve;

.field public sp:Lcom/byazt/xj/ve;

.field public t:I

.field public tt:Lcom/byazt/sz/z;

.field public u:I

.field public uj:Lcom/byazt/xj/ve;

.field public ve:Lcom/byazt/xj/ve;

.field public x:Lcom/byazt/xj/ve;

.field public yp:I

.field public yv:I

.field public z:I

.field public zm:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/qmz/c;->c:Lcom/byazt/nr/d;

    .line 14
    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/qmz/c;->rh:I

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    const-string v0, "xCreative"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "xSetting"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "dynamic_configs"

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v3, "video"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    const-string v4, "video_duration"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput v3, p0, Lcom/byazt/qmz/c;->u:I

    .line 59
    .line 60
    :cond_0
    const-string v3, "reward_full_time_type"

    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const-string v4, "reward_full_play_time"

    .line 67
    .line 68
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v4, 0x1

    .line 73
    if-ne v3, v4, :cond_1

    .line 74
    .line 75
    iput v0, p0, Lcom/byazt/qmz/c;->yp:I

    .line 76
    .line 77
    iput-boolean v4, p0, Lcom/byazt/qmz/c;->my:Z

    .line 78
    .line 79
    :cond_1
    if-eqz v1, :cond_3

    .line 80
    .line 81
    const-string v0, "ad_slot_type"

    .line 82
    .line 83
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/16 v3, 0x8

    .line 88
    .line 89
    if-ne v0, v3, :cond_2

    .line 90
    .line 91
    const-string v0, "iv_skip_time"

    .line 92
    .line 93
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Lcom/byazt/qmz/c;->t:I

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "rv_skip_time"

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/byazt/qmz/c;->t:I

    .line 107
    .line 108
    :cond_3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 115
    .line 116
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string p1, "is_show_video_duration"

    .line 120
    .line 121
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iput-boolean v2, p0, Lcom/byazt/qmz/c;->my:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    :catch_0
    :cond_4
    return-void
.end method

.method private uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qmz/c;->uj:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/qmz/c;->a:Lcom/byazt/xj/ve;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/qmz/c;->n:Lcom/byazt/xj/ve;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/qmz/c;->x:Lcom/byazt/xj/ve;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/qmz/c;->da:Lcom/byazt/xj/ve;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method private ve()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/byazt/qmz/c;->my:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/byazt/qmz/c;->yp:I

    .line 6
    .line 7
    iget v1, p0, Lcom/byazt/qmz/c;->m:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/byazt/qmz/c;->u:I

    .line 11
    .line 12
    iget v1, p0, Lcom/byazt/qmz/c;->z:I

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/byazt/qmz/c;->tt:Lcom/byazt/sz/z;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v5, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    new-array v6, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    aput-object v7, v6, v4

    .line 31
    .line 32
    const-string v7, "videoProgress"

    .line 33
    .line 34
    invoke-virtual {v2, v5, v7, v6}, Lcom/byazt/sz/z;->c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v2, p0, Lcom/byazt/qmz/c;->nu:I

    .line 38
    .line 39
    add-int/2addr v1, v2

    .line 40
    sub-int v2, v0, v1

    .line 41
    .line 42
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v5, p0, Lcom/byazt/qmz/c;->t:I

    .line 47
    .line 48
    if-ge v1, v5, :cond_3

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget v5, p0, Lcom/byazt/qmz/c;->rh:I

    .line 53
    .line 54
    if-gtz v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v3, 0x0

    .line 58
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/byazt/qmz/c;->uj:Lcom/byazt/xj/ve;

    .line 59
    .line 60
    instance-of v6, v5, Lcom/byazt/te/c;

    .line 61
    .line 62
    const/high16 v7, -0x80000000

    .line 63
    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    iget v6, p0, Lcom/byazt/qmz/c;->rh:I

    .line 67
    .line 68
    if-eq v6, v7, :cond_4

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Lcom/byazt/xj/ve;->tt(I)V

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/byazt/qmz/c;->uj:Lcom/byazt/xj/ve;

    .line 74
    .line 75
    check-cast v5, Lcom/byazt/te/c;

    .line 76
    .line 77
    iget v6, p0, Lcom/byazt/qmz/c;->rh:I

    .line 78
    .line 79
    invoke-virtual {v5, v2, v1, v6}, Lcom/byazt/te/c;->c(III)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v5, p0, Lcom/byazt/qmz/c;->a:Lcom/byazt/xj/ve;

    .line 83
    .line 84
    instance-of v6, v5, Lcom/byazt/oaq/tt;

    .line 85
    .line 86
    if-eqz v6, :cond_5

    .line 87
    .line 88
    check-cast v5, Lcom/byazt/oaq/tt;

    .line 89
    .line 90
    invoke-virtual {v5, v3}, Lcom/byazt/oaq/tt;->uj(Z)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-object v5, p0, Lcom/byazt/qmz/c;->sp:Lcom/byazt/xj/ve;

    .line 94
    .line 95
    instance-of v6, v5, Lcom/byazt/te/uj;

    .line 96
    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    iget v6, p0, Lcom/byazt/qmz/c;->rh:I

    .line 100
    .line 101
    if-eq v6, v7, :cond_6

    .line 102
    .line 103
    check-cast v5, Lcom/byazt/te/uj;

    .line 104
    .line 105
    invoke-virtual {v5, v2, v1, v6}, Lcom/byazt/te/uj;->c(III)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v5, p0, Lcom/byazt/qmz/c;->n:Lcom/byazt/xj/ve;

    .line 109
    .line 110
    instance-of v6, v5, Lcom/byazt/te/tt;

    .line 111
    .line 112
    if-eqz v6, :cond_7

    .line 113
    .line 114
    check-cast v5, Lcom/byazt/te/tt;

    .line 115
    .line 116
    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/byazt/te/tt;->c(IIIZ)V

    .line 117
    .line 118
    .line 119
    :cond_7
    iget-object v0, p0, Lcom/byazt/qmz/c;->x:Lcom/byazt/xj/ve;

    .line 120
    .line 121
    instance-of v1, v0, Lcom/byazt/oaq/c;

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    check-cast v0, Lcom/byazt/oaq/c;

    .line 126
    .line 127
    iget v1, p0, Lcom/byazt/qmz/c;->gt:I

    .line 128
    .line 129
    iget v2, p0, Lcom/byazt/qmz/c;->rl:I

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/byazt/oaq/c;->tt(II)V

    .line 132
    .line 133
    .line 134
    :cond_8
    iget-object v0, p0, Lcom/byazt/qmz/c;->i:Lcom/byazt/xj/ve;

    .line 135
    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    if-eqz v0, :cond_a

    .line 139
    .line 140
    iget-boolean v2, p0, Lcom/byazt/qmz/c;->gu:Z

    .line 141
    .line 142
    if-eqz v2, :cond_9

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    goto :goto_2

    .line 146
    :cond_9
    const/16 v2, 0x8

    .line 147
    .line 148
    :goto_2
    invoke-virtual {v0, v2}, Lcom/byazt/xj/ve;->tt(I)V

    .line 149
    .line 150
    .line 151
    :cond_a
    iget-object v0, p0, Lcom/byazt/qmz/c;->sl:Lcom/byazt/xj/ve;

    .line 152
    .line 153
    if-eqz v0, :cond_c

    .line 154
    .line 155
    iget-boolean v2, p0, Lcom/byazt/qmz/c;->zm:Z

    .line 156
    .line 157
    if-eqz v2, :cond_b

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_b
    const/16 v4, 0x8

    .line 161
    .line 162
    :goto_3
    invoke-virtual {v0, v4}, Lcom/byazt/xj/ve;->tt(I)V

    .line 163
    .line 164
    .line 165
    :cond_c
    iget-object v0, p0, Lcom/byazt/qmz/c;->da:Lcom/byazt/xj/ve;

    .line 166
    .line 167
    instance-of v1, v0, Lcom/byazt/te/ve;

    .line 168
    .line 169
    if-eqz v1, :cond_d

    .line 170
    .line 171
    move-object v2, v0

    .line 172
    check-cast v2, Lcom/byazt/te/ve;

    .line 173
    .line 174
    iget v3, p0, Lcom/byazt/qmz/c;->qy:I

    .line 175
    .line 176
    iget v4, p0, Lcom/byazt/qmz/c;->yv:I

    .line 177
    .line 178
    iget v5, p0, Lcom/byazt/qmz/c;->p:I

    .line 179
    .line 180
    iget-boolean v6, p0, Lcom/byazt/qmz/c;->gr:Z

    .line 181
    .line 182
    iget-boolean v7, p0, Lcom/byazt/qmz/c;->md:Z

    .line 183
    .line 184
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/te/ve;->c(IIIZZ)V

    .line 185
    .line 186
    .line 187
    :cond_d
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/byazt/qmz/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/byazt/qmz/c;->c:Lcom/byazt/nr/d;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/byazt/qmz/c;->gt:I

    .line 20
    iput p2, p0, Lcom/byazt/qmz/c;->rl:I

    return-void
.end method

.method public c(IIII)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/byazt/qmz/c;->z:I

    .line 16
    iput p2, p0, Lcom/byazt/qmz/c;->m:I

    .line 17
    iput p3, p0, Lcom/byazt/qmz/c;->nu:I

    .line 18
    iput p4, p0, Lcom/byazt/qmz/c;->rh:I

    return-void
.end method

.method public c(IZIIZZZ)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/byazt/qmz/c;->qy:I

    .line 22
    iput p3, p0, Lcom/byazt/qmz/c;->yv:I

    .line 23
    iput p4, p0, Lcom/byazt/qmz/c;->p:I

    .line 24
    iput-boolean p5, p0, Lcom/byazt/qmz/c;->gu:Z

    .line 25
    iput-boolean p6, p0, Lcom/byazt/qmz/c;->gr:Z

    .line 26
    iput-boolean p7, p0, Lcom/byazt/qmz/c;->zm:Z

    .line 27
    iput-boolean p2, p0, Lcom/byazt/qmz/c;->md:Z

    return-void
.end method

.method public c(Lcom/byazt/sz/z;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qmz/c;->tt:Lcom/byazt/sz/z;

    .line 2
    iput-object p2, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p1, "RVCountdown"

    .line 3
    invoke-virtual {p2, p1}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->uj:Lcom/byazt/xj/ve;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "FVCountdown"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->uj:Lcom/byazt/xj/ve;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "RVSkip"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->a:Lcom/byazt/xj/ve;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "FVSkip"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->a:Lcom/byazt/xj/ve;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "CycleCountDownView"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->n:Lcom/byazt/xj/ve;

    .line 8
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "RewardClickCountdown"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->sp:Lcom/byazt/xj/ve;

    .line 9
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "CycleSkip"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->x:Lcom/byazt/xj/ve;

    .line 10
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "CsjRefreshTip"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->da:Lcom/byazt/xj/ve;

    .line 11
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "CsjRefreshTipContainer"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->i:Lcom/byazt/xj/ve;

    .line 12
    iget-object p1, p0, Lcom/byazt/qmz/c;->ve:Lcom/byazt/xj/ve;

    const-string p2, "CsjRefreshTipCancel"

    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/qmz/c;->sl:Lcom/byazt/xj/ve;

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/qmz/c;->c:Lcom/byazt/nr/d;

    .line 9
    .line 10
    const-wide/16 v1, 0xc8

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/qmz/c;->ve()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/qmz/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
