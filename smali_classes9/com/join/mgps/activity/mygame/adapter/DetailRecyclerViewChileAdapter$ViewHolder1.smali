.class public Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder1"
.end annotation


# instance fields
.field private appName:Landroid/widget/TextView;

.field private comment:Landroid/widget/TextView;

.field private gameScore:Landroid/widget/TextView;

.field private gameStar:Lcom/join/mgps/customview/MStarBar;

.field private icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private img:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private main:Landroid/view/View;

.field private scrolNew:Landroid/widget/TextView;

.field private tag:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a00ee

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->appName:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a071b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    .line 27
    .line 28
    const p1, 0x7f0a166e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->tag:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a0719

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameScore:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a0fee

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->main:Landroid/view/View;

    .line 58
    .line 59
    const p1, 0x7f0a08cf

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    const p1, 0x7f0a084f

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 80
    .line 81
    const p1, 0x7f0a03cb

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->comment:Landroid/widget/TextView;

    .line 91
    .line 92
    const p1, 0x7f0a1488

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->scrolNew:Landroid/widget/TextView;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public setData(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionx"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    const/4 v2, 0x4

    .line 30
    if-eq p1, v2, :cond_1

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v3, 0x6

    .line 40
    if-eq p1, v3, :cond_2

    .line 41
    .line 42
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-gt v4, v3, :cond_4

    .line 53
    .line 54
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 55
    .line 56
    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-lt v4, v1, :cond_3

    .line 65
    .line 66
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 88
    .line 89
    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-lt v4, v3, :cond_4

    .line 98
    .line 99
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->comment:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getFirst_hot_comment()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const/4 v3, 0x1

    .line 143
    if-ne v1, v3, :cond_5

    .line 144
    .line 145
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 146
    .line 147
    const v3, 0x3f408312    # 0.752f

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 155
    .line 156
    const/high16 v3, 0x3f800000    # 1.0f

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    .line 159
    .line 160
    .line 161
    :goto_0
    if-nez p1, :cond_6

    .line 162
    .line 163
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 164
    .line 165
    const v3, 0x3f59999a    # 0.85f

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    .line 169
    .line 170
    .line 171
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lcom/facebook/drawee/generic/a;

    .line 178
    .line 179
    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const v4, 0x7f080caf

    .line 189
    .line 190
    .line 191
    const-string v5, ""

    .line 192
    .line 193
    if-nez p1, :cond_8

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_gif()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_gif()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iget-object v6, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 210
    .line 211
    invoke-static {v6, p1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_pic()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_8

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_pic()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object v6, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 230
    .line 231
    invoke-static {v6, v4, p1, v3}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_8
    move-object p1, v5

    .line 236
    :goto_1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    const/4 v6, 0x0

    .line 241
    if-eqz p1, :cond_9

    .line 242
    .line 243
    if-eqz v1, :cond_9

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-lez p1, :cond_9

    .line 250
    .line 251
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 266
    .line 267
    invoke-static {v1, v4, p1, v3}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 268
    .line 269
    .line 270
    :cond_9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_a

    .line 283
    .line 284
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Lcom/join/mgps/dto/TipBean;

    .line 289
    .line 290
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->tag:Landroid/widget/TextView;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->appName:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 313
    .line 314
    .line 315
    move-result-wide v3

    .line 316
    invoke-static {v3, v4}, Lcom/join/mgps/Util/t2;->k(D)D

    .line 317
    .line 318
    .line 319
    move-result-wide v3

    .line 320
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    .line 321
    .line 322
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 323
    .line 324
    .line 325
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    .line 326
    .line 327
    invoke-virtual {p1, v6}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 328
    .line 329
    .line 330
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    .line 331
    .line 332
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    .line 334
    .line 335
    const-string p1, "0.0"

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_b

    .line 346
    .line 347
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameScore:Landroid/widget/TextView;

    .line 348
    .line 349
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    .line 353
    .line 354
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->scrolNew:Landroid/widget/TextView;

    .line 358
    .line 359
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    .line 364
    .line 365
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameScore:Landroid/widget/TextView;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->scrolNew:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->main:Landroid/view/View;

    .line 387
    .line 388
    new-instance v1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;

    .line 389
    .line 390
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;-><init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    .line 396
    return-void
.end method
