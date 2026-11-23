.class public Lcom/join/mgps/adapter/g1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/g1$a;
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/adapter/g1;->g:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/g1;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/adapter/g1;->f:Landroid/view/LayoutInflater;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/g1;Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/g1;->b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/g1;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->l:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->p:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->j:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/adapter/g1$a;->k:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->l:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->p:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->p:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/g1$a;->j:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/adapter/g1$a;->k:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g1;->g:Ljava/util/List;

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

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g1;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holderx",
            "i"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/join/mgps/adapter/g1$a;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/join/mgps/adapter/g1;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v5, v0, 0x1

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v7, ""

    .line 25
    .line 26
    const/4 v8, 0x3

    .line 27
    const/4 v9, 0x2

    .line 28
    const/4 v10, 0x1

    .line 29
    if-eq v5, v10, :cond_0

    .line 30
    .line 31
    if-eq v5, v9, :cond_0

    .line 32
    .line 33
    if-eq v5, v8, :cond_0

    .line 34
    .line 35
    iget-object v11, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 36
    .line 37
    new-instance v12, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 56
    .line 57
    const/high16 v7, -0x1000000

    .line 58
    .line 59
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 63
    .line 64
    const/high16 v7, 0x41400000    # 12.0f

    .line 65
    .line 66
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    .line 68
    .line 69
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v11, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 80
    .line 81
    new-instance v12, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 100
    .line 101
    const-string v7, "#ff9f15"

    .line 102
    .line 103
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 111
    .line 112
    const/high16 v7, 0x41600000    # 14.0f

    .line 113
    .line 114
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    .line 116
    .line 117
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->h:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->k:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 145
    .line 146
    iget-object v7, v1, Lcom/join/mgps/adapter/g1;->e:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const v11, 0x7f080caf

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v5, v7}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/16 v7, 0x8

    .line 167
    .line 168
    if-ne v5, v10, :cond_1

    .line 169
    .line 170
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->f:Landroid/widget/ImageView;

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_1
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->f:Landroid/widget/ImageView;

    .line 177
    .line 178
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    :goto_1
    iget-object v5, v2, Lcom/join/mgps/adapter/g1$a;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v5, v1, Lcom/join/mgps/adapter/g1;->g:Ljava/util/List;

    .line 191
    .line 192
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 203
    .line 204
    .line 205
    move-result-wide v5

    .line 206
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 207
    .line 208
    mul-double v5, v5, v10

    .line 209
    .line 210
    mul-double v5, v5, v10

    .line 211
    .line 212
    double-to-long v5, v5

    .line 213
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    iget-object v15, v2, Lcom/join/mgps/adapter/g1$a;->j:Landroid/widget/LinearLayout;

    .line 234
    .line 235
    iget-object v8, v1, Lcom/join/mgps/adapter/g1;->e:Landroid/content/Context;

    .line 236
    .line 237
    move-object/from16 v16, v8

    .line 238
    .line 239
    invoke-static/range {v10 .. v16}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    iget-object v8, v2, Lcom/join/mgps/adapter/g1$a;->i:Lcom/join/mgps/customview/DownloadNormalView;

    .line 243
    .line 244
    new-instance v10, Lm6/c;

    .line 245
    .line 246
    iget-object v11, v1, Lcom/join/mgps/adapter/g1;->e:Landroid/content/Context;

    .line 247
    .line 248
    invoke-direct {v10, v11, v0}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8, v10}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_2

    .line 259
    .line 260
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->j:Landroid/widget/LinearLayout;

    .line 261
    .line 262
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->f:Landroid/widget/ImageView;

    .line 266
    .line 267
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_4

    .line 271
    .line 272
    :cond_2
    if-nez v4, :cond_3

    .line 273
    .line 274
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 275
    .line 276
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :cond_3
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v8, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const/16 v8, 0x2b

    .line 300
    .line 301
    if-lez v0, :cond_4

    .line 302
    .line 303
    const/16 v7, 0x2b

    .line 304
    .line 305
    :cond_4
    if-eqz v7, :cond_7

    .line 306
    .line 307
    const/16 v0, 0x30

    .line 308
    .line 309
    if-eq v7, v0, :cond_7

    .line 310
    .line 311
    const-string v0, "/"

    .line 312
    .line 313
    if-eq v7, v9, :cond_6

    .line 314
    .line 315
    const/4 v9, 0x3

    .line 316
    if-eq v7, v9, :cond_5

    .line 317
    .line 318
    const/4 v9, 0x5

    .line 319
    if-eq v7, v9, :cond_7

    .line 320
    .line 321
    const/4 v9, 0x6

    .line 322
    if-eq v7, v9, :cond_5

    .line 323
    .line 324
    const/4 v9, 0x7

    .line 325
    if-eq v7, v9, :cond_7

    .line 326
    .line 327
    const/16 v9, 0x2a

    .line 328
    .line 329
    if-eq v7, v9, :cond_7

    .line 330
    .line 331
    if-eq v7, v8, :cond_7

    .line 332
    .line 333
    packed-switch v7, :pswitch_data_0

    .line 334
    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :pswitch_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 339
    .line 340
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 341
    .line 342
    invoke-virtual {v1, v2, v7, v8}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 343
    .line 344
    .line 345
    iget-object v7, v2, Lcom/join/mgps/adapter/g1$a;->m:Landroid/widget/TextView;

    .line 346
    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->n:Landroid/widget/TextView;

    .line 377
    .line 378
    const-string v5, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 379
    .line 380
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->p:Landroid/widget/ProgressBar;

    .line 384
    .line 385
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 386
    .line 387
    .line 388
    move-result-wide v4

    .line 389
    long-to-int v5, v4

    .line 390
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_4

    .line 394
    .line 395
    :pswitch_1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 396
    .line 397
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 398
    .line 399
    invoke-virtual {v1, v2, v7, v8}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 400
    .line 401
    .line 402
    iget-object v7, v2, Lcom/join/mgps/adapter/g1$a;->m:Landroid/widget/TextView;

    .line 403
    .line 404
    new-instance v8, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->n:Landroid/widget/TextView;

    .line 434
    .line 435
    const-string v5, "\u89e3\u538b\u4e2d.."

    .line 436
    .line 437
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->p:Landroid/widget/ProgressBar;

    .line 441
    .line 442
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 443
    .line 444
    .line 445
    move-result-wide v4

    .line 446
    long-to-int v5, v4

    .line 447
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_4

    .line 451
    .line 452
    :pswitch_2
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 453
    .line 454
    invoke-virtual {v1, v2, v7, v7}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 455
    .line 456
    .line 457
    :try_start_0
    iget-object v7, v2, Lcom/join/mgps/adapter/g1$a;->m:Landroid/widget/TextView;

    .line 458
    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 465
    .line 466
    .line 467
    move-result-wide v9

    .line 468
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 493
    .line 494
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 495
    .line 496
    .line 497
    move-result-wide v4

    .line 498
    long-to-int v5, v4

    .line 499
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .line 501
    .line 502
    goto :goto_2

    .line 503
    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 505
    .line 506
    .line 507
    :goto_2
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->n:Landroid/widget/TextView;

    .line 508
    .line 509
    const-string v4, "\u7b49\u5f85\u4e2d"

    .line 510
    .line 511
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_4

    .line 515
    .line 516
    :cond_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 517
    .line 518
    invoke-virtual {v1, v2, v7, v7}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 519
    .line 520
    .line 521
    :try_start_1
    iget-object v7, v2, Lcom/join/mgps/adapter/g1$a;->m:Landroid/widget/TextView;

    .line 522
    .line 523
    new-instance v8, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 529
    .line 530
    .line 531
    move-result-wide v9

    .line 532
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    .line 555
    .line 556
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 557
    .line 558
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 559
    .line 560
    .line 561
    move-result-wide v4

    .line 562
    long-to-int v5, v4

    .line 563
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    .line 565
    .line 566
    goto :goto_3

    .line 567
    :catch_1
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 569
    .line 570
    .line 571
    :goto_3
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->n:Landroid/widget/TextView;

    .line 572
    .line 573
    const-string v4, "\u6682\u505c\u4e2d"

    .line 574
    .line 575
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .line 577
    .line 578
    goto :goto_4

    .line 579
    :cond_6
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 580
    .line 581
    invoke-virtual {v1, v2, v7, v7}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 582
    .line 583
    .line 584
    iget-object v7, v2, Lcom/join/mgps/adapter/g1$a;->m:Landroid/widget/TextView;

    .line 585
    .line 586
    new-instance v8, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 592
    .line 593
    .line 594
    move-result-wide v9

    .line 595
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->n:Landroid/widget/TextView;

    .line 620
    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v6, "/S"

    .line 634
    .line 635
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 646
    .line 647
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 648
    .line 649
    .line 650
    move-result-wide v4

    .line 651
    long-to-int v5, v4

    .line 652
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 653
    .line 654
    .line 655
    goto :goto_4

    .line 656
    :cond_7
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 657
    .line 658
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 659
    .line 660
    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/g1;->c(Lcom/join/mgps/adapter/g1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 661
    .line 662
    .line 663
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/adapter/g1$a;->e:Landroid/view/View;

    .line 664
    .line 665
    new-instance v2, Lcom/join/mgps/adapter/f1;

    .line 666
    .line 667
    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/f1;-><init>(Lcom/join/mgps/adapter/g1;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    nop

    .line 675
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/g1;->f:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    const v0, 0x7f0d0143

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lcom/join/mgps/adapter/g1$a;

    .line 12
    .line 13
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/g1$a;-><init>(Lcom/join/mgps/adapter/g1;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a18b0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->d:Landroid/widget/TextView;

    .line 26
    .line 27
    const v0, 0x7f0a0790

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->f:Landroid/widget/ImageView;

    .line 37
    .line 38
    const v0, 0x7f0a1044

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    const v0, 0x7f0a1042

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->h:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a054e

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 68
    .line 69
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->i:Lcom/join/mgps/customview/DownloadNormalView;

    .line 70
    .line 71
    const v0, 0x7f0a1764

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    .line 80
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->j:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    const v0, 0x7f0a1043

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->k:Landroid/widget/TextView;

    .line 92
    .line 93
    const v0, 0x7f0a0e73

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    .line 102
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->l:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const v0, 0x7f0a00f7

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->m:Landroid/widget/TextView;

    .line 114
    .line 115
    const v0, 0x7f0a0f94

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->n:Landroid/widget/TextView;

    .line 125
    .line 126
    const v0, 0x7f0a129e

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/ProgressBar;

    .line 134
    .line 135
    iput-object v0, p2, Lcom/join/mgps/adapter/g1$a;->o:Landroid/widget/ProgressBar;

    .line 136
    .line 137
    const v0, 0x7f0a12a5

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/ProgressBar;

    .line 145
    .line 146
    iput-object p1, p2, Lcom/join/mgps/adapter/g1$a;->p:Landroid/widget/ProgressBar;

    .line 147
    .line 148
    return-object p2
.end method
