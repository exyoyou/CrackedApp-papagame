.class Lcom/join/mgps/fragment/MyArchiveFragment$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment$u;->a(Lcom/join/mgps/fragment/MyArchiveFragment$u$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

.field final synthetic d:Lcom/join/mgps/fragment/MyArchiveFragment$u;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment$u;ILcom/join/mgps/fragment/MyArchiveFragment$u$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$position",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string v0, "\u4e2a\u5b58\u6863"

    .line 20
    .line 21
    const-string v1, "\u5df2\u9009\u62e9"

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    if-nez p1, :cond_c

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 32
    .line 33
    iget v5, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    const v7, 0x7f08018f

    .line 37
    .line 38
    .line 39
    if-ne v5, v6, :cond_5

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 42
    .line 43
    iget v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 44
    .line 45
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v5, 0x5

    .line 56
    if-eq p1, v5, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 77
    .line 78
    iget v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 79
    .line 80
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 85
    .line 86
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    const/4 v2, 0x0

    .line 91
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 92
    .line 93
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 94
    .line 95
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-ge p1, v6, :cond_1

    .line 102
    .line 103
    iget-object v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 104
    .line 105
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 106
    .line 107
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-ne v6, v4, :cond_0

    .line 120
    .line 121
    iget-object v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 122
    .line 123
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 124
    .line 125
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eq v6, v5, :cond_0

    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    const/4 p1, 0x0

    .line 145
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 146
    .line 147
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 148
    .line 149
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-ge v3, v6, :cond_3

    .line 156
    .line 157
    iget-object v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 158
    .line 159
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 160
    .line 161
    iget-object v6, v6, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-ne v6, v5, :cond_2

    .line 174
    .line 175
    add-int/lit8 p1, p1, 0x1

    .line 176
    .line 177
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v5, "SSS-->"

    .line 186
    .line 187
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v5, "ssss->"

    .line 194
    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 202
    .line 203
    iget-object v3, v3, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 204
    .line 205
    iget-object v3, v3, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 206
    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    sub-int/2addr v0, p1

    .line 239
    if-ne v0, v2, :cond_b

    .line 240
    .line 241
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 242
    .line 243
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 244
    .line 245
    iput-boolean v4, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->L:Z

    .line 246
    .line 247
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 248
    .line 249
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 255
    .line 256
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 257
    .line 258
    const-string v0, "\u5df2\u5907\u4efd"

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->t0(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_5
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 266
    .line 267
    iget v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 268
    .line 269
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_a

    .line 280
    .line 281
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 282
    .line 283
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 289
    .line 290
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 296
    .line 297
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 298
    .line 299
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 300
    .line 301
    iget v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 302
    .line 303
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 308
    .line 309
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 310
    .line 311
    .line 312
    const/4 p1, 0x0

    .line 313
    const/4 v2, 0x0

    .line 314
    :goto_2
    iget-object v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 315
    .line 316
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 317
    .line 318
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-ge p1, v5, :cond_7

    .line 325
    .line 326
    iget-object v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 327
    .line 328
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 329
    .line 330
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 331
    .line 332
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 337
    .line 338
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-ne v5, v4, :cond_6

    .line 343
    .line 344
    iget-object v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 345
    .line 346
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 347
    .line 348
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 349
    .line 350
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 355
    .line 356
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_6

    .line 361
    .line 362
    add-int/lit8 v2, v2, 0x1

    .line 363
    .line 364
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_7
    const/4 p1, 0x0

    .line 368
    :goto_3
    iget-object v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 369
    .line 370
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 371
    .line 372
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 373
    .line 374
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-ge v3, v5, :cond_9

    .line 379
    .line 380
    iget-object v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 381
    .line 382
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 383
    .line 384
    iget-object v5, v5, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 385
    .line 386
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 391
    .line 392
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-nez v5, :cond_8

    .line 397
    .line 398
    add-int/lit8 p1, p1, 0x1

    .line 399
    .line 400
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_9
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 404
    .line 405
    iget-object v3, v3, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 406
    .line 407
    iget-object v3, v3, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 408
    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 431
    .line 432
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 435
    .line 436
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    sub-int/2addr v0, p1

    .line 441
    if-ne v0, v2, :cond_b

    .line 442
    .line 443
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 444
    .line 445
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 446
    .line 447
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 448
    .line 449
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 450
    .line 451
    .line 452
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 453
    .line 454
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 455
    .line 456
    iput-boolean v4, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->L:Z

    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 460
    .line 461
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 462
    .line 463
    const-string v0, "\u5df2\u4e0b\u8f7d"

    .line 464
    .line 465
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->t0(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 469
    .line 470
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 471
    .line 472
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 473
    .line 474
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_6

    .line 478
    .line 479
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 480
    .line 481
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 482
    .line 483
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 487
    .line 488
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 489
    .line 490
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    .line 492
    .line 493
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 494
    .line 495
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 496
    .line 497
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 498
    .line 499
    iget v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->b:I

    .line 500
    .line 501
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 506
    .line 507
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 508
    .line 509
    .line 510
    const/4 p1, 0x0

    .line 511
    :goto_5
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 512
    .line 513
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 514
    .line 515
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 516
    .line 517
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    if-ge v3, v2, :cond_e

    .line 522
    .line 523
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 524
    .line 525
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 526
    .line 527
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 528
    .line 529
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 534
    .line 535
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-ne v2, v4, :cond_d

    .line 540
    .line 541
    add-int/lit8 p1, p1, 0x1

    .line 542
    .line 543
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 544
    .line 545
    goto :goto_5

    .line 546
    :cond_e
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 547
    .line 548
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 549
    .line 550
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 551
    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    .line 572
    .line 573
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 574
    .line 575
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 576
    .line 577
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 578
    .line 579
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-eq v0, p1, :cond_f

    .line 584
    .line 585
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 586
    .line 587
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 588
    .line 589
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 590
    .line 591
    const v0, 0x7f08018e

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 595
    .line 596
    .line 597
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;->d:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 598
    .line 599
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 600
    .line 601
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 602
    .line 603
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 604
    .line 605
    .line 606
    :goto_6
    return-void
.end method
