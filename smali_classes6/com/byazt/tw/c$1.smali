.class public Lcom/byazt/tw/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x45,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Lcom/byazt/yl/ve;

.field public final synthetic da:Lcom/byazt/tw/c;

.field public final synthetic i:J

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:I

.field public final synthetic tt:Lcom/byazt/ng/uj;

.field public final synthetic uj:Z

.field public final synthetic ve:I

.field public final synthetic x:Lcom/byazt/ll/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tw/c;Lcom/byazt/yl/ve;Lcom/byazt/ng/uj;IZLjava/lang/String;Ljava/lang/String;ILcom/byazt/ll/tt;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tw/c$1;->da:Lcom/byazt/tw/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tw/c$1;->tt:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/tw/c$1;->ve:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/byazt/tw/c$1;->uj:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/tw/c$1;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/tw/c$1;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput p8, p0, Lcom/byazt/tw/c$1;->sp:I

    .line 16
    .line 17
    iput-object p9, p0, Lcom/byazt/tw/c$1;->x:Lcom/byazt/ll/tt;

    .line 18
    .line 19
    iput-wide p10, p0, Lcom/byazt/tw/c$1;->i:J

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isAdnPreload()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/byazt/tw/c$1;->tt:Lcom/byazt/ng/uj;

    .line 17
    .line 18
    const-string v4, "media_show_listen"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "adn_preload"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v3, v4, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v3, p0, Lcom/byazt/tw/c$1;->ve:I

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "play_again"

    .line 41
    .line 42
    invoke-virtual {v0, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v3, p0, Lcom/byazt/tw/c$1;->uj:Z

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "is_repeat"

    .line 53
    .line 54
    invoke-virtual {v0, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/tw/c$1;->n:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v3, p0, Lcom/byazt/tw/c$1;->tt:Lcom/byazt/ng/uj;

    .line 62
    .line 63
    const-string v4, "sub_adn_name"

    .line 64
    .line 65
    invoke-virtual {v3, v4, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/byazt/tw/c$1;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/byazt/tw/c$1;->tt:Lcom/byazt/ng/uj;

    .line 77
    .line 78
    const-string v3, "callstack_message"

    .line 79
    .line 80
    iget-object v4, p0, Lcom/byazt/tw/c$1;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/byazt/qe/ve;->lr()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "enable_label_return"

    .line 103
    .line 104
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/byazt/bp/c;->c()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "if_labelapi_call"

    .line 120
    .line 121
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iget v3, p0, Lcom/byazt/tw/c$1;->sp:I

    .line 125
    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const-string v4, "is_fill_quick_ad"

    .line 131
    .line 132
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/byazt/tw/c$1;->x:Lcom/byazt/ll/tt;

    .line 138
    .line 139
    invoke-static {v3, v4, v0}, Lcom/byazt/bg/ve;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    iget-wide v3, p0, Lcom/byazt/tw/c$1;->i:J

    .line 143
    .line 144
    const-wide/16 v5, 0x0

    .line 145
    .line 146
    cmp-long v7, v3, v5

    .line 147
    .line 148
    if-ltz v7, :cond_3

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    const/4 v1, 0x0

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 153
    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isCustomAd()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    invoke-static {}, Lcom/byazt/vx/nu;->ve()D

    .line 163
    .line 164
    .line 165
    move-result-wide v2

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "custom_adn_sample_ratio"

    .line 171
    .line 172
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const-string v2, "custom_adn_sample_ratio_result"

    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    if-eqz v1, :cond_4

    .line 185
    .line 186
    iget-wide v1, p0, Lcom/byazt/tw/c$1;->i:J

    .line 187
    .line 188
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v2, "custom_adn_rec_time"

    .line 193
    .line 194
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_4
    iget-object v1, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 198
    .line 199
    if-eqz v1, :cond_5

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdLifecycleId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_5

    .line 210
    .line 211
    iget-object v1, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdLifecycleId()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/byazt/gc/c;->c(Ljava/util/Map;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_5
    iget-object v1, p0, Lcom/byazt/tw/c$1;->tt:Lcom/byazt/ng/uj;

    .line 221
    .line 222
    iget-object v2, p0, Lcom/byazt/tw/c$1;->x:Lcom/byazt/ll/tt;

    .line 223
    .line 224
    const/4 v3, 0x0

    .line 225
    iget-object v4, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 226
    .line 227
    invoke-static {v1, v2, v3, v4, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/byazt/tw/c$1;->tt:Lcom/byazt/ng/uj;

    .line 235
    .line 236
    invoke-static {v1, v2, v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->da()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    iget-object v0, p0, Lcom/byazt/tw/c$1;->c:Lcom/byazt/yl/ve;

    .line 250
    .line 251
    if-eqz v0, :cond_6

    .line 252
    .line 253
    const-string v1, "pangle"

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_6

    .line 264
    .line 265
    invoke-static {}, Lcom/byazt/ng/ve;->uj()V

    .line 266
    .line 267
    .line 268
    :cond_6
    return-void
.end method
