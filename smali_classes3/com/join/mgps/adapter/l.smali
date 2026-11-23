.class public Lcom/join/mgps/adapter/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/l$c;
    }
.end annotation


# instance fields
.field b:Lcom/join/mgps/dto/ExtBean;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
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
    iput-object p1, p0, Lcom/join/mgps/adapter/l;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/l;->c:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/l;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l;->d:Ljava/util/List;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/l$c;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/l$c;-><init>(Lcom/join/mgps/adapter/l;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/l;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0156

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a0e0b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/l$c;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const v0, 0x7f0a0786

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/l$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const v0, 0x7f0a078e

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/l$c;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v0, 0x7f0a078d

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/l$c;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v0, 0x7f0a146e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/join/mgps/adapter/l$c;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    const v0, 0x7f0a146f

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    check-cast p3, Lcom/join/mgps/adapter/l$c;

    .line 97
    .line 98
    move-object v4, p3

    .line 99
    move-object p3, p2

    .line 100
    move-object p2, v4

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/l;->d:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 108
    .line 109
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->c:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->d:Landroid/widget/TextView;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, " \u81f3 "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->e:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/join/mgps/adapter/l;->c:Landroid/content/Context;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const v2, 0x7f08018d

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v3, p0, Lcom/join/mgps/adapter/l;->c:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {v3}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v0, v2, v1, v3}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    const v1, 0x7f080f97

    .line 206
    .line 207
    .line 208
    const v2, -0x577e7

    .line 209
    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    if-ne v0, v3, :cond_2

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-ne v0, v3, :cond_1

    .line 219
    .line 220
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 221
    .line 222
    const-string v1, "\u5df2\u8fc7\u671f"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 228
    .line 229
    const v1, -0x767677

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 236
    .line 237
    const v1, 0x7f080f93

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 245
    .line 246
    const-string v3, "\u590d\u5236"

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 263
    .line 264
    const-string v3, "\u9886\u53d6"

    .line 265
    .line 266
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    .line 278
    .line 279
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/l$c;->a:Landroid/widget/LinearLayout;

    .line 280
    .line 281
    new-instance v1, Lcom/join/mgps/adapter/l$a;

    .line 282
    .line 283
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/l$a;-><init>(Lcom/join/mgps/adapter/l;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object p2, p2, Lcom/join/mgps/adapter/l$c;->f:Landroid/widget/TextView;

    .line 290
    .line 291
    new-instance v0, Lcom/join/mgps/adapter/l$b;

    .line 292
    .line 293
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/l$b;-><init>(Lcom/join/mgps/adapter/l;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    return-object p3
.end method
