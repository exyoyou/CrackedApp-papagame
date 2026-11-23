.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/widget/BZCarouselView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/beizi/ad/model/c$d;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILcom/beizi/ad/model/c$d;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    .line 35
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-lt v0, p1, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/beizi/ad/model/a/e;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->H(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->a()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/16 v3, 0x37

    .line 90
    .line 91
    invoke-static {v0, v1, v3, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->K(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->c()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v0, v1, v2, v3, v4}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->L(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const/16 v1, 0x2f

    .line 132
    .line 133
    if-nez v0, :cond_1

    .line 134
    .line 135
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->a()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v0, v2, v1, v3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->b()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->c()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v0, v1, v2, v3, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/d/a;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/d/a;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->ac()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_3

    .line 192
    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-lez v0, :cond_3

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_3

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Lcom/beizi/ad/model/c$d;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$d;->u()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_2

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$d;->v()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_2

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x0

    .line 229
    :goto_0
    if-nez v0, :cond_4

    .line 230
    .line 231
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 232
    .line 233
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/d/a;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 238
    .line 239
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    :cond_4
    if-eqz v0, :cond_5

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$d;->e()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_5

    .line 254
    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-lez v0, :cond_5

    .line 260
    .line 261
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Lcom/beizi/ad/model/c$a;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/beizi/ad/model/c$a;->b()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Ljava/lang/String;)Lcom/beizi/ad/model/a/e;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    if-eqz p1, :cond_5

    .line 279
    .line 280
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 281
    .line 282
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->a()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-static {v0, v2, v1, v3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 300
    .line 301
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->b()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/e;->c()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {v0, v1, v2, v3, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 317
    .line 318
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Q(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    :cond_6
    :goto_2
    return-void
.end method
