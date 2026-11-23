.class public Lcom/join/mgps/adapter/b1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/b1$a;,
        Lcom/join/mgps/adapter/b1$b;
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Lcom/join/mgps/adapter/b1$a;


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
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/b1;->b:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/b1;->c:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/b1;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/b1;->g(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/b1;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/b1;->i(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/b1;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/b1;->h(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic g(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b1;->d:Lcom/join/mgps/adapter/b1$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/b1$a;->f(Lcom/join/mgps/dto/FriendBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic h(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b1;->d:Lcom/join/mgps/adapter/b1$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/b1$a;->A(Lcom/join/mgps/dto/FriendBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic i(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b1;->d:Lcom/join/mgps/adapter/b1$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/b1$a;->s(Lcom/join/mgps/dto/FriendBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public d(I)Lcom/join/mgps/dto/FriendBean;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/b1;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/FriendBean;

    .line 8
    .line 9
    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b1;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/join/mgps/adapter/b1$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b1;->d:Lcom/join/mgps/adapter/b1$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b1;->b:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b1;->d(I)Lcom/join/mgps/dto/FriendBean;

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

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
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
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lcom/join/mgps/adapter/b1$b;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/b1$b;-><init>(Lcom/join/mgps/adapter/b1;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/b1;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0d0410

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v1, 0x7f0a0134

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v1, p2, Lcom/join/mgps/adapter/b1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v1, 0x7f0a10d8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v1, p2, Lcom/join/mgps/adapter/b1$b;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v1, 0x7f0a10a4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v1, p2, Lcom/join/mgps/adapter/b1$b;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v1, 0x7f0a047a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v1, p2, Lcom/join/mgps/adapter/b1$b;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v1, 0x7f0a003b

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v1, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Lcom/join/mgps/adapter/b1$b;

    .line 86
    .line 87
    move-object v3, p3

    .line 88
    move-object p3, p2

    .line 89
    move-object p2, v3

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b1;->d(I)Lcom/join/mgps/dto/FriendBean;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v1, p2, Lcom/join/mgps/adapter/b1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p2, Lcom/join/mgps/adapter/b1$b;->b:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p2, Lcom/join/mgps/adapter/b1$b;->c:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRequestIfo()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_1

    .line 126
    .line 127
    const v1, 0x7f08114a

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p2, Lcom/join/mgps/adapter/b1$b;->d:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 139
    .line 140
    const v1, 0x7f081137

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 147
    .line 148
    const-string v1, "#ffffff"

    .line 149
    .line 150
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    const-string v0, "#FF1E2025"

    .line 159
    .line 160
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->d:Landroid/widget/TextView;

    .line 168
    .line 169
    const/4 v1, 0x4

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/join/mgps/adapter/b1;->c:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const v2, 0x7f0604e5

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 192
    .line 193
    const-string v1, "#FFB5CBD5"

    .line 194
    .line 195
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_2

    .line 207
    .line 208
    const-string v0, "\u63a5\u53d7"

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const/4 v1, 0x1

    .line 216
    if-ne v0, v1, :cond_3

    .line 217
    .line 218
    const-string v0, "\u5df2\u63a5\u53d7"

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    const/4 v1, 0x2

    .line 226
    if-ne v0, v1, :cond_4

    .line 227
    .line 228
    const-string v0, "\u5df2\u62d2\u7edd"

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const/4 v1, 0x3

    .line 236
    if-ne v0, v1, :cond_5

    .line 237
    .line 238
    const-string v0, "\u5df2\u8fc7\u671f"

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    const-string v0, ""

    .line 242
    .line 243
    :goto_2
    iget-object v1, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 249
    .line 250
    new-instance v1, Lcom/join/mgps/adapter/y0;

    .line 251
    .line 252
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/y0;-><init>(Lcom/join/mgps/adapter/b1;Lcom/join/mgps/dto/FriendBean;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p2, Lcom/join/mgps/adapter/b1$b;->d:Landroid/widget/TextView;

    .line 259
    .line 260
    new-instance v1, Lcom/join/mgps/adapter/z0;

    .line 261
    .line 262
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/z0;-><init>(Lcom/join/mgps/adapter/b1;Lcom/join/mgps/dto/FriendBean;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getStatus()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-nez v0, :cond_6

    .line 273
    .line 274
    iget-object p2, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 275
    .line 276
    new-instance v0, Lcom/join/mgps/adapter/a1;

    .line 277
    .line 278
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/a1;-><init>(Lcom/join/mgps/adapter/b1;Lcom/join/mgps/dto/FriendBean;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_6
    iget-object p1, p2, Lcom/join/mgps/adapter/b1$b;->e:Landroid/widget/TextView;

    .line 286
    .line 287
    const/4 p2, 0x0

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    :goto_3
    return-object p3
.end method

.method public j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b1;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lcom/join/mgps/adapter/b1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFriendRequestListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b1;->d:Lcom/join/mgps/adapter/b1$a;

    .line 2
    .line 3
    return-void
.end method
