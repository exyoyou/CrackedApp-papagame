.class Lcom/join/mgps/activity/d3$u;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "u"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/d3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

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
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

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
    iget-object p2, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/d3;->T:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d0636

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/activity/d3$v;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 22
    .line 23
    invoke-direct {p3, v0}, Lcom/join/mgps/activity/d3$v;-><init>(Lcom/join/mgps/activity/d3;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0a48

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    iput-object v0, p3, Lcom/join/mgps/activity/d3$v;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    const v0, 0x7f0a0a28

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .line 46
    iput-object v0, p3, Lcom/join/mgps/activity/d3$v;->b:Landroid/widget/ImageView;

    .line 47
    .line 48
    const v0, 0x7f0a1a48

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p3, Lcom/join/mgps/activity/d3$v;->c:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f0a1a24

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p3, Lcom/join/mgps/activity/d3$v;->d:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0a0ef7

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 78
    .line 79
    iput-object v0, p3, Lcom/join/mgps/activity/d3$v;->f:Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    const v0, 0x7f0a13d7

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    iput-object v0, p3, Lcom/join/mgps/activity/d3$v;->g:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Lcom/join/mgps/activity/d3$v;

    .line 101
    .line 102
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v2, ""

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_1

    .line 160
    .line 161
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 192
    .line 193
    const v1, 0x7f080caf

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->c:Landroid/widget/TextView;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 202
    .line 203
    iget-object v1, v1, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->d:Landroid/widget/TextView;

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 226
    .line 227
    iget-object v2, v2, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v2, "\u6b3e"

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/join/mgps/activity/d3;->g2:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v1, "0"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_2

    .line 275
    .line 276
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->b:Landroid/widget/ImageView;

    .line 277
    .line 278
    const v1, 0x7f0805b4

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->b:Landroid/widget/ImageView;

    .line 286
    .line 287
    const v1, 0x7f0805b5

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/join/mgps/activity/d3$u;->b:Lcom/join/mgps/activity/d3;

    .line 294
    .line 295
    iget v1, v0, Lcom/join/mgps/activity/d3;->X:I

    .line 296
    .line 297
    add-int/lit8 v1, v1, 0x1

    .line 298
    .line 299
    iput v1, v0, Lcom/join/mgps/activity/d3;->X:I

    .line 300
    .line 301
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/activity/d3$v;->g:Landroid/widget/RelativeLayout;

    .line 302
    .line 303
    new-instance v1, Lcom/join/mgps/activity/d3$u$a;

    .line 304
    .line 305
    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/activity/d3$u$a;-><init>(Lcom/join/mgps/activity/d3$u;ILcom/join/mgps/activity/d3$v;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    return-object p2
.end method
