.class public Lcom/join/mgps/adapter/p1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/p1$b;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/p1;->f:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/p1;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pic_position",
            "strings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/adapter/p1;->f:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/p1;->c:Landroid/view/LayoutInflater;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/join/mgps/adapter/p1;->e:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 8
    .line 9
    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/p1;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

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
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/p1;->a(I)Lcom/join/mgps/dto/ImageInfo;

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
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/p1;->c:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const p3, 0x7f0d02f6

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/join/mgps/adapter/p1$b;

    .line 14
    .line 15
    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/p1$b;-><init>(Lcom/join/mgps/adapter/p1;Lcom/join/mgps/adapter/p1$a;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a08bc

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    iput-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const v0, 0x7f0a08b8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a08bb

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/p1$b;->d:Landroid/widget/ImageView;

    .line 50
    .line 51
    const v0, 0x7f0a1b63

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/FrameLayout;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/p1$b;->c:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    const v0, 0x7f0a1407

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/p1$b;->e:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    const v0, 0x7f0a015d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/p1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Lcom/join/mgps/adapter/p1$b;

    .line 93
    .line 94
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/p1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p3, Lcom/join/mgps/adapter/p1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, 0x0

    .line 112
    const/16 v3, 0x8

    .line 113
    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    iget-object v1, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p3, Lcom/join/mgps/adapter/p1$b;->d:Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p3, Lcom/join/mgps/adapter/p1$b;->e:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getVideoUrl()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object p3, p3, Lcom/join/mgps/adapter/p1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 141
    .line 142
    const v2, 0x7f08018d

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {p3, v2, v3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance p3, Lcom/join/android/app/component/video/c$l;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->d:Landroid/widget/ImageView;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->e:Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget v0, p0, Lcom/join/mgps/adapter/p1;->e:I

    .line 174
    .line 175
    const/4 v1, 0x1

    .line 176
    const v4, 0x7f0713fa

    .line 177
    .line 178
    .line 179
    if-ne v0, v1, :cond_5

    .line 180
    .line 181
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/join/mgps/adapter/p1;->f:Z

    .line 187
    .line 188
    const v1, 0x7f0713ab

    .line 189
    .line 190
    .line 191
    if-eqz v0, :cond_3

    .line 192
    .line 193
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 212
    .line 213
    iget-object v2, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const v4, 0x7f07133e

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 227
    .line 228
    iget-object v2, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 229
    .line 230
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    .line 247
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    .line 249
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 266
    .line 267
    iget-object v2, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-object v2, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    int-to-float v1, v1

    .line 290
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 299
    .line 300
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_4

    .line 311
    .line 312
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 313
    .line 314
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 331
    .line 332
    iget-object v2, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 333
    .line 334
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    iget-object v2, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 345
    .line 346
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    int-to-float v1, v1

    .line 355
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 360
    .line 361
    .line 362
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 363
    .line 364
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/adapter/p1;->f:Z

    .line 370
    .line 371
    if-eqz v0, :cond_7

    .line 372
    .line 373
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 380
    .line 381
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 392
    .line 393
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 394
    .line 395
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    const v4, 0x7f071528

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 407
    .line 408
    iget-object v1, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 409
    .line 410
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 414
    .line 415
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 420
    .line 421
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_6

    .line 426
    .line 427
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 428
    .line 429
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 430
    .line 431
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 436
    .line 437
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    goto :goto_2

    .line 445
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 446
    .line 447
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 448
    .line 449
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 454
    .line 455
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 460
    .line 461
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    const v5, 0x7f071293

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    int-to-float v4, v4

    .line 473
    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 482
    .line 483
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_8

    .line 494
    .line 495
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 496
    .line 497
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 498
    .line 499
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 504
    .line 505
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    goto :goto_2

    .line 513
    :cond_8
    iget-object v0, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 514
    .line 515
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->d:Ljava/util/List;

    .line 516
    .line 517
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 522
    .line 523
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    iget-object v1, p0, Lcom/join/mgps/adapter/p1;->b:Landroid/content/Context;

    .line 528
    .line 529
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    const v5, 0x7f07133c

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    int-to-float v4, v4

    .line 541
    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 546
    .line 547
    .line 548
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/p1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 549
    .line 550
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 551
    .line 552
    .line 553
    iget-object p1, p3, Lcom/join/mgps/adapter/p1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 554
    .line 555
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    .line 557
    .line 558
    :goto_3
    return-object p2
.end method
