.class public Lcom/join/mgps/adapter/k2;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/k2$c;,
        Lcom/join/mgps/adapter/k2$e;,
        Lcom/join/mgps/adapter/k2$d;
    }
.end annotation


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll6/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "handler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/adapter/k2;->c:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/join/mgps/adapter/k2;->e:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/k2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/k2;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/k2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/k2;->e:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)Ll6/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ll6/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ll6/a;

    .line 8
    .line 9
    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll6/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/k2;->c(I)Ll6/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
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
    iget-object v0, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ll6/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Ll6/a;->d()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/k2;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_3

    .line 9
    .line 10
    if-eqz p3, :cond_2

    .line 11
    .line 12
    if-eq p3, v1, :cond_1

    .line 13
    .line 14
    if-eq p3, v0, :cond_0

    .line 15
    .line 16
    :goto_0
    move-object v3, v2

    .line 17
    move-object v4, v3

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/k2$d;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/k2$d;-><init>(Lcom/join/mgps/adapter/k2;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/view/LayoutInflater;

    .line 26
    .line 27
    const v4, 0x7f0d0366

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const v4, 0x7f0a1044

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->b(Lcom/join/mgps/adapter/k2$d;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    .line 46
    const v4, 0x7f0a0790

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->d(Lcom/join/mgps/adapter/k2$d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    const v4, 0x7f0a1042

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->f(Lcom/join/mgps/adapter/k2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    const v4, 0x7f0a12f7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 78
    .line 79
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->h(Lcom/join/mgps/adapter/k2$d;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    .line 82
    const v4, 0x7f0a1932

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->j(Lcom/join/mgps/adapter/k2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 92
    .line 93
    .line 94
    const v4, 0x7f0a0012

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->l(Lcom/join/mgps/adapter/k2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    const v4, 0x7f0a0010

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->n(Lcom/join/mgps/adapter/k2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 116
    .line 117
    .line 118
    const v4, 0x7f0a0011

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$d;->p(Lcom/join/mgps/adapter/k2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    move-object v4, p2

    .line 134
    move-object p2, v3

    .line 135
    :goto_1
    move-object v3, v2

    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/k2$e;

    .line 139
    .line 140
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/k2$e;-><init>(Lcom/join/mgps/adapter/k2;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/view/LayoutInflater;

    .line 144
    .line 145
    const v4, 0x7f0d0369

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const v4, 0x7f0a177f

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$e;->b(Lcom/join/mgps/adapter/k2$e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    move-object v4, v2

    .line 168
    move-object v5, v3

    .line 169
    move-object v3, p2

    .line 170
    move-object p2, v5

    .line 171
    goto :goto_3

    .line 172
    :cond_2
    new-instance p2, Lcom/join/mgps/adapter/k2$c;

    .line 173
    .line 174
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/k2$c;-><init>(Lcom/join/mgps/adapter/k2;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/view/LayoutInflater;

    .line 178
    .line 179
    const v4, 0x7f0d0368

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    const v4, 0x7f0a0094

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 194
    .line 195
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/k2$c;->b(Lcom/join/mgps/adapter/k2$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    move-object v4, v2

    .line 202
    move-object v2, p2

    .line 203
    move-object p2, v3

    .line 204
    :goto_2
    move-object v3, v4

    .line 205
    goto :goto_3

    .line 206
    :cond_3
    if-eqz p3, :cond_6

    .line 207
    .line 208
    if-eq p3, v1, :cond_5

    .line 209
    .line 210
    if-eq p3, v0, :cond_4

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lcom/join/mgps/adapter/k2$d;

    .line 219
    .line 220
    move-object v4, v3

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Lcom/join/mgps/adapter/k2$e;

    .line 227
    .line 228
    move-object v4, v2

    .line 229
    goto :goto_3

    .line 230
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lcom/join/mgps/adapter/k2$c;

    .line 235
    .line 236
    move-object v4, v2

    .line 237
    move-object v2, v3

    .line 238
    goto :goto_2

    .line 239
    :goto_3
    if-eqz p3, :cond_a

    .line 240
    .line 241
    if-eq p3, v1, :cond_9

    .line 242
    .line 243
    if-eq p3, v0, :cond_7

    .line 244
    .line 245
    goto/16 :goto_5

    .line 246
    .line 247
    :cond_7
    iget-object p3, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Ll6/a;

    .line 254
    .line 255
    invoke-virtual {p1}, Ll6/a;->c()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 260
    .line 261
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->a(Lcom/join/mgps/adapter/k2$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const v1, 0x7f080caf

    .line 270
    .line 271
    .line 272
    invoke-static {p3, v1, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->c(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/ImageView;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->e(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/TextView;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->k(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/TextView;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v1, "/"

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->m(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/TextView;

    .line 323
    .line 324
    .line 325
    move-result-object p3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, ""

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->o(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/TextView;

    .line 351
    .line 352
    .line 353
    move-result-object p3

    .line 354
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    .line 355
    .line 356
    .line 357
    move-result-wide v0

    .line 358
    const-wide/16 v2, 0x3e8

    .line 359
    .line 360
    mul-long v0, v0, v2

    .line 361
    .line 362
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 370
    .line 371
    .line 372
    move-result p3

    .line 373
    if-nez p3, :cond_8

    .line 374
    .line 375
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->i(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/TextView;

    .line 376
    .line 377
    .line 378
    move-result-object p3

    .line 379
    const-string v0, "\u9886\u53d6"

    .line 380
    .line 381
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_8
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->i(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/TextView;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    const-string v0, "\u67e5\u770b"

    .line 390
    .line 391
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .line 393
    .line 394
    :goto_4
    invoke-static {v4}, Lcom/join/mgps/adapter/k2$d;->g(Lcom/join/mgps/adapter/k2$d;)Landroid/widget/RelativeLayout;

    .line 395
    .line 396
    .line 397
    move-result-object p3

    .line 398
    new-instance v0, Lcom/join/mgps/adapter/k2$b;

    .line 399
    .line 400
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/k2$b;-><init>(Lcom/join/mgps/adapter/k2;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_9
    iget-object p3, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 408
    .line 409
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Ll6/a;

    .line 414
    .line 415
    invoke-virtual {p1}, Ll6/a;->e()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {v3}, Lcom/join/mgps/adapter/k2$e;->a(Lcom/join/mgps/adapter/k2$e;)Landroid/widget/TextView;

    .line 420
    .line 421
    .line 422
    move-result-object p3

    .line 423
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_a
    iget-object p3, p0, Lcom/join/mgps/adapter/k2;->d:Ljava/util/List;

    .line 428
    .line 429
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    check-cast p1, Ll6/a;

    .line 434
    .line 435
    invoke-virtual {p1}, Ll6/a;->b()Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-static {v2}, Lcom/join/mgps/adapter/k2$c;->a(Lcom/join/mgps/adapter/k2$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 440
    .line 441
    .line 442
    move-result-object p3

    .line 443
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getPic_remote()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const v1, 0x7f08018d

    .line 452
    .line 453
    .line 454
    invoke-static {p3, v1, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v2}, Lcom/join/mgps/adapter/k2$c;->a(Lcom/join/mgps/adapter/k2$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 458
    .line 459
    .line 460
    move-result-object p3

    .line 461
    new-instance v0, Lcom/join/mgps/adapter/k2$a;

    .line 462
    .line 463
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/k2$a;-><init>(Lcom/join/mgps/adapter/k2;Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    .line 468
    .line 469
    :goto_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
