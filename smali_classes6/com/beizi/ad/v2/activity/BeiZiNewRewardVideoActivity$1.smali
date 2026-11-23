.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/16 v0, 0x2711

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/16 v0, 0x271a

    .line 27
    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    .line 39
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/VideoView;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/VideoView;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/VideoView;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/widget/VideoView;->getDuration()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/VideoView;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 96
    .line 97
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 101
    .line 102
    invoke-static {v0, p1, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;II)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_b

    .line 112
    .line 113
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_b

    .line 120
    .line 121
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_b

    .line 128
    .line 129
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_4
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 140
    .line 141
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->k(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    mul-int/lit16 v1, p1, 0x3e8

    .line 159
    .line 160
    :cond_5
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    mul-int/lit16 p1, p1, 0x3e8

    .line 167
    .line 168
    sub-int/2addr p1, v1

    .line 169
    div-int/lit16 p1, p1, 0x3e8

    .line 170
    .line 171
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    mul-int/lit16 v2, v2, 0x3e8

    .line 178
    .line 179
    sub-int/2addr v2, v1

    .line 180
    div-int/lit16 v2, v2, 0x3e8

    .line 181
    .line 182
    invoke-static {v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 192
    .line 193
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-le v0, v2, :cond_6

    .line 198
    .line 199
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-lez v0, :cond_6

    .line 206
    .line 207
    return-void

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 224
    .line 225
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-ne v0, v2, :cond_7

    .line 230
    .line 231
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->q(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    mul-int/lit16 v2, v2, 0x3e8

    .line 238
    .line 239
    sub-int/2addr v2, v1

    .line 240
    invoke-static {v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 241
    .line 242
    .line 243
    :cond_7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 244
    .line 245
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 250
    .line 251
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-ne v0, v2, :cond_9

    .line 256
    .line 257
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-gtz v0, :cond_9

    .line 264
    .line 265
    if-gtz p1, :cond_8

    .line 266
    .line 267
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 268
    .line 269
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 274
    .line 275
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->s(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 276
    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 280
    .line 281
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V

    .line 282
    .line 283
    .line 284
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_a

    .line 291
    .line 292
    if-gtz p1, :cond_a

    .line 293
    .line 294
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 295
    .line 296
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 297
    .line 298
    .line 299
    :cond_a
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 300
    .line 301
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->q(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    mul-int/lit16 p1, p1, 0x3e8

    .line 306
    .line 307
    sub-int/2addr p1, v1

    .line 308
    if-gez p1, :cond_c

    .line 309
    .line 310
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 311
    .line 312
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 317
    .line 318
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-ne p1, v0, :cond_c

    .line 323
    .line 324
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 325
    .line 326
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-nez p1, :cond_c

    .line 331
    .line 332
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 333
    .line 334
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_b
    :goto_1
    return-void

    .line 339
    :catchall_0
    move-exception p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    :cond_c
    :goto_2
    return-void
.end method
