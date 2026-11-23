.class public Lcom/join/mgps/adapter/s4;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/s4$d;,
        Lcom/join/mgps/adapter/s4$c;
    }
.end annotation


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lists",
            "mContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/s4;->c:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/adapter/s4;->d:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/s4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/s4;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

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

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/s4;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/join/mgps/dto/AccountVoucher;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    const-string p3, "</font>"

    .line 2
    .line 3
    const-string v0, "<font color = \'#D33D3E\'>"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/s4;->getItemViewType(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lcom/join/mgps/adapter/s4;->e:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p2, :cond_2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/s4;->d:Landroid/view/LayoutInflater;

    .line 21
    .line 22
    const v4, 0x7f0d076c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v1, Lcom/join/mgps/adapter/s4$c;

    .line 30
    .line 31
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/s4$c;-><init>(Lcom/join/mgps/adapter/s4;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/s4;->d:Landroid/view/LayoutInflater;

    .line 39
    .line 40
    const v4, 0x7f0d076f

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v1, Lcom/join/mgps/adapter/s4$d;

    .line 48
    .line 49
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/s4$d;-><init>(Lcom/join/mgps/adapter/s4;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-eq v1, v3, :cond_3

    .line 59
    .line 60
    :goto_0
    move-object v1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/join/mgps/adapter/s4$c;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/join/mgps/adapter/s4$d;

    .line 74
    .line 75
    :goto_1
    move-object v11, v2

    .line 76
    move-object v2, v1

    .line 77
    move-object v1, v11

    .line 78
    :goto_2
    iget v4, p0, Lcom/join/mgps/adapter/s4;->e:I

    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    const/4 v6, 0x0

    .line 82
    if-eqz v4, :cond_8

    .line 83
    .line 84
    if-eq v4, v3, :cond_5

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_5
    iget-object p3, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    instance-of p3, p3, Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 95
    .line 96
    if-eqz p3, :cond_9

    .line 97
    .line 98
    iget-object p3, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 105
    .line 106
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->a:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_title()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_type()I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eq p3, v3, :cond_7

    .line 120
    .line 121
    if-eq p3, v5, :cond_6

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->b:Landroid/widget/TextView;

    .line 125
    .line 126
    const/16 v0, 0x8

    .line 127
    .line 128
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->c:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->d:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->b:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->c:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->d:Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/adapter/s4;->c:Landroid/content/Context;

    .line 155
    .line 156
    const/high16 v2, 0x41700000    # 15.0f

    .line 157
    .line 158
    invoke-static {v0, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {p3, v6, v6, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    .line 164
    .line 165
    :goto_3
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->b:Landroid/widget/TextView;

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v2, "\uffe5"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_money()D

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->c:Landroid/widget/TextView;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/adapter/s4;->c:Landroid/content/Context;

    .line 194
    .line 195
    const v2, 0x7f120562

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-array v2, v3, [Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_surplus()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    aput-object v3, v2, v6

    .line 213
    .line 214
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    iget-object p3, v1, Lcom/join/mgps/adapter/s4$c;->e:Landroid/widget/LinearLayout;

    .line 222
    .line 223
    new-instance v0, Lcom/join/mgps/adapter/s4$b;

    .line 224
    .line 225
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/s4$b;-><init>(Lcom/join/mgps/adapter/s4;Lcom/join/mgps/dto/AccountVoucherGameBean;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_4

    .line 232
    .line 233
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    instance-of v1, v1, Lcom/join/mgps/dto/AccountVoucher;

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    iget-object v1, p0, Lcom/join/mgps/adapter/s4;->b:Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Lcom/join/mgps/dto/AccountVoucher;

    .line 250
    .line 251
    iget-object v1, v2, Lcom/join/mgps/adapter/s4$d;->a:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_name()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v2, Lcom/join/mgps/adapter/s4$d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_icon()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v2, Lcom/join/mgps/adapter/s4$d;->f:Landroid/widget/TextView;

    .line 270
    .line 271
    iget-object v4, p0, Lcom/join/mgps/adapter/s4;->c:Landroid/content/Context;

    .line 272
    .line 273
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    const v7, 0x7f120550

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    new-array v7, v3, [Ljava/lang/Object;

    .line 285
    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountVoucherStatus;->getUsed()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getMoney()D

    .line 303
    .line 304
    .line 305
    move-result-wide v9

    .line 306
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    aput-object v8, v7, v6

    .line 317
    .line 318
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v2, Lcom/join/mgps/adapter/s4$d;->e:Landroid/widget/TextView;

    .line 330
    .line 331
    iget-object v2, p0, Lcom/join/mgps/adapter/s4;->c:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    const v4, 0x7f120566

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    new-array v4, v5, [Ljava/lang/Object;

    .line 345
    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountVoucherStatus;->getAvailable()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getCount()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    aput-object v5, v4, v6

    .line 377
    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountVoucherStatus;->getAvailable()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getMoney()D

    .line 395
    .line 396
    .line 397
    move-result-wide v6

    .line 398
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p3

    .line 408
    aput-object p3, v4, v3

    .line 409
    .line 410
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p3

    .line 414
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 415
    .line 416
    .line 417
    move-result-object p3

    .line 418
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    new-instance p3, Lcom/join/mgps/adapter/s4$a;

    .line 422
    .line 423
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/s4$a;-><init>(Lcom/join/mgps/adapter/s4;Lcom/join/mgps/dto/AccountVoucher;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .line 428
    .line 429
    goto :goto_4

    .line 430
    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 432
    .line 433
    .line 434
    :cond_9
    :goto_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
