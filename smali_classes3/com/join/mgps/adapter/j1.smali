.class public Lcom/join/mgps/adapter/j1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/j1$b;
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

.field f:Lcom/join/android/app/component/video/c;

.field g:Z


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

    iput-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/j1;->g:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/j1;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/join/android/app/component/video/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pic_position",
            "strings",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ImageInfo;",
            ">;",
            "Lcom/join/android/app/component/video/c;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/adapter/j1;->g:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/j1;->c:Landroid/view/LayoutInflater;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/join/mgps/adapter/j1;->e:I

    .line 13
    iput-object p4, p0, Lcom/join/mgps/adapter/j1;->f:Lcom/join/android/app/component/video/c;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/j1;->g:Z

    .line 3
    .line 4
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/j1;->a(I)Lcom/join/mgps/dto/ImageInfo;

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
    .locals 7
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
    iget-object p2, p0, Lcom/join/mgps/adapter/j1;->c:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const p3, 0x7f0d02f2

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
    new-instance p3, Lcom/join/mgps/adapter/j1$b;

    .line 14
    .line 15
    invoke-direct {p3, p0, v0}, Lcom/join/mgps/adapter/j1$b;-><init>(Lcom/join/mgps/adapter/j1;Lcom/join/mgps/adapter/j1$a;)V

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
    iput-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/j1$b;->d:Landroid/widget/ImageView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/j1$b;->c:Landroid/widget/FrameLayout;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/j1$b;->e:Landroid/widget/RelativeLayout;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/j1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    check-cast p3, Lcom/join/mgps/adapter/j1$b;

    .line 93
    .line 94
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/j1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p3, Lcom/join/mgps/adapter/j1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    const/4 v2, 0x1

    .line 112
    const/4 v3, 0x0

    .line 113
    const/16 v4, 0x8

    .line 114
    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    iget-object v1, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p3, Lcom/join/mgps/adapter/j1$b;->d:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p3, Lcom/join/mgps/adapter/j1$b;->e:Landroid/widget/RelativeLayout;

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getVideoUrl()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v4, p3, Lcom/join/mgps/adapter/j1$b;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 142
    .line 143
    const v5, 0x7f08018d

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v4, v5, v6}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v4, Lcom/join/android/app/component/video/c$l;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {v4, p1, v1, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->f:Lcom/join/android/app/component/video/c;

    .line 163
    .line 164
    if-eqz v0, :cond_9

    .line 165
    .line 166
    new-array v1, v2, [Z

    .line 167
    .line 168
    aput-boolean v3, v1, v3

    .line 169
    .line 170
    invoke-virtual {v0, p1, v4, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 171
    .line 172
    .line 173
    iget-object p3, p3, Lcom/join/mgps/adapter/j1$b;->c:Landroid/widget/FrameLayout;

    .line 174
    .line 175
    new-instance v0, Lcom/join/mgps/adapter/j1$a;

    .line 176
    .line 177
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/j1$a;-><init>(Lcom/join/mgps/adapter/j1;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->d:Landroid/widget/ImageView;

    .line 186
    .line 187
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->e:Landroid/widget/RelativeLayout;

    .line 191
    .line 192
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget v0, p0, Lcom/join/mgps/adapter/j1;->e:I

    .line 196
    .line 197
    if-ne v0, v2, :cond_5

    .line 198
    .line 199
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-boolean v0, p0, Lcom/join/mgps/adapter/j1;->g:Z

    .line 205
    .line 206
    const v1, 0x7f0713ab

    .line 207
    .line 208
    .line 209
    if-eqz v0, :cond_3

    .line 210
    .line 211
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .line 219
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const v3, 0x7f0713ba

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 233
    .line 234
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const v3, 0x7f071327

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 248
    .line 249
    iget-object v2, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 250
    .line 251
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_2

    .line 267
    .line 268
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 271
    .line 272
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 287
    .line 288
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    int-to-float v1, v1

    .line 311
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 320
    .line 321
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 326
    .line 327
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_4

    .line 332
    .line 333
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 334
    .line 335
    iget-object v1, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 336
    .line 337
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 352
    .line 353
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 366
    .line 367
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    int-to-float v1, v1

    .line 376
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 381
    .line 382
    .line 383
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 384
    .line 385
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/adapter/j1;->g:Z

    .line 391
    .line 392
    const v1, 0x7f071293

    .line 393
    .line 394
    .line 395
    if-eqz v0, :cond_7

    .line 396
    .line 397
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 398
    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    .line 405
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 406
    .line 407
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    const v5, 0x7f071349

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 419
    .line 420
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 421
    .line 422
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    const v5, 0x7f0713fc

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 434
    .line 435
    iget-object v2, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 436
    .line 437
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 441
    .line 442
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_6

    .line 453
    .line 454
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 455
    .line 456
    iget-object v1, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 457
    .line 458
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 463
    .line 464
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto :goto_2

    .line 472
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 473
    .line 474
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 475
    .line 476
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 481
    .line 482
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 487
    .line 488
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    int-to-float v1, v1

    .line 497
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 502
    .line 503
    .line 504
    goto :goto_2

    .line 505
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 506
    .line 507
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 512
    .line 513
    invoke-virtual {v0}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_8

    .line 518
    .line 519
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 520
    .line 521
    iget-object v1, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 522
    .line 523
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 528
    .line 529
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    goto :goto_2

    .line 537
    :cond_8
    iget-object v0, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 538
    .line 539
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->d:Ljava/util/List;

    .line 540
    .line 541
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 546
    .line 547
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    iget-object v2, p0, Lcom/join/mgps/adapter/j1;->b:Landroid/content/Context;

    .line 552
    .line 553
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    int-to-float v1, v1

    .line 562
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 567
    .line 568
    .line 569
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/j1$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 570
    .line 571
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .line 573
    .line 574
    iget-object p1, p3, Lcom/join/mgps/adapter/j1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 575
    .line 576
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    :cond_9
    :goto_3
    return-object p2
.end method
