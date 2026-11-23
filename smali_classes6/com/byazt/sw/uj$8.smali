.class public final Lcom/byazt/sw/uj$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x364,
        0x6c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sw/uj;->ve(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oce/c;

.field public final synthetic tt:Lcom/byazt/afw/nu$c;


# direct methods
.method public constructor <init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sw/uj$8;->c:Lcom/byazt/oce/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/byazt/sw/uj$8;->c:Lcom/byazt/oce/c;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/sw/uj;->tt()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/sw/uj$8;->c:Lcom/byazt/oce/c;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/byazt/afw/nu;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->uj()Lcom/byazt/jzl/a;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->n()Lcom/byazt/ete/ic;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    if-nez v9, :cond_2

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->tt()J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    iget-object v1, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->uj()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    new-instance v12, Lcom/byazt/afw/ve;

    .line 53
    .line 54
    invoke-direct {v12}, Lcom/byazt/afw/ve;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/byazt/afw/nu$c;->ve()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-virtual {v12, v3, v4}, Lcom/byazt/afw/ve;->ve(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12, v1, v2}, Lcom/byazt/afw/ve;->uj(J)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->sp()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v12, v1}, Lcom/byazt/afw/ve;->tt(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->x()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v12, v1}, Lcom/byazt/afw/ve;->ve(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9}, Lcom/byazt/ete/ic;->xx()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {v1}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1, v8}, Lcom/byazt/fk/c;->getCachedSize(Lcom/byazt/fk/u;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-virtual {v12, v1, v2}, Lcom/byazt/afw/ve;->tt(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v10, v11}, Lcom/byazt/afw/ve;->c(J)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/byazt/afw/nu$c;->i()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v12, v1}, Lcom/byazt/afw/ve;->c(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->ve()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->c()J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    sub-long v6, v1, v4

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/byazt/afw/nu;->tt()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v8}, Lcom/byazt/jzl/a;->getPlayerType()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    move-object v1, v8

    .line 137
    move-object v5, v9

    .line 138
    invoke-static/range {v1 .. v7}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "EXTRA_PLAY_START"

    .line 143
    .line 144
    invoke-virtual {v8, v1}, Lcom/byazt/jzl/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/byazt/sw/uj;->c(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v9}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v2, Lcom/byazt/afw/tt;

    .line 156
    .line 157
    invoke-direct {v2, v9, v1, v0, v12}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/byazt/afw/nu$c;->u()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {v2, v0}, Lcom/byazt/afw/tt;->c(Z)V

    .line 167
    .line 168
    .line 169
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 170
    .line 171
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v1, "duration"

    .line 175
    .line 176
    invoke-virtual {v0, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    const-string v1, "percent"

    .line 180
    .line 181
    iget-object v3, p0, Lcom/byazt/sw/uj$8;->tt:Lcom/byazt/afw/nu$c;

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/byazt/afw/nu$c;->i()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    const-string v1, "endcard_skip"

    .line 191
    .line 192
    invoke-static {v2, v1, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/afw/tt;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :goto_0
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Lcom/byazt/sw/uj$8$1;

    .line 205
    .line 206
    invoke-direct {v1, p0}, Lcom/byazt/sw/uj$8$1;-><init>(Lcom/byazt/sw/uj$8;)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v2, 0x3e8

    .line 210
    .line 211
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;J)V

    .line 212
    .line 213
    .line 214
    :cond_3
    :goto_1
    return-void
.end method
