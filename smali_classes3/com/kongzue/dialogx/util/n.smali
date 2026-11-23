.class public Lcom/kongzue/dialogx/util/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/n$a;
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/Context;

.field private d:Lcom/kongzue/dialogx/dialogs/i;

.field e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/i;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/dialogs/i;",
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
    iput-object p1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/kongzue/dialogx/util/n;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/kongzue/dialogx/util/n;->e:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    return-void
.end method

.method private b(II)Z
    .locals 0

    .line 1
    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    new-instance p2, Lcom/kongzue/dialogx/util/n$a;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/util/n$a;-><init>(Lcom/kongzue/dialogx/util/n;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/kongzue/dialogx/R$layout;->item_dialogx_material_context_menu_normal_text:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->g(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    move v0, v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->e:Landroid/view/LayoutInflater;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget v1, Lcom/kongzue/dialogx/R$id;->box_item:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    iput-object v1, p2, Lcom/kongzue/dialogx/util/n$a;->a:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    sget v1, Lcom/kongzue/dialogx/R$id;->img_dialogx_menu_icon:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object v1, p2, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 71
    .line 72
    sget v1, Lcom/kongzue/dialogx/R$id;->txt_dialogx_menu_text:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v1, p2, Lcom/kongzue/dialogx/util/n$a;->c:Landroid/widget/TextView;

    .line 81
    .line 82
    sget v1, Lcom/kongzue/dialogx/R$id;->space_dialogx_right_padding:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/Space;

    .line 89
    .line 90
    iput-object v1, p2, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object v8, v0

    .line 96
    move-object v0, p2

    .line 97
    move-object p2, v8

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/kongzue/dialogx/util/n$a;

    .line 104
    .line 105
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Lcom/kongzue/dialogx/dialogs/i;->S2(I)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_2

    .line 112
    .line 113
    const v1, 0x3ecccccd    # 0.4f

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 123
    .line 124
    .line 125
    :goto_1
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const/4 v2, 0x0

    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/n;->getCount()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->f(ZIIZ)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_2
    if-eqz v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    :cond_4
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->a:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/i;->H2()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-ne v1, p1, :cond_6

    .line 180
    .line 181
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->a:Landroid/widget/LinearLayout;

    .line 182
    .line 183
    iget-object v3, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_5

    .line 190
    .line 191
    sget v3, Lcom/kongzue/dialogx/R$color;->black5:I

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_5
    sget v3, Lcom/kongzue/dialogx/R$color;->white5:I

    .line 195
    .line 196
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->a:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    sget v3, Lcom/kongzue/dialogx/R$color;->empty:I

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_4
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 208
    .line 209
    const/16 v3, 0x8

    .line 210
    .line 211
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->c:Landroid/widget/TextView;

    .line 215
    .line 216
    iget-object v4, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Ljava/lang/CharSequence;

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const/4 v4, 0x1

    .line 238
    if-eqz v1, :cond_a

    .line 239
    .line 240
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->j()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_a

    .line 255
    .line 256
    if-nez p1, :cond_8

    .line 257
    .line 258
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->j()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    invoke-virtual {p2, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_8
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/n;->getCount()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    sub-int/2addr v1, v4

    .line 281
    if-ne p1, v1, :cond_9

    .line 282
    .line 283
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->j()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-virtual {p2, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_9
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    .line 303
    .line 304
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_b

    .line 311
    .line 312
    sget v1, Lcom/kongzue/dialogx/R$color;->black90:I

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_b
    sget v1, Lcom/kongzue/dialogx/R$color;->white90:I

    .line 316
    .line 317
    :goto_6
    iget-object v5, v0, Lcom/kongzue/dialogx/util/n$a;->c:Landroid/widget/TextView;

    .line 318
    .line 319
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->c:Landroid/content/Context;

    .line 320
    .line 321
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    .line 331
    .line 332
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 333
    .line 334
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->C2()Lcom/kongzue/dialogx/util/TextInfo;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    if-eqz v5, :cond_c

    .line 339
    .line 340
    iget-object v5, v0, Lcom/kongzue/dialogx/util/n$a;->c:Landroid/widget/TextView;

    .line 341
    .line 342
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 343
    .line 344
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/i;->C2()Lcom/kongzue/dialogx/util/TextInfo;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-static {v5, v6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S0(Landroid/widget/TextView;Lcom/kongzue/dialogx/util/TextInfo;)V

    .line 349
    .line 350
    .line 351
    :cond_c
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 352
    .line 353
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    if-eqz v5, :cond_16

    .line 358
    .line 359
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 360
    .line 361
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    instance-of v5, v5, Lcom/kongzue/dialogx/interfaces/l;

    .line 366
    .line 367
    if-eqz v5, :cond_11

    .line 368
    .line 369
    iget-object v4, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 370
    .line 371
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    check-cast v4, Lcom/kongzue/dialogx/interfaces/l;

    .line 376
    .line 377
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 378
    .line 379
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 380
    .line 381
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v6, Ljava/lang/CharSequence;

    .line 386
    .line 387
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    iget-object v7, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 392
    .line 393
    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/kongzue/dialogx/interfaces/l;->c(Lcom/kongzue/dialogx/interfaces/BaseDialog;ILjava/lang/String;Landroid/widget/ImageView;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 398
    .line 399
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    if-nez v5, :cond_d

    .line 408
    .line 409
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 410
    .line 411
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->Q2()Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    goto :goto_7

    .line 416
    :cond_d
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 417
    .line 418
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-virtual {v5}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    :goto_7
    iget-object v6, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 431
    .line 432
    if-eqz v4, :cond_e

    .line 433
    .line 434
    const/4 v7, 0x0

    .line 435
    goto :goto_8

    .line 436
    :cond_e
    const/16 v7, 0x8

    .line 437
    .line 438
    :goto_8
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    if-eqz v4, :cond_10

    .line 442
    .line 443
    if-eqz v5, :cond_f

    .line 444
    .line 445
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 446
    .line 447
    iget-object v4, p0, Lcom/kongzue/dialogx/util/n;->c:Landroid/content/Context;

    .line 448
    .line 449
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 462
    .line 463
    .line 464
    :cond_f
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 465
    .line 466
    if-eqz v0, :cond_1a

    .line 467
    .line 468
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_a

    .line 472
    .line 473
    :cond_10
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 474
    .line 475
    if-eqz v0, :cond_1a

    .line 476
    .line 477
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_a

    .line 481
    .line 482
    :cond_11
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 483
    .line 484
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 489
    .line 490
    iget-object v7, p0, Lcom/kongzue/dialogx/util/n;->b:Ljava/util/List;

    .line 491
    .line 492
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    check-cast v7, Ljava/lang/CharSequence;

    .line 497
    .line 498
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-virtual {v5, v6, p1, v7}, Lcom/kongzue/dialogx/interfaces/u;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;ILjava/lang/String;)I

    .line 503
    .line 504
    .line 505
    move-result v5

    .line 506
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 507
    .line 508
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    if-nez v6, :cond_12

    .line 517
    .line 518
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 519
    .line 520
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/i;->Q2()Z

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    goto :goto_9

    .line 525
    :cond_12
    iget-object v6, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 526
    .line 527
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/i;->F2()Lcom/kongzue/dialogx/interfaces/u;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    invoke-virtual {v6}, Lcom/kongzue/dialogx/interfaces/u;->b()Ljava/lang/Boolean;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 536
    .line 537
    .line 538
    move-result v6

    .line 539
    :goto_9
    if-eqz v5, :cond_15

    .line 540
    .line 541
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 542
    .line 543
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 547
    .line 548
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    .line 550
    .line 551
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->c:Landroid/widget/TextView;

    .line 552
    .line 553
    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    const/16 v5, 0x11

    .line 558
    .line 559
    invoke-direct {p0, v3, v5}, Lcom/kongzue/dialogx/util/n;->b(II)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-nez v3, :cond_13

    .line 564
    .line 565
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->c:Landroid/widget/TextView;

    .line 566
    .line 567
    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    invoke-direct {p0, v3, v4}, Lcom/kongzue/dialogx/util/n;->b(II)Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_14

    .line 576
    .line 577
    :cond_13
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 578
    .line 579
    if-eqz v3, :cond_14

    .line 580
    .line 581
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    .line 583
    .line 584
    :cond_14
    if-eqz v6, :cond_1a

    .line 585
    .line 586
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 587
    .line 588
    iget-object v2, p0, Lcom/kongzue/dialogx/util/n;->c:Landroid/content/Context;

    .line 589
    .line 590
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 603
    .line 604
    .line 605
    goto :goto_a

    .line 606
    :cond_15
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 607
    .line 608
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    .line 610
    .line 611
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 612
    .line 613
    if-eqz v0, :cond_1a

    .line 614
    .line 615
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .line 617
    .line 618
    goto :goto_a

    .line 619
    :cond_16
    iget-object v4, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 620
    .line 621
    invoke-virtual {v4}, Lcom/kongzue/dialogx/dialogs/i;->x2()Ljava/util/List;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    if-eqz v4, :cond_19

    .line 626
    .line 627
    iget-object v4, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 628
    .line 629
    invoke-virtual {v4, p1}, Lcom/kongzue/dialogx/dialogs/i;->w2(I)I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    iget-object v5, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 634
    .line 635
    invoke-virtual {v5}, Lcom/kongzue/dialogx/dialogs/i;->Q2()Z

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    if-eqz v4, :cond_18

    .line 640
    .line 641
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 642
    .line 643
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    .line 645
    .line 646
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 647
    .line 648
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 649
    .line 650
    .line 651
    iget-object v3, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 652
    .line 653
    if-eqz v3, :cond_17

    .line 654
    .line 655
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 656
    .line 657
    .line 658
    :cond_17
    if-eqz v5, :cond_1a

    .line 659
    .line 660
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 661
    .line 662
    iget-object v2, p0, Lcom/kongzue/dialogx/util/n;->c:Landroid/content/Context;

    .line 663
    .line 664
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 677
    .line 678
    .line 679
    goto :goto_a

    .line 680
    :cond_18
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 681
    .line 682
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 686
    .line 687
    if-eqz v0, :cond_1a

    .line 688
    .line 689
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    goto :goto_a

    .line 693
    :cond_19
    iget-object v1, v0, Lcom/kongzue/dialogx/util/n$a;->b:Landroid/widget/ImageView;

    .line 694
    .line 695
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    .line 697
    .line 698
    iget-object v0, v0, Lcom/kongzue/dialogx/util/n$a;->d:Landroid/widget/Space;

    .line 699
    .line 700
    if-eqz v0, :cond_1a

    .line 701
    .line 702
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    .line 704
    .line 705
    :cond_1a
    :goto_a
    iget-object v0, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 706
    .line 707
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->B2()Lcom/kongzue/dialogx/interfaces/m;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    if-eqz v0, :cond_1b

    .line 712
    .line 713
    iget-object v0, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 714
    .line 715
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->B2()Lcom/kongzue/dialogx/interfaces/m;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/kongzue/dialogx/util/n;->d:Lcom/kongzue/dialogx/dialogs/i;

    .line 720
    .line 721
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/kongzue/dialogx/interfaces/m;->a(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 722
    .line 723
    .line 724
    :cond_1b
    return-object p2
.end method
