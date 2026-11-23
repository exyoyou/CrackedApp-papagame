.class public Lf5/e;
.super Lf5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/e$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:[I

.field public s:[I

.field public t:[I

.field public u:Z

.field public v:[I

.field public w:Lf5/e$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf5/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lf5/e;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/read/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/h264/read/b;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lf5/e;

    .line 7
    .line 8
    invoke-direct {p0}, Lf5/e;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "PPS: pic_parameter_set_id"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Lf5/e;->e:I

    .line 18
    .line 19
    const-string v1, "PPS: seq_parameter_set_id"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lf5/e;->f:I

    .line 26
    .line 27
    const-string v1, "PPS: entropy_coding_mode_flag"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput-boolean v1, p0, Lf5/e;->a:Z

    .line 34
    .line 35
    const-string v1, "PPS: pic_order_present_flag"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput-boolean v1, p0, Lf5/e;->g:Z

    .line 42
    .line 43
    const-string v1, "PPS: num_slice_groups_minus1"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, p0, Lf5/e;->h:I

    .line 50
    .line 51
    const/4 v2, 0x6

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x2

    .line 54
    if-lez v1, :cond_9

    .line 55
    .line 56
    const-string v1, "PPS: slice_group_map_type"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lf5/e;->i:I

    .line 63
    .line 64
    iget v5, p0, Lf5/e;->h:I

    .line 65
    .line 66
    add-int/lit8 v6, v5, 0x1

    .line 67
    .line 68
    new-array v6, v6, [I

    .line 69
    .line 70
    iput-object v6, p0, Lf5/e;->r:[I

    .line 71
    .line 72
    add-int/lit8 v6, v5, 0x1

    .line 73
    .line 74
    new-array v6, v6, [I

    .line 75
    .line 76
    iput-object v6, p0, Lf5/e;->s:[I

    .line 77
    .line 78
    add-int/lit8 v6, v5, 0x1

    .line 79
    .line 80
    new-array v6, v6, [I

    .line 81
    .line 82
    iput-object v6, p0, Lf5/e;->t:[I

    .line 83
    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    :goto_0
    iget v5, p0, Lf5/e;->h:I

    .line 88
    .line 89
    if-le v1, v5, :cond_0

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_0
    iget-object v5, p0, Lf5/e;->t:[I

    .line 94
    .line 95
    const-string v6, "PPS: run_length_minus1"

    .line 96
    .line 97
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    aput v6, v5, v1

    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    if-ne v1, v4, :cond_3

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_1
    iget v5, p0, Lf5/e;->h:I

    .line 110
    .line 111
    if-lt v1, v5, :cond_2

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_2
    iget-object v5, p0, Lf5/e;->r:[I

    .line 115
    .line 116
    const-string v6, "PPS: top_left"

    .line 117
    .line 118
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    aput v6, v5, v1

    .line 123
    .line 124
    iget-object v5, p0, Lf5/e;->s:[I

    .line 125
    .line 126
    const-string v6, "PPS: bottom_right"

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    aput v6, v5, v1

    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    const/4 v6, 0x3

    .line 138
    if-eq v1, v6, :cond_8

    .line 139
    .line 140
    const/4 v7, 0x4

    .line 141
    if-eq v1, v7, :cond_8

    .line 142
    .line 143
    const/4 v8, 0x5

    .line 144
    if-ne v1, v8, :cond_4

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_4
    if-ne v1, v2, :cond_9

    .line 148
    .line 149
    add-int/lit8 v1, v5, 0x1

    .line 150
    .line 151
    if-le v1, v7, :cond_5

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    const/4 v6, 0x1

    .line 155
    add-int/2addr v5, v6

    .line 156
    if-le v5, v4, :cond_6

    .line 157
    .line 158
    const/4 v6, 0x2

    .line 159
    :cond_6
    :goto_2
    const-string v1, "PPS: pic_size_in_map_units_minus1"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    add-int/lit8 v5, v1, 0x1

    .line 166
    .line 167
    new-array v5, v5, [I

    .line 168
    .line 169
    iput-object v5, p0, Lf5/e;->v:[I

    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    :goto_3
    if-le v5, v1, :cond_7

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_7
    iget-object v7, p0, Lf5/e;->v:[I

    .line 176
    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v9, "PPS: slice_group_id ["

    .line 180
    .line 181
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v9, "]f"

    .line 188
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v0, v6, v8}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    aput v8, v7, v5

    .line 201
    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_8
    :goto_4
    const-string v1, "PPS: slice_group_change_direction_flag"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iput-boolean v1, p0, Lf5/e;->u:Z

    .line 212
    .line 213
    const-string v1, "PPS: slice_group_change_rate_minus1"

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    iput v1, p0, Lf5/e;->d:I

    .line 220
    .line 221
    :cond_9
    :goto_5
    const-string v1, "PPS: num_ref_idx_l0_active_minus1"

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iput v1, p0, Lf5/e;->b:I

    .line 228
    .line 229
    const-string v1, "PPS: num_ref_idx_l1_active_minus1"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iput v1, p0, Lf5/e;->c:I

    .line 236
    .line 237
    const-string v1, "PPS: weighted_pred_flag"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iput-boolean v1, p0, Lf5/e;->j:Z

    .line 244
    .line 245
    const-string v1, "PPS: weighted_bipred_idc"

    .line 246
    .line 247
    invoke-virtual {v0, v4, v1}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    long-to-int v1, v5

    .line 252
    iput v1, p0, Lf5/e;->k:I

    .line 253
    .line 254
    const-string v1, "PPS: pic_init_qp_minus26"

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    iput v1, p0, Lf5/e;->l:I

    .line 261
    .line 262
    const-string v1, "PPS: pic_init_qs_minus26"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iput v1, p0, Lf5/e;->m:I

    .line 269
    .line 270
    const-string v1, "PPS: chroma_qp_index_offset"

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    iput v1, p0, Lf5/e;->n:I

    .line 277
    .line 278
    const-string v1, "PPS: deblocking_filter_control_present_flag"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    iput-boolean v1, p0, Lf5/e;->o:Z

    .line 285
    .line 286
    const-string v1, "PPS: constrained_intra_pred_flag"

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    iput-boolean v1, p0, Lf5/e;->p:Z

    .line 293
    .line 294
    const-string v1, "PPS: redundant_pic_cnt_present_flag"

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput-boolean v1, p0, Lf5/e;->q:Z

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/read/a;->f()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_e

    .line 307
    .line 308
    new-instance v1, Lf5/e$a;

    .line 309
    .line 310
    invoke-direct {v1}, Lf5/e$a;-><init>()V

    .line 311
    .line 312
    .line 313
    iput-object v1, p0, Lf5/e;->w:Lf5/e$a;

    .line 314
    .line 315
    const-string v5, "PPS: transform_8x8_mode_flag"

    .line 316
    .line 317
    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    iput-boolean v5, v1, Lf5/e$a;->a:Z

    .line 322
    .line 323
    const-string v1, "PPS: pic_scaling_matrix_present_flag"

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_d

    .line 330
    .line 331
    :goto_6
    iget-object v1, p0, Lf5/e;->w:Lf5/e$a;

    .line 332
    .line 333
    iget-boolean v1, v1, Lf5/e$a;->a:Z

    .line 334
    .line 335
    mul-int/lit8 v1, v1, 0x2

    .line 336
    .line 337
    add-int/2addr v1, v2

    .line 338
    if-lt v3, v1, :cond_a

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_a
    const-string v1, "PPS: pic_scaling_list_present_flag"

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_c

    .line 348
    .line 349
    iget-object v1, p0, Lf5/e;->w:Lf5/e$a;

    .line 350
    .line 351
    iget-object v1, v1, Lf5/e$a;->b:Lf5/g;

    .line 352
    .line 353
    const/16 v5, 0x8

    .line 354
    .line 355
    new-array v6, v5, [Lf5/f;

    .line 356
    .line 357
    iput-object v6, v1, Lf5/g;->a:[Lf5/f;

    .line 358
    .line 359
    new-array v5, v5, [Lf5/f;

    .line 360
    .line 361
    iput-object v5, v1, Lf5/g;->b:[Lf5/f;

    .line 362
    .line 363
    if-ge v3, v2, :cond_b

    .line 364
    .line 365
    const/16 v1, 0x10

    .line 366
    .line 367
    invoke-static {v0, v1}, Lf5/f;->a(Lcom/googlecode/mp4parser/h264/read/b;I)Lf5/f;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    aput-object v1, v6, v3

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :cond_b
    add-int/lit8 v1, v3, -0x6

    .line 375
    .line 376
    const/16 v6, 0x40

    .line 377
    .line 378
    invoke-static {v0, v6}, Lf5/f;->a(Lcom/googlecode/mp4parser/h264/read/b;I)Lf5/f;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    aput-object v6, v5, v1

    .line 383
    .line 384
    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_d
    :goto_8
    iget-object v1, p0, Lf5/e;->w:Lf5/e$a;

    .line 388
    .line 389
    const-string v2, "PPS: second_chroma_qp_index_offset"

    .line 390
    .line 391
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    iput v2, v1, Lf5/e$a;->c:I

    .line 396
    .line 397
    :cond_e
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/read/b;->v()V

    .line 398
    .line 399
    .line 400
    return-object p0
.end method

.method public static c([B)Lf5/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lf5/e;->b(Ljava/io/InputStream;)Lf5/e;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg5/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lg5/b;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lf5/e;->e:I

    .line 7
    .line 8
    const-string v1, "PPS: pic_parameter_set_id"

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lg5/b;->o(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, Lf5/e;->f:I

    .line 14
    .line 15
    const-string v1, "PPS: seq_parameter_set_id"

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lg5/b;->o(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lf5/e;->a:Z

    .line 21
    .line 22
    const-string v1, "PPS: entropy_coding_mode_flag"

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lf5/e;->g:Z

    .line 28
    .line 29
    const-string v1, "PPS: pic_order_present_flag"

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lf5/e;->h:I

    .line 35
    .line 36
    const-string v1, "PPS: num_slice_groups_minus1"

    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Lg5/b;->o(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lf5/e;->h:I

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    const/4 v2, 0x2

    .line 45
    const-string v3, "PPS: "

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x1

    .line 49
    if-lez p1, :cond_9

    .line 50
    .line 51
    iget p1, p0, Lf5/e;->i:I

    .line 52
    .line 53
    const-string v6, "PPS: slice_group_map_type"

    .line 54
    .line 55
    invoke-virtual {v0, p1, v6}, Lg5/b;->o(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-array p1, v5, [I

    .line 59
    .line 60
    new-array v6, v5, [I

    .line 61
    .line 62
    new-array v7, v5, [I

    .line 63
    .line 64
    iget v8, p0, Lf5/e;->i:I

    .line 65
    .line 66
    if-nez v8, :cond_1

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :goto_0
    iget v6, p0, Lf5/e;->h:I

    .line 70
    .line 71
    if-le p1, v6, :cond_0

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_0
    aget v6, v7, p1

    .line 75
    .line 76
    invoke-virtual {v0, v6, v3}, Lg5/b;->o(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    if-ne v8, v2, :cond_3

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    :goto_1
    iget v8, p0, Lf5/e;->h:I

    .line 86
    .line 87
    if-lt v7, v8, :cond_2

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_2
    aget v8, p1, v7

    .line 91
    .line 92
    invoke-virtual {v0, v8, v3}, Lg5/b;->o(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    aget v8, v6, v7

    .line 96
    .line 97
    invoke-virtual {v0, v8, v3}, Lg5/b;->o(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 p1, 0x3

    .line 104
    if-eq v8, p1, :cond_8

    .line 105
    .line 106
    const/4 v6, 0x4

    .line 107
    if-eq v8, v6, :cond_8

    .line 108
    .line 109
    const/4 v7, 0x5

    .line 110
    if-ne v8, v7, :cond_4

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    if-ne v8, v1, :cond_9

    .line 114
    .line 115
    iget v7, p0, Lf5/e;->h:I

    .line 116
    .line 117
    add-int/lit8 v8, v7, 0x1

    .line 118
    .line 119
    if-le v8, v6, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    add-int/2addr v7, v5

    .line 123
    if-le v7, v2, :cond_6

    .line 124
    .line 125
    const/4 p1, 0x2

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    const/4 p1, 0x1

    .line 128
    :goto_2
    iget-object v6, p0, Lf5/e;->v:[I

    .line 129
    .line 130
    array-length v6, v6

    .line 131
    invoke-virtual {v0, v6, v3}, Lg5/b;->o(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    :goto_3
    iget-object v7, p0, Lf5/e;->v:[I

    .line 136
    .line 137
    array-length v8, v7

    .line 138
    if-le v6, v8, :cond_7

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    aget v7, v7, v6

    .line 142
    .line 143
    invoke-virtual {v0, v7, p1}, Lg5/b;->l(II)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v6, v6, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    :goto_4
    iget-boolean p1, p0, Lf5/e;->u:Z

    .line 150
    .line 151
    const-string v6, "PPS: slice_group_change_direction_flag"

    .line 152
    .line 153
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget p1, p0, Lf5/e;->d:I

    .line 157
    .line 158
    const-string v6, "PPS: slice_group_change_rate_minus1"

    .line 159
    .line 160
    invoke-virtual {v0, p1, v6}, Lg5/b;->o(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_9
    :goto_5
    iget p1, p0, Lf5/e;->b:I

    .line 164
    .line 165
    const-string v6, "PPS: num_ref_idx_l0_active_minus1"

    .line 166
    .line 167
    invoke-virtual {v0, p1, v6}, Lg5/b;->o(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget p1, p0, Lf5/e;->c:I

    .line 171
    .line 172
    const-string v6, "PPS: num_ref_idx_l1_active_minus1"

    .line 173
    .line 174
    invoke-virtual {v0, p1, v6}, Lg5/b;->o(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean p1, p0, Lf5/e;->j:Z

    .line 178
    .line 179
    const-string v6, "PPS: weighted_pred_flag"

    .line 180
    .line 181
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget p1, p0, Lf5/e;->k:I

    .line 185
    .line 186
    int-to-long v6, p1

    .line 187
    const-string p1, "PPS: weighted_bipred_idc"

    .line 188
    .line 189
    invoke-virtual {v0, v6, v7, v2, p1}, Lg5/b;->h(JILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget p1, p0, Lf5/e;->l:I

    .line 193
    .line 194
    const-string v6, "PPS: pic_init_qp_minus26"

    .line 195
    .line 196
    invoke-virtual {v0, p1, v6}, Lg5/b;->i(ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget p1, p0, Lf5/e;->m:I

    .line 200
    .line 201
    const-string v6, "PPS: pic_init_qs_minus26"

    .line 202
    .line 203
    invoke-virtual {v0, p1, v6}, Lg5/b;->i(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget p1, p0, Lf5/e;->n:I

    .line 207
    .line 208
    const-string v6, "PPS: chroma_qp_index_offset"

    .line 209
    .line 210
    invoke-virtual {v0, p1, v6}, Lg5/b;->i(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-boolean p1, p0, Lf5/e;->o:Z

    .line 214
    .line 215
    const-string v6, "PPS: deblocking_filter_control_present_flag"

    .line 216
    .line 217
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-boolean p1, p0, Lf5/e;->p:Z

    .line 221
    .line 222
    const-string v6, "PPS: constrained_intra_pred_flag"

    .line 223
    .line 224
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-boolean p1, p0, Lf5/e;->q:Z

    .line 228
    .line 229
    const-string v6, "PPS: redundant_pic_cnt_present_flag"

    .line 230
    .line 231
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lf5/e;->w:Lf5/e$a;

    .line 235
    .line 236
    if-eqz p1, :cond_11

    .line 237
    .line 238
    iget-boolean p1, p1, Lf5/e$a;->a:Z

    .line 239
    .line 240
    const-string v6, "PPS: transform_8x8_mode_flag"

    .line 241
    .line 242
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lf5/e;->w:Lf5/e$a;

    .line 246
    .line 247
    iget-object p1, p1, Lf5/e$a;->b:Lf5/g;

    .line 248
    .line 249
    if-eqz p1, :cond_a

    .line 250
    .line 251
    const/4 p1, 0x1

    .line 252
    goto :goto_6

    .line 253
    :cond_a
    const/4 p1, 0x0

    .line 254
    :goto_6
    const-string v6, "PPS: scalindMatrix"

    .line 255
    .line 256
    invoke-virtual {v0, p1, v6}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lf5/e;->w:Lf5/e$a;

    .line 260
    .line 261
    iget-object p1, p1, Lf5/e$a;->b:Lf5/g;

    .line 262
    .line 263
    if-eqz p1, :cond_10

    .line 264
    .line 265
    const/4 p1, 0x0

    .line 266
    :goto_7
    iget-object v6, p0, Lf5/e;->w:Lf5/e$a;

    .line 267
    .line 268
    iget-boolean v7, v6, Lf5/e$a;->a:Z

    .line 269
    .line 270
    mul-int/lit8 v7, v7, 0x2

    .line 271
    .line 272
    add-int/2addr v7, v1

    .line 273
    if-lt p1, v7, :cond_b

    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_b
    if-ge p1, v1, :cond_d

    .line 277
    .line 278
    iget-object v6, v6, Lf5/e$a;->b:Lf5/g;

    .line 279
    .line 280
    iget-object v6, v6, Lf5/g;->a:[Lf5/f;

    .line 281
    .line 282
    aget-object v6, v6, p1

    .line 283
    .line 284
    if-eqz v6, :cond_c

    .line 285
    .line 286
    const/4 v6, 0x1

    .line 287
    goto :goto_8

    .line 288
    :cond_c
    const/4 v6, 0x0

    .line 289
    :goto_8
    invoke-virtual {v0, v6, v3}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v6, p0, Lf5/e;->w:Lf5/e$a;

    .line 293
    .line 294
    iget-object v6, v6, Lf5/e$a;->b:Lf5/g;

    .line 295
    .line 296
    iget-object v6, v6, Lf5/g;->a:[Lf5/f;

    .line 297
    .line 298
    aget-object v6, v6, p1

    .line 299
    .line 300
    if-eqz v6, :cond_f

    .line 301
    .line 302
    invoke-virtual {v6, v0}, Lf5/f;->b(Lg5/b;)V

    .line 303
    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_d
    iget-object v6, v6, Lf5/e$a;->b:Lf5/g;

    .line 307
    .line 308
    iget-object v6, v6, Lf5/g;->b:[Lf5/f;

    .line 309
    .line 310
    add-int/lit8 v7, p1, -0x6

    .line 311
    .line 312
    aget-object v6, v6, v7

    .line 313
    .line 314
    if-eqz v6, :cond_e

    .line 315
    .line 316
    const/4 v6, 0x1

    .line 317
    goto :goto_9

    .line 318
    :cond_e
    const/4 v6, 0x0

    .line 319
    :goto_9
    invoke-virtual {v0, v6, v3}, Lg5/b;->g(ZLjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v6, p0, Lf5/e;->w:Lf5/e$a;

    .line 323
    .line 324
    iget-object v6, v6, Lf5/e$a;->b:Lf5/g;

    .line 325
    .line 326
    iget-object v6, v6, Lf5/g;->b:[Lf5/f;

    .line 327
    .line 328
    aget-object v6, v6, v7

    .line 329
    .line 330
    if-eqz v6, :cond_f

    .line 331
    .line 332
    invoke-virtual {v6, v0}, Lf5/f;->b(Lg5/b;)V

    .line 333
    .line 334
    .line 335
    :cond_f
    :goto_a
    add-int/lit8 p1, p1, 0x1

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_10
    :goto_b
    iget-object p1, p0, Lf5/e;->w:Lf5/e$a;

    .line 339
    .line 340
    iget p1, p1, Lf5/e$a;->c:I

    .line 341
    .line 342
    invoke-virtual {v0, p1, v3}, Lg5/b;->i(ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_11
    invoke-virtual {v0}, Lg5/b;->k()V

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Lf5/e;

    .line 21
    .line 22
    iget-object v2, p0, Lf5/e;->s:[I

    .line 23
    .line 24
    iget-object v3, p1, Lf5/e;->s:[I

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget v2, p0, Lf5/e;->n:I

    .line 34
    .line 35
    iget v3, p1, Lf5/e;->n:I

    .line 36
    .line 37
    if-eq v2, v3, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    iget-boolean v2, p0, Lf5/e;->p:Z

    .line 41
    .line 42
    iget-boolean v3, p1, Lf5/e;->p:Z

    .line 43
    .line 44
    if-eq v2, v3, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    iget-boolean v2, p0, Lf5/e;->o:Z

    .line 48
    .line 49
    iget-boolean v3, p1, Lf5/e;->o:Z

    .line 50
    .line 51
    if-eq v2, v3, :cond_6

    .line 52
    .line 53
    return v1

    .line 54
    :cond_6
    iget-boolean v2, p0, Lf5/e;->a:Z

    .line 55
    .line 56
    iget-boolean v3, p1, Lf5/e;->a:Z

    .line 57
    .line 58
    if-eq v2, v3, :cond_7

    .line 59
    .line 60
    return v1

    .line 61
    :cond_7
    iget-object v2, p0, Lf5/e;->w:Lf5/e$a;

    .line 62
    .line 63
    if-nez v2, :cond_8

    .line 64
    .line 65
    iget-object v2, p1, Lf5/e;->w:Lf5/e$a;

    .line 66
    .line 67
    if-eqz v2, :cond_9

    .line 68
    .line 69
    return v1

    .line 70
    :cond_8
    iget-object v3, p1, Lf5/e;->w:Lf5/e$a;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_9

    .line 77
    .line 78
    return v1

    .line 79
    :cond_9
    iget v2, p0, Lf5/e;->b:I

    .line 80
    .line 81
    iget v3, p1, Lf5/e;->b:I

    .line 82
    .line 83
    if-eq v2, v3, :cond_a

    .line 84
    .line 85
    return v1

    .line 86
    :cond_a
    iget v2, p0, Lf5/e;->c:I

    .line 87
    .line 88
    iget v3, p1, Lf5/e;->c:I

    .line 89
    .line 90
    if-eq v2, v3, :cond_b

    .line 91
    .line 92
    return v1

    .line 93
    :cond_b
    iget v2, p0, Lf5/e;->h:I

    .line 94
    .line 95
    iget v3, p1, Lf5/e;->h:I

    .line 96
    .line 97
    if-eq v2, v3, :cond_c

    .line 98
    .line 99
    return v1

    .line 100
    :cond_c
    iget v2, p0, Lf5/e;->l:I

    .line 101
    .line 102
    iget v3, p1, Lf5/e;->l:I

    .line 103
    .line 104
    if-eq v2, v3, :cond_d

    .line 105
    .line 106
    return v1

    .line 107
    :cond_d
    iget v2, p0, Lf5/e;->m:I

    .line 108
    .line 109
    iget v3, p1, Lf5/e;->m:I

    .line 110
    .line 111
    if-eq v2, v3, :cond_e

    .line 112
    .line 113
    return v1

    .line 114
    :cond_e
    iget-boolean v2, p0, Lf5/e;->g:Z

    .line 115
    .line 116
    iget-boolean v3, p1, Lf5/e;->g:Z

    .line 117
    .line 118
    if-eq v2, v3, :cond_f

    .line 119
    .line 120
    return v1

    .line 121
    :cond_f
    iget v2, p0, Lf5/e;->e:I

    .line 122
    .line 123
    iget v3, p1, Lf5/e;->e:I

    .line 124
    .line 125
    if-eq v2, v3, :cond_10

    .line 126
    .line 127
    return v1

    .line 128
    :cond_10
    iget-boolean v2, p0, Lf5/e;->q:Z

    .line 129
    .line 130
    iget-boolean v3, p1, Lf5/e;->q:Z

    .line 131
    .line 132
    if-eq v2, v3, :cond_11

    .line 133
    .line 134
    return v1

    .line 135
    :cond_11
    iget-object v2, p0, Lf5/e;->t:[I

    .line 136
    .line 137
    iget-object v3, p1, Lf5/e;->t:[I

    .line 138
    .line 139
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_12

    .line 144
    .line 145
    return v1

    .line 146
    :cond_12
    iget v2, p0, Lf5/e;->f:I

    .line 147
    .line 148
    iget v3, p1, Lf5/e;->f:I

    .line 149
    .line 150
    if-eq v2, v3, :cond_13

    .line 151
    .line 152
    return v1

    .line 153
    :cond_13
    iget-boolean v2, p0, Lf5/e;->u:Z

    .line 154
    .line 155
    iget-boolean v3, p1, Lf5/e;->u:Z

    .line 156
    .line 157
    if-eq v2, v3, :cond_14

    .line 158
    .line 159
    return v1

    .line 160
    :cond_14
    iget v2, p0, Lf5/e;->d:I

    .line 161
    .line 162
    iget v3, p1, Lf5/e;->d:I

    .line 163
    .line 164
    if-eq v2, v3, :cond_15

    .line 165
    .line 166
    return v1

    .line 167
    :cond_15
    iget-object v2, p0, Lf5/e;->v:[I

    .line 168
    .line 169
    iget-object v3, p1, Lf5/e;->v:[I

    .line 170
    .line 171
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_16

    .line 176
    .line 177
    return v1

    .line 178
    :cond_16
    iget v2, p0, Lf5/e;->i:I

    .line 179
    .line 180
    iget v3, p1, Lf5/e;->i:I

    .line 181
    .line 182
    if-eq v2, v3, :cond_17

    .line 183
    .line 184
    return v1

    .line 185
    :cond_17
    iget-object v2, p0, Lf5/e;->r:[I

    .line 186
    .line 187
    iget-object v3, p1, Lf5/e;->r:[I

    .line 188
    .line 189
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_18

    .line 194
    .line 195
    return v1

    .line 196
    :cond_18
    iget v2, p0, Lf5/e;->k:I

    .line 197
    .line 198
    iget v3, p1, Lf5/e;->k:I

    .line 199
    .line 200
    if-eq v2, v3, :cond_19

    .line 201
    .line 202
    return v1

    .line 203
    :cond_19
    iget-boolean v2, p0, Lf5/e;->j:Z

    .line 204
    .line 205
    iget-boolean p1, p1, Lf5/e;->j:Z

    .line 206
    .line 207
    if-eq v2, p1, :cond_1a

    .line 208
    .line 209
    return v1

    .line 210
    :cond_1a
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lf5/e;->s:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget v2, p0, Lf5/e;->n:I

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget-boolean v2, p0, Lf5/e;->p:Z

    .line 18
    .line 19
    const/16 v3, 0x4cf

    .line 20
    .line 21
    const/16 v4, 0x4d5

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x4cf

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0x4d5

    .line 29
    .line 30
    :goto_0
    add-int/2addr v0, v2

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-boolean v2, p0, Lf5/e;->o:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/16 v2, 0x4cf

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v2, 0x4d5

    .line 41
    .line 42
    :goto_1
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v2, p0, Lf5/e;->a:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/16 v2, 0x4cf

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v2, 0x4d5

    .line 53
    .line 54
    :goto_2
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-object v2, p0, Lf5/e;->w:Lf5/e$a;

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :goto_3
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget v2, p0, Lf5/e;->b:I

    .line 71
    .line 72
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget v2, p0, Lf5/e;->c:I

    .line 76
    .line 77
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget v2, p0, Lf5/e;->h:I

    .line 81
    .line 82
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget v2, p0, Lf5/e;->l:I

    .line 86
    .line 87
    add-int/2addr v0, v2

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget v2, p0, Lf5/e;->m:I

    .line 91
    .line 92
    add-int/2addr v0, v2

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    .line 94
    .line 95
    iget-boolean v2, p0, Lf5/e;->g:Z

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    const/16 v2, 0x4cf

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    const/16 v2, 0x4d5

    .line 103
    .line 104
    :goto_4
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget v2, p0, Lf5/e;->e:I

    .line 108
    .line 109
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-boolean v2, p0, Lf5/e;->q:Z

    .line 113
    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    const/16 v2, 0x4cf

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_5
    const/16 v2, 0x4d5

    .line 120
    .line 121
    :goto_5
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    .line 124
    iget-object v2, p0, Lf5/e;->t:[I

    .line 125
    .line 126
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    .line 132
    .line 133
    iget v2, p0, Lf5/e;->f:I

    .line 134
    .line 135
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    .line 138
    iget-boolean v2, p0, Lf5/e;->u:Z

    .line 139
    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    const/16 v2, 0x4cf

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_6
    const/16 v2, 0x4d5

    .line 146
    .line 147
    :goto_6
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    .line 149
    .line 150
    iget v2, p0, Lf5/e;->d:I

    .line 151
    .line 152
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v0, v0, 0x1f

    .line 154
    .line 155
    iget-object v2, p0, Lf5/e;->v:[I

    .line 156
    .line 157
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    .line 163
    .line 164
    iget v2, p0, Lf5/e;->i:I

    .line 165
    .line 166
    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    .line 168
    .line 169
    iget-object v2, p0, Lf5/e;->r:[I

    .line 170
    .line 171
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    .line 178
    iget v2, p0, Lf5/e;->k:I

    .line 179
    .line 180
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-boolean v1, p0, Lf5/e;->j:Z

    .line 184
    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_7
    const/16 v3, 0x4d5

    .line 189
    .line 190
    :goto_7
    add-int/2addr v0, v3

    .line 191
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PictureParameterSet{\n       entropy_coding_mode_flag="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lf5/e;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n       num_ref_idx_l0_active_minus1="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lf5/e;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n       num_ref_idx_l1_active_minus1="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lf5/e;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",\n       slice_group_change_rate_minus1="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lf5/e;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",\n       pic_parameter_set_id="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lf5/e;->e:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",\n       seq_parameter_set_id="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lf5/e;->f:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",\n       pic_order_present_flag="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lf5/e;->g:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ",\n       num_slice_groups_minus1="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lf5/e;->h:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ",\n       slice_group_map_type="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lf5/e;->i:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ",\n       weighted_pred_flag="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lf5/e;->j:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ",\n       weighted_bipred_idc="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lf5/e;->k:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ",\n       pic_init_qp_minus26="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lf5/e;->l:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ",\n       pic_init_qs_minus26="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lf5/e;->m:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ",\n       chroma_qp_index_offset="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lf5/e;->n:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ",\n       deblocking_filter_control_present_flag="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-boolean v1, p0, Lf5/e;->o:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ",\n       constrained_intra_pred_flag="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v1, p0, Lf5/e;->p:Z

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ",\n       redundant_pic_cnt_present_flag="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-boolean v1, p0, Lf5/e;->q:Z

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ",\n       top_left="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lf5/e;->r:[I

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ",\n       bottom_right="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lf5/e;->s:[I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ",\n       run_length_minus1="

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lf5/e;->t:[I

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ",\n       slice_group_change_direction_flag="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-boolean v1, p0, Lf5/e;->u:Z

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, ",\n       slice_group_id="

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lf5/e;->v:[I

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, ",\n       extended="

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lf5/e;->w:Lf5/e$a;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const/16 v1, 0x7d

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    return-object v0
.end method
