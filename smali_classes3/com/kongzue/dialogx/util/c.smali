.class public Lcom/kongzue/dialogx/util/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/c$a;
    }
.end annotation


# instance fields
.field private b:Lcom/kongzue/dialogx/dialogs/b;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/content/Context;

.field e:Lcom/kongzue/dialogx/util/TextInfo;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/b;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/dialogs/b;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/kongzue/dialogx/util/c;->c:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    return-void
.end method

.method private b(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    div-float/2addr p1, v0

    .line 14
    const/high16 v0, 0x3f000000    # 0.5f

    .line 15
    .line 16
    add-float/2addr p1, v0

    .line 17
    float-to-int p1, p1

    .line 18
    return p1
.end method


# virtual methods
.method public a(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/c;->a(I)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p2, :cond_4

    .line 5
    .line 6
    new-instance p2, Lcom/kongzue/dialogx/util/c$a;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/util/c$a;-><init>(Lcom/kongzue/dialogx/util/c;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget v4, Lcom/kongzue/dialogx/R$layout;->item_dialogx_material_bottom_menu_normal_text:I

    .line 18
    .line 19
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/c;->getCount()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v5, v6, p1, v7, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->e(ZIIZ)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->x2()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->j0(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->o2()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->j0(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->i2()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    :cond_1
    if-nez p1, :cond_2

    .line 91
    .line 92
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/c;->getCount()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-virtual {v4, v5, p1, v6, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->e(ZIIZ)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    move v4, v5

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    sget v4, Lcom/kongzue/dialogx/R$id;->img_dialogx_menu_icon:I

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Landroid/widget/ImageView;

    .line 129
    .line 130
    iput-object v4, p2, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 131
    .line 132
    sget v4, Lcom/kongzue/dialogx/R$id;->img_dialogx_menu_selection:I

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object v4, p2, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 141
    .line 142
    sget v4, Lcom/kongzue/dialogx/R$id;->txt_dialogx_menu_text:I

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object v4, p2, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 151
    .line 152
    sget v4, Lcom/kongzue/dialogx/R$id;->space_dialogx_right_padding:I

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Landroid/widget/Space;

    .line 159
    .line 160
    iput-object v4, p2, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 161
    .line 162
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    move-object v10, v3

    .line 166
    move-object v3, p2

    .line 167
    move-object p2, v10

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Lcom/kongzue/dialogx/util/c$a;

    .line 174
    .line 175
    :goto_1
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 176
    .line 177
    invoke-virtual {v4, p1}, Lcom/kongzue/dialogx/dialogs/b;->X4(I)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_5

    .line 182
    .line 183
    const v4, 0x3ecccccd    # 0.4f

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    .line 191
    .line 192
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 193
    .line 194
    .line 195
    :goto_2
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->P4()Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    sget-object v5, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->SINGLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 202
    .line 203
    const/4 v6, 0x4

    .line 204
    const/16 v7, 0x8

    .line 205
    .line 206
    if-ne v4, v5, :cond_8

    .line 207
    .line 208
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 209
    .line 210
    if-eqz v4, :cond_c

    .line 211
    .line 212
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 213
    .line 214
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->R4()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-ne v4, p1, :cond_6

    .line 219
    .line 220
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 221
    .line 222
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 226
    .line 227
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 236
    .line 237
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    invoke-virtual {v4, v5, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->h(ZZ)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_c

    .line 246
    .line 247
    iget-object v5, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 248
    .line 249
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_6
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 255
    .line 256
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 265
    .line 266
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-virtual {v4, v5, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->h(ZZ)I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_7

    .line 275
    .line 276
    iget-object v5, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 277
    .line 278
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    iget-object v5, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 282
    .line 283
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_7
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 289
    .line 290
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_8
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 295
    .line 296
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->P4()Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    sget-object v5, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 301
    .line 302
    if-ne v4, v5, :cond_b

    .line 303
    .line 304
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 305
    .line 306
    if-eqz v4, :cond_c

    .line 307
    .line 308
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/b;->U4()Ljava/util/ArrayList;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-eqz v4, :cond_9

    .line 323
    .line 324
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 325
    .line 326
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 330
    .line 331
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 340
    .line 341
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    invoke-virtual {v4, v5, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->g(ZZ)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-eqz v4, :cond_c

    .line 350
    .line 351
    iget-object v5, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 352
    .line 353
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_9
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 358
    .line 359
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 368
    .line 369
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    invoke-virtual {v4, v5, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->g(ZZ)I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-eqz v4, :cond_a

    .line 378
    .line 379
    iget-object v5, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 380
    .line 381
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    iget-object v5, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 385
    .line 386
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_a
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 391
    .line 392
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_b
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 397
    .line 398
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    :cond_c
    :goto_3
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 402
    .line 403
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    if-eqz v4, :cond_d

    .line 412
    .line 413
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 414
    .line 415
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-virtual {v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 424
    .line 425
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    invoke-virtual {v4, v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->i(Z)I

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    goto :goto_4

    .line 434
    :cond_d
    const/4 v4, 0x0

    .line 435
    :goto_4
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 436
    .line 437
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/b;->R4()I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-ne v5, p1, :cond_e

    .line 442
    .line 443
    if-eqz v4, :cond_e

    .line 444
    .line 445
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 446
    .line 447
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 460
    .line 461
    .line 462
    :cond_e
    iget-object v4, p0, Lcom/kongzue/dialogx/util/c;->c:Ljava/util/List;

    .line 463
    .line 464
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    check-cast v4, Ljava/lang/CharSequence;

    .line 469
    .line 470
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 471
    .line 472
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-eqz v5, :cond_f

    .line 477
    .line 478
    sget v5, Lcom/kongzue/dialogx/R$color;->black90:I

    .line 479
    .line 480
    goto :goto_5

    .line 481
    :cond_f
    sget v5, Lcom/kongzue/dialogx/R$color;->white90:I

    .line 482
    .line 483
    :goto_5
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 484
    .line 485
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    if-eqz v6, :cond_10

    .line 494
    .line 495
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 496
    .line 497
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    iget-object v8, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 506
    .line 507
    invoke-virtual {v8}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 508
    .line 509
    .line 510
    move-result v8

    .line 511
    invoke-virtual {v6, v8}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->f(Z)I

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    if-eqz v6, :cond_10

    .line 516
    .line 517
    iget-object v5, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 518
    .line 519
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 528
    .line 529
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    invoke-virtual {v5, v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->f(Z)I

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    :cond_10
    if-eqz v4, :cond_25

    .line 538
    .line 539
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->e:Lcom/kongzue/dialogx/util/TextInfo;

    .line 540
    .line 541
    if-nez v6, :cond_12

    .line 542
    .line 543
    new-instance v6, Lcom/kongzue/dialogx/util/TextInfo;

    .line 544
    .line 545
    invoke-direct {v6}, Lcom/kongzue/dialogx/util/TextInfo;-><init>()V

    .line 546
    .line 547
    .line 548
    iget-object v8, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 549
    .line 550
    invoke-virtual {v8}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 551
    .line 552
    .line 553
    move-result-object v8

    .line 554
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 555
    .line 556
    if-ne v8, v9, :cond_11

    .line 557
    .line 558
    goto :goto_6

    .line 559
    :cond_11
    const/4 v1, 0x0

    .line 560
    :goto_6
    invoke-virtual {v6, v1}, Lcom/kongzue/dialogx/util/TextInfo;->p(Z)Lcom/kongzue/dialogx/util/TextInfo;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 565
    .line 566
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 567
    .line 568
    .line 569
    move-result-object v6

    .line 570
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    invoke-virtual {v1, v6}, Lcom/kongzue/dialogx/util/TextInfo;->k(I)Lcom/kongzue/dialogx/util/TextInfo;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 579
    .line 580
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    invoke-virtual {v6}, Landroid/graphics/Paint;->isFakeBoldText()Z

    .line 585
    .line 586
    .line 587
    move-result v6

    .line 588
    invoke-virtual {v1, v6}, Lcom/kongzue/dialogx/util/TextInfo;->j(Z)Lcom/kongzue/dialogx/util/TextInfo;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 593
    .line 594
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    .line 595
    .line 596
    .line 597
    move-result v6

    .line 598
    invoke-direct {p0, v6}, Lcom/kongzue/dialogx/util/c;->b(F)I

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    invoke-virtual {v1, v6}, Lcom/kongzue/dialogx/util/TextInfo;->l(I)Lcom/kongzue/dialogx/util/TextInfo;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 607
    .line 608
    invoke-virtual {v6}, Landroid/widget/TextView;->getGravity()I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    invoke-virtual {v1, v6}, Lcom/kongzue/dialogx/util/TextInfo;->n(I)Lcom/kongzue/dialogx/util/TextInfo;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 617
    .line 618
    invoke-virtual {v6}, Landroid/widget/TextView;->getMaxLines()I

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    invoke-virtual {v1, v6}, Lcom/kongzue/dialogx/util/TextInfo;->o(I)Lcom/kongzue/dialogx/util/TextInfo;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    iput-object v1, p0, Lcom/kongzue/dialogx/util/c;->e:Lcom/kongzue/dialogx/util/TextInfo;

    .line 627
    .line 628
    :cond_12
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 629
    .line 630
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    .line 632
    .line 633
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 634
    .line 635
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 636
    .line 637
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 642
    .line 643
    .line 644
    move-result v6

    .line 645
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    .line 647
    .line 648
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->I4()Lcom/kongzue/dialogx/interfaces/n;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    if-eqz v1, :cond_15

    .line 655
    .line 656
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 657
    .line 658
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->I4()Lcom/kongzue/dialogx/interfaces/n;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 663
    .line 664
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    invoke-virtual {v1, v6, p1, v8}, Lcom/kongzue/dialogx/interfaces/n;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;ILjava/lang/String;)Lcom/kongzue/dialogx/util/TextInfo;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    if-eqz v1, :cond_13

    .line 673
    .line 674
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 675
    .line 676
    invoke-static {v6, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 677
    .line 678
    .line 679
    goto :goto_7

    .line 680
    :cond_13
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 681
    .line 682
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->M4()Lcom/kongzue/dialogx/util/TextInfo;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    if-eqz v1, :cond_14

    .line 687
    .line 688
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 689
    .line 690
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 691
    .line 692
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/b;->M4()Lcom/kongzue/dialogx/util/TextInfo;

    .line 693
    .line 694
    .line 695
    move-result-object v6

    .line 696
    invoke-static {v1, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 697
    .line 698
    .line 699
    goto :goto_7

    .line 700
    :cond_14
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 701
    .line 702
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->e:Lcom/kongzue/dialogx/util/TextInfo;

    .line 703
    .line 704
    invoke-static {v1, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 705
    .line 706
    .line 707
    goto :goto_7

    .line 708
    :cond_15
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 709
    .line 710
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->M4()Lcom/kongzue/dialogx/util/TextInfo;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    if-eqz v1, :cond_16

    .line 715
    .line 716
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->c:Landroid/widget/TextView;

    .line 717
    .line 718
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 719
    .line 720
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/b;->M4()Lcom/kongzue/dialogx/util/TextInfo;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    invoke-static {v1, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 725
    .line 726
    .line 727
    :cond_16
    :goto_7
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 728
    .line 729
    if-eqz v1, :cond_18

    .line 730
    .line 731
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 732
    .line 733
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    if-eqz v1, :cond_17

    .line 742
    .line 743
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 744
    .line 745
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    iget-object v6, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 754
    .line 755
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 756
    .line 757
    .line 758
    move-result v6

    .line 759
    invoke-virtual {v1, v6}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->j(Z)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_17

    .line 764
    .line 765
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 766
    .line 767
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 768
    .line 769
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 782
    .line 783
    .line 784
    goto :goto_8

    .line 785
    :cond_17
    iget-object v1, v3, Lcom/kongzue/dialogx/util/c$a;->b:Landroid/widget/ImageView;

    .line 786
    .line 787
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 788
    .line 789
    .line 790
    :cond_18
    :goto_8
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 791
    .line 792
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    if-eqz v0, :cond_21

    .line 797
    .line 798
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 799
    .line 800
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/l;

    .line 805
    .line 806
    if-eqz v0, :cond_1d

    .line 807
    .line 808
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 809
    .line 810
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    check-cast v0, Lcom/kongzue/dialogx/interfaces/l;

    .line 815
    .line 816
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 817
    .line 818
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    iget-object v6, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 823
    .line 824
    invoke-virtual {v0, v1, p1, v4, v6}, Lcom/kongzue/dialogx/interfaces/l;->c(Lcom/kongzue/dialogx/interfaces/BaseDialog;ILjava/lang/String;Landroid/widget/ImageView;)Z

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 829
    .line 830
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    if-nez v1, :cond_19

    .line 839
    .line 840
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 841
    .line 842
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->W4()Z

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    goto :goto_9

    .line 847
    :cond_19
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 848
    .line 849
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    :goto_9
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 862
    .line 863
    if-eqz v0, :cond_1a

    .line 864
    .line 865
    const/4 v6, 0x0

    .line 866
    goto :goto_a

    .line 867
    :cond_1a
    const/16 v6, 0x8

    .line 868
    .line 869
    :goto_a
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 870
    .line 871
    .line 872
    if-eqz v0, :cond_1c

    .line 873
    .line 874
    if-eqz v1, :cond_1b

    .line 875
    .line 876
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 877
    .line 878
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 879
    .line 880
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 893
    .line 894
    .line 895
    :cond_1b
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 896
    .line 897
    if-eqz v0, :cond_25

    .line 898
    .line 899
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_c

    .line 903
    .line 904
    :cond_1c
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 905
    .line 906
    if-eqz v0, :cond_25

    .line 907
    .line 908
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_c

    .line 912
    .line 913
    :cond_1d
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 914
    .line 915
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 920
    .line 921
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    invoke-virtual {v0, v1, p1, v4}, Lcom/kongzue/dialogx/interfaces/u;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;ILjava/lang/String;)I

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 930
    .line 931
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    if-nez v1, :cond_1e

    .line 940
    .line 941
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 942
    .line 943
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->W4()Z

    .line 944
    .line 945
    .line 946
    move-result v1

    .line 947
    goto :goto_b

    .line 948
    :cond_1e
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 949
    .line 950
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->N4()Lcom/kongzue/dialogx/interfaces/u;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 959
    .line 960
    .line 961
    move-result v1

    .line 962
    :goto_b
    if-eqz v0, :cond_20

    .line 963
    .line 964
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 965
    .line 966
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    .line 968
    .line 969
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 970
    .line 971
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 972
    .line 973
    .line 974
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 975
    .line 976
    if-eqz v0, :cond_1f

    .line 977
    .line 978
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 979
    .line 980
    .line 981
    :cond_1f
    if-eqz v1, :cond_25

    .line 982
    .line 983
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 984
    .line 985
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 986
    .line 987
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_c

    .line 1003
    :cond_20
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 1004
    .line 1005
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 1009
    .line 1010
    if-eqz v0, :cond_25

    .line 1011
    .line 1012
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_c

    .line 1016
    :cond_21
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->H4()Ljava/util/List;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    if-eqz v0, :cond_24

    .line 1023
    .line 1024
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 1025
    .line 1026
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->G4(I)I

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 1031
    .line 1032
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/b;->W4()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v1

    .line 1036
    if-eqz v0, :cond_23

    .line 1037
    .line 1038
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 1039
    .line 1040
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    .line 1042
    .line 1043
    iget-object v4, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 1044
    .line 1045
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1046
    .line 1047
    .line 1048
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 1049
    .line 1050
    if-eqz v0, :cond_22

    .line 1051
    .line 1052
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    .line 1054
    .line 1055
    :cond_22
    if-eqz v1, :cond_25

    .line 1056
    .line 1057
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 1058
    .line 1059
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->d:Landroid/content/Context;

    .line 1060
    .line 1061
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 1066
    .line 1067
    .line 1068
    move-result v1

    .line 1069
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1074
    .line 1075
    .line 1076
    goto :goto_c

    .line 1077
    :cond_23
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 1078
    .line 1079
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    .line 1081
    .line 1082
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 1083
    .line 1084
    if-eqz v0, :cond_25

    .line 1085
    .line 1086
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    .line 1088
    .line 1089
    goto :goto_c

    .line 1090
    :cond_24
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->a:Landroid/widget/ImageView;

    .line 1091
    .line 1092
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v0, v3, Lcom/kongzue/dialogx/util/c$a;->d:Landroid/widget/Space;

    .line 1096
    .line 1097
    if-eqz v0, :cond_25

    .line 1098
    .line 1099
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    .line 1101
    .line 1102
    :cond_25
    :goto_c
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 1103
    .line 1104
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->L4()Lcom/kongzue/dialogx/interfaces/m;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    if-eqz v0, :cond_26

    .line 1109
    .line 1110
    iget-object v0, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 1111
    .line 1112
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->L4()Lcom/kongzue/dialogx/interfaces/m;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    iget-object v1, p0, Lcom/kongzue/dialogx/util/c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 1117
    .line 1118
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/kongzue/dialogx/interfaces/m;->a(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 1119
    .line 1120
    .line 1121
    :cond_26
    return-object p2
.end method
