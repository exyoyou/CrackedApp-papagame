.class public Lcom/join/mgps/adapter/k3;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/k3$g;,
        Lcom/join/mgps/adapter/k3$e;,
        Lcom/join/mgps/adapter/k3$f;
    }
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/wufan/user/service/protobuf/UserInfo;

.field private e:J

.field private f:[Ljava/lang/String;

.field private g:[I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/k3;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "\u66f4\u591a"

    .line 15
    .line 16
    const-string v1, "\u996d\u7968\u4e2d\u5fc3"

    .line 17
    .line 18
    const-string v2, "\u5b58\u53f7\u7bb1"

    .line 19
    .line 20
    const-string v3, "\u4e0b\u8f7d\u8bbe\u7f6e"

    .line 21
    .line 22
    const-string v4, "\u5efa\u8bae\u4e0e\u53cd\u9988"

    .line 23
    .line 24
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/adapter/k3;->f:[Ljava/lang/String;

    .line 29
    .line 30
    const v0, 0x7f0812ac

    .line 31
    .line 32
    .line 33
    const v1, 0x7f080d6f

    .line 34
    .line 35
    .line 36
    const v2, 0x7f080fe3

    .line 37
    .line 38
    .line 39
    const v3, 0x7f08103b

    .line 40
    .line 41
    .line 42
    filled-new-array {v2, v3, v0, v1, v2}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/join/mgps/adapter/k3;->g:[I

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/join/mgps/adapter/k3;->h:Z

    .line 50
    .line 51
    iput-object p1, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 52
    .line 53
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/k3;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showGBA"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/k3;->h:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k3;->f:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/k3;->getItemViewType(I)I

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
    const v3, 0x7f0a098f

    .line 13
    .line 14
    .line 15
    if-eq p3, v1, :cond_1

    .line 16
    .line 17
    if-eq p3, v0, :cond_0

    .line 18
    .line 19
    :goto_0
    move-object v3, v2

    .line 20
    :goto_1
    move-object v4, v3

    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/k3$f;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/k3$f;-><init>(Lcom/join/mgps/adapter/k3;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const v5, 0x7f0d0666

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    iput-object v3, p2, Lcom/join/mgps/adapter/k3$f;->a:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    const v3, 0x7f0a0989

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object v3, p2, Lcom/join/mgps/adapter/k3$f;->b:Landroid/widget/ImageView;

    .line 59
    .line 60
    const v3, 0x7f0a011e

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v3, p2, Lcom/join/mgps/adapter/k3$f;->c:Landroid/widget/ImageView;

    .line 70
    .line 71
    const v3, 0x7f0a099b

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v3, p2, Lcom/join/mgps/adapter/k3$f;->d:Landroid/widget/TextView;

    .line 81
    .line 82
    const v3, 0x7f0a0982

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v3, p2, Lcom/join/mgps/adapter/k3$f;->e:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v3, v2

    .line 97
    move-object v6, v4

    .line 98
    move-object v4, p2

    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/k3$e;

    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/k3$e;-><init>(Lcom/join/mgps/adapter/k3;)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const v5, 0x7f0d0667

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 124
    .line 125
    iput-object v3, p2, Lcom/join/mgps/adapter/k3$e;->a:Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    invoke-virtual {v4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move-object v3, v2

    .line 131
    move-object v2, p2

    .line 132
    move-object p2, v4

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    new-instance p2, Lcom/join/mgps/adapter/k3$g;

    .line 135
    .line 136
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/k3$g;-><init>(Lcom/join/mgps/adapter/k3;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const v4, 0x7f0d0668

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const v4, 0x7f0a10c9

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Landroid/widget/LinearLayout;

    .line 160
    .line 161
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->a:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    const v4, 0x7f0a10c7

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Landroid/widget/LinearLayout;

    .line 171
    .line 172
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->b:Landroid/widget/LinearLayout;

    .line 173
    .line 174
    const v4, 0x7f0a1b00

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 182
    .line 183
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 184
    .line 185
    const v4, 0x7f0a150b

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Landroid/widget/ImageView;

    .line 193
    .line 194
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->d:Landroid/widget/ImageView;

    .line 195
    .line 196
    const v4, 0x7f0a0773

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroid/widget/ImageView;

    .line 204
    .line 205
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->e:Landroid/widget/ImageView;

    .line 206
    .line 207
    const v4, 0x7f0a0065

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Landroid/widget/TextView;

    .line 215
    .line 216
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->f:Landroid/widget/TextView;

    .line 217
    .line 218
    const v4, 0x7f0a120e

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Landroid/widget/TextView;

    .line 226
    .line 227
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->h:Landroid/widget/TextView;

    .line 228
    .line 229
    const v4, 0x7f0a11f9

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    check-cast v4, Landroid/widget/TextView;

    .line 237
    .line 238
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->i:Landroid/widget/TextView;

    .line 239
    .line 240
    const v4, 0x7f0a0e59

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Landroid/widget/TextView;

    .line 248
    .line 249
    iput-object v4, p2, Lcom/join/mgps/adapter/k3$g;->g:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    move-object v4, v2

    .line 255
    move-object v6, v3

    .line 256
    move-object v3, p2

    .line 257
    :goto_2
    move-object p2, v6

    .line 258
    goto :goto_3

    .line 259
    :cond_3
    if-eqz p3, :cond_6

    .line 260
    .line 261
    if-eq p3, v1, :cond_5

    .line 262
    .line 263
    if-eq p3, v0, :cond_4

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Lcom/join/mgps/adapter/k3$f;

    .line 272
    .line 273
    move-object v4, v3

    .line 274
    move-object v3, v2

    .line 275
    goto :goto_3

    .line 276
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Lcom/join/mgps/adapter/k3$e;

    .line 281
    .line 282
    move-object v4, v2

    .line 283
    move-object v2, v3

    .line 284
    move-object v3, v4

    .line 285
    goto :goto_3

    .line 286
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    check-cast v3, Lcom/join/mgps/adapter/k3$g;

    .line 291
    .line 292
    move-object v4, v2

    .line 293
    :goto_3
    const/4 v5, 0x0

    .line 294
    if-eqz p3, :cond_a

    .line 295
    .line 296
    if-eq p3, v1, :cond_9

    .line 297
    .line 298
    if-eq p3, v0, :cond_7

    .line 299
    .line 300
    goto/16 :goto_7

    .line 301
    .line 302
    :cond_7
    if-ne p1, v1, :cond_8

    .line 303
    .line 304
    iget-object p3, v4, Lcom/join/mgps/adapter/k3$f;->b:Landroid/widget/ImageView;

    .line 305
    .line 306
    iget-object v0, p0, Lcom/join/mgps/adapter/k3;->g:[I

    .line 307
    .line 308
    aget v0, v0, v5

    .line 309
    .line 310
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    .line 312
    .line 313
    iget-object p3, v4, Lcom/join/mgps/adapter/k3$f;->d:Landroid/widget/TextView;

    .line 314
    .line 315
    iget-object v0, p0, Lcom/join/mgps/adapter/k3;->f:[Ljava/lang/String;

    .line 316
    .line 317
    aget-object v0, v0, v5

    .line 318
    .line 319
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_8
    iget-object p3, v4, Lcom/join/mgps/adapter/k3$f;->b:Landroid/widget/ImageView;

    .line 324
    .line 325
    iget-object v0, p0, Lcom/join/mgps/adapter/k3;->g:[I

    .line 326
    .line 327
    add-int/lit8 v1, p1, -0x2

    .line 328
    .line 329
    aget v0, v0, v1

    .line 330
    .line 331
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    .line 333
    .line 334
    iget-object p3, v4, Lcom/join/mgps/adapter/k3$f;->d:Landroid/widget/TextView;

    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/adapter/k3;->f:[Ljava/lang/String;

    .line 337
    .line 338
    aget-object v0, v0, v1

    .line 339
    .line 340
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :goto_4
    iget-object p3, v4, Lcom/join/mgps/adapter/k3$f;->a:Landroid/widget/RelativeLayout;

    .line 344
    .line 345
    new-instance v0, Lcom/join/mgps/adapter/k3$d;

    .line 346
    .line 347
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/k3$d;-><init>(Lcom/join/mgps/adapter/k3;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_7

    .line 354
    .line 355
    :cond_9
    iget-object p1, v2, Lcom/join/mgps/adapter/k3$e;->a:Landroid/widget/RelativeLayout;

    .line 356
    .line 357
    new-instance p3, Lcom/join/mgps/adapter/k3$c;

    .line 358
    .line 359
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/k3$c;-><init>(Lcom/join/mgps/adapter/k3;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_7

    .line 366
    .line 367
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 368
    .line 369
    const/16 p3, 0x8

    .line 370
    .line 371
    if-eqz p1, :cond_e

    .line 372
    .line 373
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->b:Landroid/widget/LinearLayout;

    .line 374
    .line 375
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->a:Landroid/widget/LinearLayout;

    .line 379
    .line 380
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 384
    .line 385
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->g()Z

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_b

    .line 394
    .line 395
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->d:Landroid/widget/ImageView;

    .line 396
    .line 397
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_b
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->d:Landroid/widget/ImageView;

    .line 402
    .line 403
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/adapter/k3;->c:Landroid/content/Context;

    .line 407
    .line 408
    iget-object p3, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 409
    .line 410
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p3

    .line 414
    iget-object v2, v3, Lcom/join/mgps/adapter/k3$g;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 415
    .line 416
    invoke-static {p1, p3, v2}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 420
    .line 421
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    iget-object p3, v3, Lcom/join/mgps/adapter/k3$g;->g:Landroid/widget/TextView;

    .line 426
    .line 427
    invoke-static {p1, p3}, Lcom/join/mgps/Util/w;->h(ILandroid/widget/TextView;)V

    .line 428
    .line 429
    .line 430
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->g:Landroid/widget/TextView;

    .line 431
    .line 432
    new-instance p3, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v2, "LV."

    .line 438
    .line 439
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-object v2, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 443
    .line 444
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p3

    .line 455
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->f:Landroid/widget/TextView;

    .line 459
    .line 460
    iget-object p3, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 461
    .line 462
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p3

    .line 466
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->h:Landroid/widget/TextView;

    .line 470
    .line 471
    new-instance p3, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    iget-object v2, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 477
    .line 478
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 479
    .line 480
    .line 481
    move-result-wide v4

    .line 482
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v2, "\u94dc\u677f"

    .line 486
    .line 487
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p3

    .line 494
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lcom/join/mgps/adapter/k3;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 498
    .line 499
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    if-eq p1, v1, :cond_d

    .line 504
    .line 505
    if-eq p1, v0, :cond_c

    .line 506
    .line 507
    goto :goto_6

    .line 508
    :cond_c
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->e:Landroid/widget/ImageView;

    .line 509
    .line 510
    const p3, 0x7f080084

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    .line 515
    .line 516
    goto :goto_6

    .line 517
    :cond_d
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->e:Landroid/widget/ImageView;

    .line 518
    .line 519
    const p3, 0x7f080085

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    .line 524
    .line 525
    :goto_6
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->b:Landroid/widget/LinearLayout;

    .line 526
    .line 527
    new-instance p3, Lcom/join/mgps/adapter/k3$a;

    .line 528
    .line 529
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/k3$a;-><init>(Lcom/join/mgps/adapter/k3;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    .line 534
    .line 535
    goto :goto_7

    .line 536
    :cond_e
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->b:Landroid/widget/LinearLayout;

    .line 537
    .line 538
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->a:Landroid/widget/LinearLayout;

    .line 542
    .line 543
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    iget-object p1, v3, Lcom/join/mgps/adapter/k3$g;->a:Landroid/widget/LinearLayout;

    .line 547
    .line 548
    new-instance p3, Lcom/join/mgps/adapter/k3$b;

    .line 549
    .line 550
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/k3$b;-><init>(Lcom/join/mgps/adapter/k3;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    .line 555
    .line 556
    :goto_7
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
