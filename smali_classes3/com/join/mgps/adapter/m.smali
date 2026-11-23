.class public Lcom/join/mgps/adapter/m;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/m$c;
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

.field private e:Landroid/os/Handler;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/m;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "packageDataBeanList",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/m;->c:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/m;->d:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/m;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/m;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/m;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/m;->e:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m;->d:Ljava/util/List;

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
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
    new-instance p2, Lcom/join/mgps/adapter/m$c;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m$c;-><init>(Lcom/join/mgps/adapter/m;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/m;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0366

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
    const v0, 0x7f0a0e72

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
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->a:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const v0, 0x7f0a1044

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
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const v0, 0x7f0a0790

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->c:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v0, 0x7f0a1042

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
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v0, 0x7f0a12f7

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->e:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    const v0, 0x7f0a1045

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
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    const v0, 0x7f0a0012

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->g:Landroid/widget/TextView;

    .line 98
    .line 99
    const v0, 0x7f0a0010

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->h:Landroid/widget/TextView;

    .line 109
    .line 110
    const v0, 0x7f0a0011

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v0, p2, Lcom/join/mgps/adapter/m$c;->i:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    check-cast p3, Lcom/join/mgps/adapter/m$c;

    .line 130
    .line 131
    move-object v5, p3

    .line 132
    move-object p3, p2

    .line 133
    move-object p2, v5

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m;->d:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 141
    .line 142
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/join/mgps/adapter/m;->c:Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const v3, 0x7f08018d

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->c:Landroid/widget/ImageView;

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->d:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->g:Landroid/widget/TextView;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_surplus()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, "/"

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->h:Landroid/widget/TextView;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_count()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v2, ""

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->i:Landroid/widget/TextView;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    const-wide/16 v3, 0x3e8

    .line 234
    .line 235
    mul-long v1, v1, v3

    .line 236
    .line 237
    invoke-static {v1, v2}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    const/4 v1, 0x1

    .line 249
    if-ne v0, v1, :cond_2

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-ne v0, v1, :cond_1

    .line 256
    .line 257
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->f:Landroid/widget/TextView;

    .line 258
    .line 259
    const-string v1, "\u5df2\u8fc7\u671f"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->f:Landroid/widget/TextView;

    .line 266
    .line 267
    const-string v1, "\u590d\u5236"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->f:Landroid/widget/TextView;

    .line 274
    .line 275
    const-string v1, "\u9886\u53d6"

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    :goto_1
    iget-object v0, p2, Lcom/join/mgps/adapter/m$c;->a:Landroid/widget/LinearLayout;

    .line 281
    .line 282
    new-instance v1, Lcom/join/mgps/adapter/m$a;

    .line 283
    .line 284
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/m$a;-><init>(Lcom/join/mgps/adapter/m;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object p2, p2, Lcom/join/mgps/adapter/m$c;->e:Landroid/widget/RelativeLayout;

    .line 291
    .line 292
    new-instance v0, Lcom/join/mgps/adapter/m$b;

    .line 293
    .line 294
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/m$b;-><init>(Lcom/join/mgps/adapter/m;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    .line 299
    .line 300
    return-object p3
.end method
