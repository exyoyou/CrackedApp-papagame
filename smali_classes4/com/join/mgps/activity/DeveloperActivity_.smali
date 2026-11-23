.class public final Lcom/join/mgps/activity/DeveloperActivity_;
.super Lcom/join/mgps/activity/DeveloperActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DeveloperActivity_$u;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DeveloperActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/DeveloperActivity_$u;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DeveloperActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DeveloperActivity_$u;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DeveloperActivity_$u;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/DeveloperActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DeveloperActivity_$u;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DeveloperActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d003e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DeveloperActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v2, 0x7f0a0599

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/widget/EditText;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/join/mgps/activity/DeveloperActivity;->et_apk_path:Landroid/widget/EditText;

    .line 15
    .line 16
    const v2, 0x7f0a0806

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f0a095e

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const v4, 0x7f0a10c5

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const v5, 0x7f0a0247

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x7f0a0dea

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v6}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const v7, 0x7f0a02af

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v7}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const v8, 0x7f0a0299

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v8}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const v9, 0x7f0a0294

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v9}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const v10, 0x7f0a161f

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v10}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const v11, 0x7f0a0267

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v11}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    const v12, 0x7f0a0268

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v12}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    const v13, 0x7f0a0256

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v13}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    const v14, 0x7f0a0257

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v14}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    const v15, 0x7f0a0270

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    move-object/from16 v16, v15

    .line 115
    .line 116
    const v15, 0x7f0a0273

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    move-object/from16 v17, v15

    .line 124
    .line 125
    const v15, 0x7f0a02a6

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    move-object/from16 v18, v15

    .line 133
    .line 134
    const v15, 0x7f0a02a7

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    move-object/from16 v19, v15

    .line 142
    .line 143
    const v15, 0x7f0a0271

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    move-object/from16 v20, v15

    .line 151
    .line 152
    const v15, 0x7f0a0263

    .line 153
    .line 154
    .line 155
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    move-object/from16 v21, v15

    .line 160
    .line 161
    const v15, 0x7f0a024e

    .line 162
    .line 163
    .line 164
    invoke-interface {v1, v15}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-eqz v2, :cond_0

    .line 169
    .line 170
    new-instance v15, Lcom/join/mgps/activity/DeveloperActivity_$k;

    .line 171
    .line 172
    invoke-direct {v15, v0}, Lcom/join/mgps/activity/DeveloperActivity_$k;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    :cond_0
    if-eqz v3, :cond_1

    .line 179
    .line 180
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$m;

    .line 181
    .line 182
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$m;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    if-eqz v4, :cond_2

    .line 189
    .line 190
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$n;

    .line 191
    .line 192
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$n;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    if-eqz v5, :cond_3

    .line 199
    .line 200
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$o;

    .line 201
    .line 202
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$o;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    :cond_3
    if-eqz v6, :cond_4

    .line 209
    .line 210
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$p;

    .line 211
    .line 212
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$p;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    :cond_4
    if-eqz v7, :cond_5

    .line 219
    .line 220
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$q;

    .line 221
    .line 222
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$q;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    if-eqz v8, :cond_6

    .line 229
    .line 230
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$r;

    .line 231
    .line 232
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$r;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    if-eqz v9, :cond_7

    .line 239
    .line 240
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$s;

    .line 241
    .line 242
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$s;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    if-eqz v10, :cond_8

    .line 249
    .line 250
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$t;

    .line 251
    .line 252
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$t;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    :cond_8
    if-eqz v11, :cond_9

    .line 259
    .line 260
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$a;

    .line 261
    .line 262
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$a;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    :cond_9
    if-eqz v12, :cond_a

    .line 269
    .line 270
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$b;

    .line 271
    .line 272
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$b;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    :cond_a
    if-eqz v13, :cond_b

    .line 279
    .line 280
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$c;

    .line 281
    .line 282
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$c;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    :cond_b
    if-eqz v14, :cond_c

    .line 289
    .line 290
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$d;

    .line 291
    .line 292
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$d;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    :cond_c
    if-eqz v16, :cond_d

    .line 299
    .line 300
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$e;

    .line 301
    .line 302
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$e;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 303
    .line 304
    .line 305
    move-object/from16 v3, v16

    .line 306
    .line 307
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    :cond_d
    if-eqz v17, :cond_e

    .line 311
    .line 312
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$f;

    .line 313
    .line 314
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$f;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v3, v17

    .line 318
    .line 319
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    .line 321
    .line 322
    :cond_e
    if-eqz v18, :cond_f

    .line 323
    .line 324
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$g;

    .line 325
    .line 326
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$g;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v3, v18

    .line 330
    .line 331
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    :cond_f
    if-eqz v19, :cond_10

    .line 335
    .line 336
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$h;

    .line 337
    .line 338
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$h;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v3, v19

    .line 342
    .line 343
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    .line 345
    .line 346
    :cond_10
    if-eqz v20, :cond_11

    .line 347
    .line 348
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$i;

    .line 349
    .line 350
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$i;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v3, v20

    .line 354
    .line 355
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    :cond_11
    if-eqz v21, :cond_12

    .line 359
    .line 360
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$j;

    .line 361
    .line 362
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$j;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v3, v21

    .line 366
    .line 367
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    :cond_12
    if-eqz v1, :cond_13

    .line 371
    .line 372
    new-instance v2, Lcom/join/mgps/activity/DeveloperActivity_$l;

    .line 373
    .line 374
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/DeveloperActivity_$l;-><init>(Lcom/join/mgps/activity/DeveloperActivity_;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/DeveloperActivity;->afterViews()V

    .line 381
    .line 382
    .line 383
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DeveloperActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method
