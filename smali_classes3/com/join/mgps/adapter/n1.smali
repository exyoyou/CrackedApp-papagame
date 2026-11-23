.class public Lcom/join/mgps/adapter/n1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/n1$b;
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

.field private f:I


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

    iput-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/n1;->f:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/n1;->b:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/n1;->c:Landroid/view/LayoutInflater;

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

    iput-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/n1;->f:I

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/n1;->b:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/n1;->c:Landroid/view/LayoutInflater;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/join/mgps/adapter/n1;->e:I

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
    iget-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIndex"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/n1;->f:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/n1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ImageInfo;->setSelected(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput p1, p0, Lcom/join/mgps/adapter/n1;->f:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/n1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ImageInfo;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/n1;->a(I)Lcom/join/mgps/dto/ImageInfo;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/n1;->c:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const p3, 0x7f0d0421

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
    new-instance p3, Lcom/join/mgps/adapter/n1$b;

    .line 14
    .line 15
    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/n1$b;-><init>(Lcom/join/mgps/adapter/n1;Lcom/join/mgps/adapter/n1$a;)V

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
    iput-object v0, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/n1$b;->d:Landroid/widget/ImageView;

    .line 50
    .line 51
    const v0, 0x7f0a08c0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/n1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v0, 0x7f0a0a19

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/n1$b;->e:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Lcom/join/mgps/adapter/n1$b;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/n1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const-string v2, "#4D000000"

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/16 v4, 0x8

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isSelected()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 122
    .line 123
    .line 124
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->e:Landroid/widget/ImageView;

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 131
    .line 132
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 137
    .line 138
    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->e:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getVideoUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_2

    .line 155
    .line 156
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->d:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->d:Landroid/widget/ImageView;

    .line 163
    .line 164
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    const p3, 0x7f08018d

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {p1, p3, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isSelected()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/4 v1, 0x1

    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    iget v0, p0, Lcom/join/mgps/adapter/n1;->e:I

    .line 189
    .line 190
    if-ne v0, v1, :cond_4

    .line 191
    .line 192
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 201
    .line 202
    .line 203
    :goto_3
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->e:Landroid/widget/ImageView;

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_5
    iget v0, p0, Lcom/join/mgps/adapter/n1;->e:I

    .line 210
    .line 211
    if-ne v0, v1, :cond_6

    .line 212
    .line 213
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 214
    .line 215
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 220
    .line 221
    invoke-virtual {v0, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 226
    .line 227
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 232
    .line 233
    invoke-virtual {v0, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 234
    .line 235
    .line 236
    :goto_4
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->e:Landroid/widget/ImageView;

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    :goto_5
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->d:Landroid/widget/ImageView;

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    iget v0, p0, Lcom/join/mgps/adapter/n1;->e:I

    .line 247
    .line 248
    const v2, 0x7f0714f8

    .line 249
    .line 250
    .line 251
    if-ne v0, v1, :cond_8

    .line 252
    .line 253
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 254
    .line 255
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 259
    .line 260
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Lcom/join/mgps/dto/ImageInfo;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    const/4 v3, 0x6

    .line 278
    const/16 v5, 0xf

    .line 279
    .line 280
    invoke-static {v0, v1, v3, v5}, Lcom/join/android/app/common/utils/l;->M(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_7

    .line 296
    .line 297
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 298
    .line 299
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 316
    .line 317
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->b:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    int-to-float v2, v2

    .line 340
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 345
    .line 346
    .line 347
    :goto_6
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 348
    .line 349
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_9

    .line 366
    .line 367
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 368
    .line 369
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 370
    .line 371
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 376
    .line 377
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_9
    iget-object v0, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 386
    .line 387
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->d:Ljava/util/List;

    .line 388
    .line 389
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 394
    .line 395
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    iget-object v1, p0, Lcom/join/mgps/adapter/n1;->b:Landroid/content/Context;

    .line 400
    .line 401
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    int-to-float v2, v2

    .line 410
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 415
    .line 416
    .line 417
    :goto_7
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 418
    .line 419
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 423
    .line 424
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    iget-object p1, p3, Lcom/join/mgps/adapter/n1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 428
    .line 429
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    :goto_8
    return-object p2
.end method
