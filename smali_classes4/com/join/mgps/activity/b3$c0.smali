.class Lcom/join/mgps/activity/b3$c0;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c0"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

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
    iget-object v0, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->x2:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->x2:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->x2:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
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
    iget-object p2, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

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
    new-instance p3, Lcom/join/mgps/activity/b3$d0;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 22
    .line 23
    invoke-direct {p3, v0}, Lcom/join/mgps/activity/b3$d0;-><init>(Lcom/join/mgps/activity/b3;)V

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
    iput-object v0, p3, Lcom/join/mgps/activity/b3$d0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/activity/b3$d0;->b:Landroid/widget/ImageView;

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
    iput-object v0, p3, Lcom/join/mgps/activity/b3$d0;->c:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/activity/b3$d0;->d:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/activity/b3$d0;->f:Landroid/widget/RelativeLayout;

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
    iput-object v0, p3, Lcom/join/mgps/activity/b3$d0;->g:Landroid/widget/RelativeLayout;

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
    check-cast p3, Lcom/join/mgps/activity/b3$d0;

    .line 101
    .line 102
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/b3$c0;->getItem(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    .line 108
    return-object p2

    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/b3$c0;->getItem(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v2, ""

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 175
    .line 176
    const v1, 0x7f080caf

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 180
    .line 181
    .line 182
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->c:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->d:Landroid/widget/TextView;

    .line 192
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, "\u6b3e"

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v1, "0"

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_3

    .line 228
    .line 229
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->b:Landroid/widget/ImageView;

    .line 230
    .line 231
    const v1, 0x7f0805b4

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->b:Landroid/widget/ImageView;

    .line 239
    .line 240
    const v1, 0x7f0805b5

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 247
    .line 248
    iget v1, v0, Lcom/join/mgps/activity/b3;->r1:I

    .line 249
    .line 250
    add-int/lit8 v1, v1, 0x1

    .line 251
    .line 252
    iput v1, v0, Lcom/join/mgps/activity/b3;->r1:I

    .line 253
    .line 254
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/activity/b3$d0;->g:Landroid/widget/RelativeLayout;

    .line 255
    .line 256
    new-instance v1, Lcom/join/mgps/activity/b3$c0$a;

    .line 257
    .line 258
    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/activity/b3$c0$a;-><init>(Lcom/join/mgps/activity/b3$c0;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;Lcom/join/mgps/activity/b3$d0;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    return-object p2
.end method
