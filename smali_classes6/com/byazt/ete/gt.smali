.class public Lcom/byazt/ete/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xc3
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public da:I

.field public gr:I

.field public gt:I

.field public gu:Ljava/lang/String;

.field public i:I

.field public m:I

.field public my:I

.field public n:I

.field public nu:I

.field public qy:Ljava/lang/String;

.field public rh:I

.field public rl:I

.field public sl:I

.field public sp:I

.field public t:I

.field public tt:I

.field public u:I

.field public uj:I

.field public ve:I

.field public x:I

.field public yp:I

.field public z:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ete/gt;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/byazt/ete/gt;->tt:I

    .line 9
    .line 10
    iput v1, p0, Lcom/byazt/ete/gt;->ve:I

    .line 11
    .line 12
    iput v1, p0, Lcom/byazt/ete/gt;->uj:I

    .line 13
    .line 14
    iput v1, p0, Lcom/byazt/ete/gt;->n:I

    .line 15
    .line 16
    iput v0, p0, Lcom/byazt/ete/gt;->a:I

    .line 17
    .line 18
    iput v1, p0, Lcom/byazt/ete/gt;->sp:I

    .line 19
    .line 20
    iput v0, p0, Lcom/byazt/ete/gt;->x:I

    .line 21
    .line 22
    iput v0, p0, Lcom/byazt/ete/gt;->i:I

    .line 23
    .line 24
    iput v0, p0, Lcom/byazt/ete/gt;->da:I

    .line 25
    .line 26
    const/16 v2, 0x12c

    .line 27
    .line 28
    iput v2, p0, Lcom/byazt/ete/gt;->sl:I

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    iput v3, p0, Lcom/byazt/ete/gt;->t:I

    .line 32
    .line 33
    iput v1, p0, Lcom/byazt/ete/gt;->u:I

    .line 34
    .line 35
    iput v1, p0, Lcom/byazt/ete/gt;->yp:I

    .line 36
    .line 37
    const/high16 v4, 0x1e00000

    .line 38
    .line 39
    iput v4, p0, Lcom/byazt/ete/gt;->z:I

    .line 40
    .line 41
    iput v0, p0, Lcom/byazt/ete/gt;->m:I

    .line 42
    .line 43
    iput v0, p0, Lcom/byazt/ete/gt;->nu:I

    .line 44
    .line 45
    iput v0, p0, Lcom/byazt/ete/gt;->rh:I

    .line 46
    .line 47
    iput v0, p0, Lcom/byazt/ete/gt;->my:I

    .line 48
    .line 49
    iput v0, p0, Lcom/byazt/ete/gt;->gt:I

    .line 50
    .line 51
    iput v0, p0, Lcom/byazt/ete/gt;->rl:I

    .line 52
    .line 53
    iput v0, p0, Lcom/byazt/ete/gt;->gr:I

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    const-string v5, "auto_open"

    .line 59
    .line 60
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iput v5, p0, Lcom/byazt/ete/gt;->sp:I

    .line 65
    .line 66
    const-string v5, "download_mode"

    .line 67
    .line 68
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iput v5, p0, Lcom/byazt/ete/gt;->x:I

    .line 73
    .line 74
    const-string v5, "auto_control"

    .line 75
    .line 76
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    iput v5, p0, Lcom/byazt/ete/gt;->i:I

    .line 81
    .line 82
    const-string v5, "auto_control_choose"

    .line 83
    .line 84
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    iput v5, p0, Lcom/byazt/ete/gt;->da:I

    .line 89
    .line 90
    const-string v5, "auto_control_time"

    .line 91
    .line 92
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iput v2, p0, Lcom/byazt/ete/gt;->sl:I

    .line 97
    .line 98
    const-string v2, "download_type"

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput v2, p0, Lcom/byazt/ete/gt;->t:I

    .line 105
    .line 106
    const-string v2, "if_suspend_download"

    .line 107
    .line 108
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput v2, p0, Lcom/byazt/ete/gt;->u:I

    .line 113
    .line 114
    const-string v2, "if_send_click"

    .line 115
    .line 116
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iput v2, p0, Lcom/byazt/ete/gt;->c:I

    .line 121
    .line 122
    const-string v2, "dl_popup"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput v2, p0, Lcom/byazt/ete/gt;->tt:I

    .line 129
    .line 130
    const-string v2, "market_popup"

    .line 131
    .line 132
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    iput v2, p0, Lcom/byazt/ete/gt;->ve:I

    .line 137
    .line 138
    const-string v2, "if_pop_lp"

    .line 139
    .line 140
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iput v2, p0, Lcom/byazt/ete/gt;->uj:I

    .line 145
    .line 146
    const-string v2, "pop_up_style_id"

    .line 147
    .line 148
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iput v2, p0, Lcom/byazt/ete/gt;->n:I

    .line 153
    .line 154
    const-string v2, "dl_network"

    .line 155
    .line 156
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    iput v1, p0, Lcom/byazt/ete/gt;->yp:I

    .line 161
    .line 162
    const-string v1, "dl_size"

    .line 163
    .line 164
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    iput v1, p0, Lcom/byazt/ete/gt;->z:I

    .line 169
    .line 170
    const-string v1, "if_toast_market"

    .line 171
    .line 172
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    iput v1, p0, Lcom/byazt/ete/gt;->m:I

    .line 177
    .line 178
    const-string v1, "enable_download_opt"

    .line 179
    .line 180
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iput v1, p0, Lcom/byazt/ete/gt;->nu:I

    .line 185
    .line 186
    const-string v1, "show_7factors_card"

    .line 187
    .line 188
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, p0, Lcom/byazt/ete/gt;->rl:I

    .line 193
    .line 194
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_1

    .line 199
    .line 200
    iput v0, p0, Lcom/byazt/ete/gt;->rh:I

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_1
    const-string v1, "dl_suspend_popup"

    .line 204
    .line 205
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iput v1, p0, Lcom/byazt/ete/gt;->rh:I

    .line 210
    .line 211
    :goto_0
    const-string v1, "is_use_obm_convert"

    .line 212
    .line 213
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    iput v1, p0, Lcom/byazt/ete/gt;->my:I

    .line 218
    .line 219
    const-string v1, "enable_notification"

    .line 220
    .line 221
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iput v1, p0, Lcom/byazt/ete/gt;->gt:I

    .line 226
    .line 227
    const-string v1, "open_market_in_app"

    .line 228
    .line 229
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, p0, Lcom/byazt/ete/gt;->a:I

    .line 234
    .line 235
    const-string v1, "resume_task"

    .line 236
    .line 237
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iput v0, p0, Lcom/byazt/ete/gt;->gr:I

    .line 242
    .line 243
    const-string v0, "ugen_url"

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iput-object v0, p0, Lcom/byazt/ete/gt;->qy:Ljava/lang/String;

    .line 250
    .line 251
    const-string v0, "ugen_md5"

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iput-object p1, p0, Lcom/byazt/ete/gt;->gu:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v0, p0, Lcom/byazt/ete/gt;->qy:Ljava/lang/String;

    .line 260
    .line 261
    const/4 v1, 0x0

    .line 262
    invoke-static {v0, p1, v1}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    .line 263
    .line 264
    .line 265
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->t:I

    return p0
.end method

.method public static a(Lcom/byazt/ete/gt;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Lcom/byazt/ete/gt;->m:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/byazt/ete/gt;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->tt:I

    return p0
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Lcom/byazt/ete/gt;->nu:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static da(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->u:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method

.method private static gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;
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
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->u_()Lcom/byazt/ete/gt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static i(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x12c

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->sl:I

    .line 11
    .line 12
    return p0
.end method

.method public static m(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->rh:I

    .line 10
    .line 11
    return p0
.end method

.method public static my(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->a:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method

.method public static n(Lcom/byazt/ete/gt;)I
    .locals 1

    if-nez p0, :cond_0

    const/high16 p0, 0x1e00000

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->z:I

    const/high16 v0, 0x100000

    mul-int p0, p0, v0

    return p0
.end method

.method public static n(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->x:I

    return p0
.end method

.method public static nu(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/gt;->qy:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static rh(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/gt;->gu:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public static sl(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->c:I

    .line 10
    .line 11
    return p0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->i:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static t(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->tt:I

    .line 10
    .line 11
    return p0
.end method

.method public static tt(Lcom/byazt/ete/gt;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->ve:I

    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/gt;->a()I

    move-result p0

    return p0
.end method

.method public static u(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->ve:I

    .line 10
    .line 11
    return p0
.end method

.method public static uj(Lcom/byazt/ete/gt;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->yp:I

    return p0
.end method

.method public static uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->sp:I

    return p0
.end method

.method public static ve(Lcom/byazt/ete/gt;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_0
    iget p0, p0, Lcom/byazt/ete/gt;->uj:I

    return p0
.end method

.method public static ve(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "close_obm"

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/gt;->a()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gr()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "open"

    return-object p0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->da:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method

.method public static yp(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->gr:I

    .line 10
    .line 11
    return p0
.end method

.method public static z(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/gt;->gt(Lcom/byazt/ete/ic;)Lcom/byazt/ete/gt;

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
    iget p0, p0, Lcom/byazt/ete/gt;->n:I

    .line 10
    .line 11
    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/byazt/ete/gt;->my:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/byazt/ete/gt;->tt:I

    return v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auto_open"

    .line 6
    iget v2, p0, Lcom/byazt/ete/gt;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download_mode"

    .line 7
    iget v2, p0, Lcom/byazt/ete/gt;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download_type"

    .line 8
    iget v2, p0, Lcom/byazt/ete/gt;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "auto_control"

    .line 9
    iget v2, p0, Lcom/byazt/ete/gt;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "auto_control_choose"

    .line 10
    iget v2, p0, Lcom/byazt/ete/gt;->da:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "auto_control_time"

    .line 11
    iget v2, p0, Lcom/byazt/ete/gt;->sl:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "if_suspend_download"

    .line 12
    iget v2, p0, Lcom/byazt/ete/gt;->u:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "if_send_click"

    .line 13
    iget v2, p0, Lcom/byazt/ete/gt;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dl_popup"

    .line 14
    iget v2, p0, Lcom/byazt/ete/gt;->tt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "market_popup"

    .line 15
    iget v2, p0, Lcom/byazt/ete/gt;->ve:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "if_pop_lp"

    .line 16
    iget v2, p0, Lcom/byazt/ete/gt;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pop_up_style_id"

    .line 17
    iget v2, p0, Lcom/byazt/ete/gt;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dl_network"

    .line 18
    iget v2, p0, Lcom/byazt/ete/gt;->yp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dl_size"

    .line 19
    iget v2, p0, Lcom/byazt/ete/gt;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "if_toast_market"

    .line 20
    iget v2, p0, Lcom/byazt/ete/gt;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enable_download_opt"

    .line 21
    iget v2, p0, Lcom/byazt/ete/gt;->nu:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dl_suspend_popup"

    .line 22
    iget v2, p0, Lcom/byazt/ete/gt;->rh:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_use_obm_convert"

    .line 23
    iget v2, p0, Lcom/byazt/ete/gt;->my:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ugen_url"

    .line 24
    iget-object v2, p0, Lcom/byazt/ete/gt;->qy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ugen_md5"

    .line 25
    iget-object v2, p0, Lcom/byazt/ete/gt;->gu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enable_notification"

    .line 26
    iget v2, p0, Lcom/byazt/ete/gt;->gt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_7factors_card"

    .line 27
    iget v2, p0, Lcom/byazt/ete/gt;->rl:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "open_market_in_app"

    .line 28
    iget v2, p0, Lcom/byazt/ete/gt;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "resume_task"

    .line 29
    iget v2, p0, Lcom/byazt/ete/gt;->gr:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download_conf"

    .line 30
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public n()Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/byazt/ete/gt;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sp()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/byazt/ete/gt;->rh:I

    return v0
.end method

.method public tt()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/byazt/ete/gt;->x:I

    return v0
.end method

.method public uj()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/byazt/ete/gt;->t:I

    return v0
.end method

.method public ve()Z
    .locals 2

    .line 7
    iget v0, p0, Lcom/byazt/ete/gt;->rl:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
