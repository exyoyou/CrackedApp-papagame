.class public Lcom/byazt/ete/pu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x239
    }
.end annotation


# static fields
.field public static i:Lorg/json/JSONObject;


# instance fields
.field public a:Lcom/byazt/ete/dz;

.field public c:I

.field public n:I

.field public sp:Lcom/byazt/ete/ma;

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/byazt/ete/bm;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/byazt/ete/pu;->c:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/byazt/ete/pu;->tt:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/byazt/ete/pu;->ve:I

    .line 12
    .line 13
    iput v0, p0, Lcom/byazt/ete/pu;->uj:I

    .line 14
    .line 15
    const/16 v2, 0x64

    .line 16
    .line 17
    iput v2, p0, Lcom/byazt/ete/pu;->n:I

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget p3, p3, Lcom/byazt/ete/bm;->sp:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p3, 0x1

    .line 28
    :goto_0
    const-string v3, "render_control"

    .line 29
    .line 30
    invoke-virtual {p1, v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iput p3, p0, Lcom/byazt/ete/pu;->c:I

    .line 35
    .line 36
    const-string p3, "render"

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    const-string v3, "render_sequence"

    .line 45
    .line 46
    invoke-virtual {p3, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput v3, p0, Lcom/byazt/ete/pu;->tt:I

    .line 51
    .line 52
    const-string v3, "backup_render_control"

    .line 53
    .line 54
    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p0, Lcom/byazt/ete/pu;->ve:I

    .line 59
    .line 60
    const-string v1, "render_thread"

    .line 61
    .line 62
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/byazt/ete/pu;->uj:I

    .line 67
    .line 68
    const-string v0, "reserve_time"

    .line 69
    .line 70
    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    iput p3, p0, Lcom/byazt/ete/pu;->n:I

    .line 75
    .line 76
    :cond_2
    const-string p3, "tpl_info"

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const-string v0, "dynamic_creative"

    .line 83
    .line 84
    if-eqz p3, :cond_4

    .line 85
    .line 86
    new-instance v1, Lcom/byazt/ete/dz;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/byazt/ete/dz;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "id"

    .line 92
    .line 93
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->tt(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "md5"

    .line 101
    .line 102
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->ve(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v2, "url"

    .line 110
    .line 111
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->uj(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v2, "data"

    .line 119
    .line 120
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->n(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v2, "diff_data"

    .line 128
    .line 129
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->a(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->sp(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "version"

    .line 144
    .line 145
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->c(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v2, "material_type"

    .line 153
    .line 154
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->x(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v2, "ugen_url"

    .line 162
    .line 163
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->i(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v2, "ugen_md5"

    .line 171
    .line 172
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->da(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v2, "express_gesture_priority"

    .line 180
    .line 181
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/byazt/ete/dz;->t(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v2, "engine_version"

    .line 189
    .line 190
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-virtual {v1, p3}, Lcom/byazt/ete/dz;->sl(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    .line 198
    .line 199
    invoke-direct {p0, p2}, Lcom/byazt/ete/pu;->c(Ljava/lang/String;)Lcom/byazt/ku/uj;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    if-eqz p3, :cond_3

    .line 204
    .line 205
    invoke-static {p3}, Lcom/byazt/six/tt;->c(Lcom/byazt/ku/uj;)V

    .line 206
    .line 207
    .line 208
    :cond_3
    invoke-virtual {v1}, Lcom/byazt/ete/dz;->i()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-virtual {v1}, Lcom/byazt/ete/dz;->da()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const/4 v2, 0x0

    .line 217
    invoke-static {p3, v1, v2}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    :cond_4
    const-string p3, "tpl_info_v3"

    .line 221
    .line 222
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    if-eqz p3, :cond_5

    .line 227
    .line 228
    invoke-static {p3}, Lcom/byazt/ete/ma;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ma;

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    iput-object p3, p0, Lcom/byazt/ete/pu;->sp:Lcom/byazt/ete/ma;

    .line 233
    .line 234
    invoke-static {}, Lcom/byazt/nq/tt;->c()Lcom/byazt/nq/tt;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v2, "ad"

    .line 239
    .line 240
    invoke-virtual {v1, p3, p2, v2}, Lcom/byazt/nq/tt;->c(Lcom/byazt/ete/ma;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-eqz p1, :cond_6

    .line 248
    .line 249
    iput-object p1, p0, Lcom/byazt/ete/pu;->x:Lorg/json/JSONObject;

    .line 250
    .line 251
    :cond_6
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    .line 10
    .line 11
    return-object p0
.end method

.method public static c(Lcom/byazt/ete/ic;D)D
    .locals 4

    .line 26
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 27
    :cond_0
    iget v2, p0, Lcom/byazt/ete/pu;->c:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-wide v0

    .line 28
    :cond_1
    iget v2, p0, Lcom/byazt/ete/pu;->tt:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    return-wide v0

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/byazt/ete/pu;->x:Lorg/json/JSONObject;

    if-nez p0, :cond_3

    return-wide v0

    :cond_3
    :try_start_0
    const-string v2, "layout_type"

    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p0, :cond_4

    return-wide v0

    :cond_4
    packed-switch p0, :pswitch_data_0

    return-wide v0

    :pswitch_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_0
    div-double/2addr p1, v0

    return-wide p1

    :pswitch_1
    const-wide v0, 0x4003333340000000L    # 2.4000000953674316

    goto :goto_0

    :pswitch_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :pswitch_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :pswitch_4
    const-wide v0, 0x3fecccccc0000000L    # 0.8999999761581421

    goto :goto_0

    :catch_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 21
    :cond_0
    iget p0, p0, Lcom/byazt/ete/pu;->c:I

    return p0
.end method

.method private c(Ljava/lang/String;)Lcom/byazt/ku/uj;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/dz;->tt()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v1}, Lcom/byazt/ete/dz;->uj()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v2}, Lcom/byazt/ete/dz;->ve()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->n()Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v4}, Lcom/byazt/ete/dz;->c()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {}, Lcom/byazt/ku/uj;->c()Lcom/byazt/ku/uj;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v0}, Lcom/byazt/ku/uj;->c(Ljava/lang/String;)Lcom/byazt/ku/uj;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lcom/byazt/ku/uj;->tt(Ljava/lang/String;)Lcom/byazt/ku/uj;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/ku/uj;->ve(Ljava/lang/String;)Lcom/byazt/ku/uj;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Lcom/byazt/ku/uj;->uj(Ljava/lang/String;)Lcom/byazt/ku/uj;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v4}, Lcom/byazt/ku/uj;->n(Ljava/lang/String;)Lcom/byazt/ku/uj;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/byazt/ku/uj;->a(Ljava/lang/String;)Lcom/byazt/ku/uj;

    move-result-object p1

    return-object p1
.end method

.method public static c()Lorg/json/JSONObject;
    .locals 1

    .line 6
    sget-object v0, Lcom/byazt/ete/pu;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static c(Lcom/byazt/ete/ic;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/byazt/ete/pu;->c:I

    return-void
.end method

.method public static c(Lcom/byazt/it/n;)V
    .locals 2

    :try_start_0
    const-string v0, "dark_mode_config"

    .line 5
    sget-object v1, Lcom/byazt/ete/pu;->i:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "app_common_config"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "dark_mode_config"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/byazt/ete/pu;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-void
.end method

.method public static c(I)Z
    .locals 8

    .line 22
    sget-object v0, Lcom/byazt/ete/pu;->i:Lorg/json/JSONObject;

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v4

    :cond_2
    :try_start_0
    const-string v5, "support_slot_type"

    .line 23
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_5

    if-eq p0, v4, :cond_4

    if-eq p0, v2, :cond_4

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v4

    .line 24
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v4

    :cond_8
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_a

    .line 25
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v7, :cond_9

    return v4

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    return v3

    :catch_0
    nop

    if-eq p0, v4, :cond_c

    if-eq p0, v2, :cond_c

    if-ne p0, v1, :cond_b

    goto :goto_4

    :cond_b
    return v3

    :cond_c
    :goto_4
    return v4
.end method

.method public static da(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    return v0
.end method

.method public static i(Lcom/byazt/ete/ic;)Lcom/byazt/ku/uj;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Lcom/byazt/ete/pu;->c(Ljava/lang/String;)Lcom/byazt/ku/uj;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static n(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x64

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/pu;->n:I

    .line 11
    .line 12
    return p0
.end method

.method public static sl(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    return v0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/pu;->sp:Lcom/byazt/ete/ma;

    .line 10
    .line 11
    return-object p0
.end method

.method public static t(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne p0, v1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_0
    iget p0, p0, Lcom/byazt/ete/pu;->tt:I

    return p0
.end method

.method public static tt(Lcom/byazt/it/n;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "dark_mode_config"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/byazt/ete/pu;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static u(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/pu;->x:Lorg/json/JSONObject;

    .line 10
    .line 11
    return-object p0
.end method

.method public static uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/pu;->uj:I

    .line 10
    .line 11
    return p0
.end method

.method public static ve(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/pu;->ve:I

    .line 10
    .line 11
    return p0
.end method

.method public static x(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/pu;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/ete/dz;->sl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    return v0

    .line 26
    :cond_2
    iget p0, p0, Lcom/byazt/ete/pu;->tt:I

    .line 27
    .line 28
    const/16 v1, 0x9

    .line 29
    .line 30
    if-eq p0, v1, :cond_4

    .line 31
    .line 32
    const/16 v1, 0xa

    .line 33
    .line 34
    if-ne p0, v1, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    return v0

    .line 38
    :cond_4
    :goto_0
    return v2
.end method

.method private static yp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/pu;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gy()Lcom/byazt/ete/pu;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public tt(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "render_control"

    .line 2
    iget v1, p0, Lcom/byazt/ete/pu;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "render_sequence"

    .line 4
    iget v2, p0, Lcom/byazt/ete/pu;->tt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "backup_render_control"

    .line 5
    iget v2, p0, Lcom/byazt/ete/pu;->ve:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "render_thread"

    .line 6
    iget v2, p0, Lcom/byazt/ete/pu;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reserve_time"

    .line 7
    iget v2, p0, Lcom/byazt/ete/pu;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "render"

    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "dynamic_creative"

    if-eqz v0, :cond_0

    .line 10
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 11
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "md5"

    .line 12
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->ve()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 13
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 14
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "diff_data"

    .line 15
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    .line 16
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v2, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v2}, Lcom/byazt/ete/dz;->sp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "material_type"

    .line 18
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ugen_url"

    .line 19
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ugen_md5"

    .line 20
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->da()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "engine_version"

    .line 21
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->sl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "express_gesture_priority"

    .line 22
    iget-object v3, p0, Lcom/byazt/ete/pu;->a:Lcom/byazt/ete/dz;

    invoke-virtual {v3}, Lcom/byazt/ete/dz;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tpl_info"

    .line 23
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/pu;->x:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v0, p0, Lcom/byazt/ete/pu;->sp:Lcom/byazt/ete/ma;

    if-eqz v0, :cond_1

    const-string v1, "tpl_info_v3"

    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ma;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
