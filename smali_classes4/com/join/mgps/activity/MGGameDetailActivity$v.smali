.class Lcom/join/mgps/activity/MGGameDetailActivity$v;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "v"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const p3, 0x7f0d0636

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 24
    .line 25
    invoke-direct {p3, v0}, Lcom/join/mgps/activity/MGGameDetailActivity$w;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0a48

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    iput-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    const v0, 0x7f0a0a28

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    .line 49
    .line 50
    const v0, 0x7f0a1a48

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->c:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a1a24

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->d:Landroid/widget/TextView;

    .line 71
    .line 72
    const v0, 0x7f0a0ef7

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    iput-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->f:Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    const v0, 0x7f0a13d7

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    iput-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->g:Landroid/widget/RelativeLayout;

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    check-cast p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;

    .line 103
    .line 104
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v2, ""

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 162
    .line 163
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 164
    .line 165
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 194
    .line 195
    const v1, 0x7f080caf

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 199
    .line 200
    .line 201
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->c:Landroid/widget/TextView;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 204
    .line 205
    iget-object v1, v1, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->d:Landroid/widget/TextView;

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 228
    .line 229
    iget-object v2, v2, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v2, "\u6b3e"

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "0"

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    .line 278
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    .line 279
    .line 280
    const v1, 0x7f0805b4

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    .line 288
    .line 289
    const v1, 0x7f0805b5

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 296
    .line 297
    iget v1, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 298
    .line 299
    add-int/lit8 v1, v1, 0x1

    .line 300
    .line 301
    iput v1, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 302
    .line 303
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/activity/MGGameDetailActivity$w;->g:Landroid/widget/RelativeLayout;

    .line 304
    .line 305
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;

    .line 306
    .line 307
    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity$v;ILcom/join/mgps/activity/MGGameDetailActivity$w;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    .line 312
    .line 313
    return-object p2
.end method
