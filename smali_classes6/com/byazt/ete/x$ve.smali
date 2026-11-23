.class public Lcom/byazt/ete/x$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x386
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ete/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ve"
.end annotation


# instance fields
.field public a:Z

.field public c:I

.field public da:Lcom/byazt/ete/x$c;

.field public i:Lcom/byazt/ete/x$uj;

.field public m:D

.field public n:I

.field public nu:Lcom/byazt/ete/x$n;

.field public sl:I

.field public sp:I

.field public t:I

.field public tt:I

.field public u:I

.field public uj:I

.field public ve:I

.field public x:I

.field public yp:I

.field public z:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/ete/x$ve;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/ete/x$ve;->tt:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/byazt/ete/x$ve;->ve:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lcom/byazt/ete/x$ve;->uj:I

    .line 14
    .line 15
    const/16 v3, 0x2710

    .line 16
    .line 17
    iput v3, p0, Lcom/byazt/ete/x$ve;->n:I

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/byazt/ete/x$ve;->a:Z

    .line 20
    .line 21
    iput v1, p0, Lcom/byazt/ete/x$ve;->sp:I

    .line 22
    .line 23
    iput v2, p0, Lcom/byazt/ete/x$ve;->x:I

    .line 24
    .line 25
    iput v0, p0, Lcom/byazt/ete/x$ve;->sl:I

    .line 26
    .line 27
    iput v2, p0, Lcom/byazt/ete/x$ve;->t:I

    .line 28
    .line 29
    iput v2, p0, Lcom/byazt/ete/x$ve;->u:I

    .line 30
    .line 31
    iput v2, p0, Lcom/byazt/ete/x$ve;->yp:I

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/byazt/ete/x$ve;->z:Z

    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    iput-wide v4, p0, Lcom/byazt/ete/x$ve;->m:D

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string v6, "get_type"

    .line 42
    .line 43
    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iput v6, p0, Lcom/byazt/ete/x$ve;->c:I

    .line 48
    .line 49
    const-string v6, "max_count"

    .line 50
    .line 51
    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iput v6, p0, Lcom/byazt/ete/x$ve;->tt:I

    .line 56
    .line 57
    const-string v6, "strategy_type"

    .line 58
    .line 59
    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iput v6, p0, Lcom/byazt/ete/x$ve;->ve:I

    .line 64
    .line 65
    const-string v6, "store_type"

    .line 66
    .line 67
    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iput v6, p0, Lcom/byazt/ete/x$ve;->uj:I

    .line 72
    .line 73
    const-string v6, "online_timeout"

    .line 74
    .line 75
    invoke-virtual {p1, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iput v3, p0, Lcom/byazt/ete/x$ve;->n:I

    .line 80
    .line 81
    const-string v3, "enable"

    .line 82
    .line 83
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput-boolean v3, p0, Lcom/byazt/ete/x$ve;->a:Z

    .line 88
    .line 89
    const-string v3, "load_type"

    .line 90
    .line 91
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, p0, Lcom/byazt/ete/x$ve;->sp:I

    .line 96
    .line 97
    const-string v1, "trans_cache"

    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iput v1, p0, Lcom/byazt/ete/x$ve;->x:I

    .line 104
    .line 105
    const-string v1, "ad_count_max"

    .line 106
    .line 107
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, p0, Lcom/byazt/ete/x$ve;->sl:I

    .line 112
    .line 113
    const-string v1, "libra_group"

    .line 114
    .line 115
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iput v1, p0, Lcom/byazt/ete/x$ve;->t:I

    .line 120
    .line 121
    const-string v1, "record_interval_minute"

    .line 122
    .line 123
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iput v1, p0, Lcom/byazt/ete/x$ve;->u:I

    .line 128
    .line 129
    const-string v1, "record_cache_minute"

    .line 130
    .line 131
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput v1, p0, Lcom/byazt/ete/x$ve;->yp:I

    .line 136
    .line 137
    new-instance v1, Lcom/byazt/ete/x$uj;

    .line 138
    .line 139
    const-string v2, "score_config"

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-direct {v1, v2}, Lcom/byazt/ete/x$uj;-><init>(Lorg/json/JSONObject;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Lcom/byazt/ete/x$ve;->i:Lcom/byazt/ete/x$uj;

    .line 149
    .line 150
    new-instance v1, Lcom/byazt/ete/x$c;

    .line 151
    .line 152
    const-string v2, "control_el"

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-direct {v1, v2}, Lcom/byazt/ete/x$c;-><init>(Lorg/json/JSONObject;)V

    .line 159
    .line 160
    .line 161
    iput-object v1, p0, Lcom/byazt/ete/x$ve;->da:Lcom/byazt/ete/x$c;

    .line 162
    .line 163
    const-string v1, "is_filter_version"

    .line 164
    .line 165
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput-boolean v0, p0, Lcom/byazt/ete/x$ve;->z:Z

    .line 170
    .line 171
    const-string v0, "cache_available_percent"

    .line 172
    .line 173
    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v0

    .line 177
    iput-wide v0, p0, Lcom/byazt/ete/x$ve;->m:D

    .line 178
    .line 179
    new-instance v0, Lcom/byazt/ete/x$n;

    .line 180
    .line 181
    const-string v1, "tmax_config"

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {v0, p1}, Lcom/byazt/ete/x$n;-><init>(Lorg/json/JSONObject;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lcom/byazt/ete/x$ve;->nu:Lcom/byazt/ete/x$n;

    .line 191
    .line 192
    return-void

    .line 193
    :cond_0
    new-instance p1, Lcom/byazt/ete/x$n;

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-direct {p1, v0}, Lcom/byazt/ete/x$n;-><init>(Lorg/json/JSONObject;)V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lcom/byazt/ete/x$ve;->nu:Lcom/byazt/ete/x$n;

    .line 200
    .line 201
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ete/x$ve;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/x$ve;->uj:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "get_type"

    .line 3
    iget v2, p0, Lcom/byazt/ete/x$ve;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "max_count"

    .line 4
    iget v2, p0, Lcom/byazt/ete/x$ve;->tt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "strategy_type"

    .line 5
    iget v2, p0, Lcom/byazt/ete/x$ve;->ve:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "store_type"

    .line 6
    iget v2, p0, Lcom/byazt/ete/x$ve;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "online_timeout"

    .line 7
    iget v2, p0, Lcom/byazt/ete/x$ve;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable"

    .line 8
    iget-boolean v2, p0, Lcom/byazt/ete/x$ve;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_filter_version"

    .line 9
    iget-boolean v2, p0, Lcom/byazt/ete/x$ve;->z:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "load_type"

    .line 10
    iget v2, p0, Lcom/byazt/ete/x$ve;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "trans_cache"

    .line 11
    iget v2, p0, Lcom/byazt/ete/x$ve;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "score_config"

    .line 12
    iget-object v2, p0, Lcom/byazt/ete/x$ve;->i:Lcom/byazt/ete/x$uj;

    invoke-virtual {v2}, Lcom/byazt/ete/x$uj;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "control_el"

    .line 13
    iget-object v2, p0, Lcom/byazt/ete/x$ve;->da:Lcom/byazt/ete/x$c;

    invoke-virtual {v2}, Lcom/byazt/ete/x$c;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_count_max"

    .line 14
    iget v2, p0, Lcom/byazt/ete/x$ve;->sl:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "libra_group"

    .line 15
    iget v2, p0, Lcom/byazt/ete/x$ve;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "record_interval_minute"

    .line 16
    iget v2, p0, Lcom/byazt/ete/x$ve;->u:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "record_cache_minute"

    .line 17
    iget v2, p0, Lcom/byazt/ete/x$ve;->yp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cache_available_percent"

    .line 18
    iget-wide v2, p0, Lcom/byazt/ete/x$ve;->m:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "tmax_config"

    .line 19
    iget-object v2, p0, Lcom/byazt/ete/x$ve;->nu:Lcom/byazt/ete/x$n;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/byazt/ete/x$n;->c()Lorg/json/JSONObject;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/byazt/ete/x$ve;->da:Lcom/byazt/ete/x$c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    iget-object v0, p0, Lcom/byazt/ete/x$ve;->da:Lcom/byazt/ete/x$c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ete/x$c;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return p1
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public m()D
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/x$ve;->m:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpg-double v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    cmpl-double v6, v0, v4

    .line 13
    .line 14
    if-lez v6, :cond_1

    .line 15
    .line 16
    return-wide v2

    .line 17
    :cond_1
    return-wide v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public nu()Lcom/byazt/ete/x$n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/x$ve;->nu:Lcom/byazt/ete/x$n;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lcom/byazt/ete/x$uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/x$ve;->i:Lcom/byazt/ete/x$uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/x$ve;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->sl:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->tt:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/byazt/ete/x$ve;->tt:I

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/byazt/ete/x$ve;->tt:I

    .line 9
    .line 10
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/x$ve;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public yp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/x$ve;->yp:I

    .line 2
    .line 3
    return v0
.end method
