.class public Lcom/join/mgps/fragment/f5;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/x6$f;
.implements Lcom/join/mgps/callbacks/n;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02d7
.end annotation


# instance fields
.field A:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field D:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field E:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field F:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:Z

.field c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a145d
    .end annotation
.end field

.field d:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/rpc/k;

.field j:Lcom/join/mgps/adapter/x6;

.field k:Lcom/join/android/app/component/video/h;

.field l:I
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field m:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field n:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field private u:Landroid/content/Context;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->n:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    iput v1, p0, Lcom/join/mgps/fragment/f5;->r:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/join/mgps/fragment/f5;->t:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f5;->v:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f5;->x:Z

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->y:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 30
    .line 31
    iput v1, p0, Lcom/join/mgps/fragment/f5;->G:I

    .line 32
    .line 33
    iput v1, p0, Lcom/join/mgps/fragment/f5;->H:I

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f5;->I:Z

    .line 36
    .line 37
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/f5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/f5;->G:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/f5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/f5;->H:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic R(Lcom/join/mgps/fragment/f5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/f5;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/f5;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/f5;->I:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic U(Lcom/join/mgps/fragment/f5;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/f5;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic V(Lcom/join/mgps/fragment/f5;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/f5;->x:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic W(Lcom/join/mgps/fragment/f5;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic X(Lcom/join/mgps/fragment/f5;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/f5;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/f5;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f5;->updateDownStateList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getFirstCompletelyVisiblePosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getLastCompletelyVisiblePosition()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    if-gt v0, v1, :cond_4

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/join/mgps/adapter/x6$h;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x1

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eq v3, v4, :cond_0

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/4 v5, 0x2

    .line 101
    if-ne v3, v5, :cond_2

    .line 102
    .line 103
    :cond_0
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_2

    .line 108
    .line 109
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 110
    .line 111
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v5, ""

    .line 115
    .line 116
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v6, "101"

    .line 120
    .line 121
    invoke-virtual {v3, v6}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v3, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    if-eqz v6, :cond_1

    .line 140
    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v7}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_1
    sget-object v5, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v3, v5}, Lcom/papa/sim/statistic/Ext;->setWhere(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v4, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    sget-object v5, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v6}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v4, v5, v3, v6}, Lcom/papa/sim/statistic/t;->k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->p2(Lcom/join/mgps/dto/CommonGameInfoBean;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_3

    .line 203
    .line 204
    :try_start_0
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 205
    .line 206
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v4, "discount_game"

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 223
    .line 224
    .line 225
    new-instance v4, Lcom/papa/sim/statistic/Data;

    .line 226
    .line 227
    invoke-direct {v4}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v4, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 242
    .line 243
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    sget-object v5, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 248
    .line 249
    invoke-virtual {v2, v5, v3, v4}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :catch_0
    move-exception v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_4
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allDownloadBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/f5;->H:I

    .line 2
    .line 3
    if-ltz v0, :cond_7

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/f5;->G:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_7

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/f5;->H:I

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/f5;->G:I

    .line 18
    .line 19
    if-gt v0, v1, :cond_7

    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/adapter/x6$h;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_0
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_1
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/16 v3, 0xc

    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    if-eq v2, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ne v2, v3, :cond_6

    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 77
    .line 78
    iget v5, p0, Lcom/join/mgps/fragment/f5;->H:I

    .line 79
    .line 80
    sub-int v5, v0, v5

    .line 81
    .line 82
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    iget-object v5, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 89
    .line 90
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    instance-of v5, v2, Lcom/join/mgps/base/b;

    .line 95
    .line 96
    if-eqz v5, :cond_6

    .line 97
    .line 98
    check-cast v2, Lcom/join/mgps/base/b;

    .line 99
    .line 100
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v5, :cond_3

    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 124
    .line 125
    mul-double v6, v6, v8

    .line 126
    .line 127
    mul-double v6, v6, v8

    .line 128
    .line 129
    double-to-long v6, v6

    .line 130
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 131
    .line 132
    .line 133
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    const-wide/16 v10, 0x0

    .line 135
    .line 136
    const-string v12, "/"

    .line 137
    .line 138
    const v13, 0x7f0a00f7

    .line 139
    .line 140
    .line 141
    cmp-long v14, v8, v10

    .line 142
    .line 143
    if-nez v14, :cond_4

    .line 144
    .line 145
    :try_start_2
    invoke-virtual {v2, v13}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Landroid/widget/TextView;

    .line 150
    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 157
    .line 158
    .line 159
    move-result-wide v10

    .line 160
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v2, v13}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Landroid/widget/TextView;

    .line 190
    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 197
    .line 198
    .line 199
    move-result-wide v10

    .line 200
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-ne v6, v3, :cond_5

    .line 229
    .line 230
    const v3, 0x7f0a12a5

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Landroid/widget/ProgressBar;

    .line 238
    .line 239
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 240
    .line 241
    .line 242
    move-result-wide v6

    .line 243
    long-to-int v7, v6

    .line 244
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_5
    const v3, 0x7f0a129e

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Landroid/widget/ProgressBar;

    .line 256
    .line 257
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 258
    .line 259
    .line 260
    move-result-wide v6

    .line 261
    long-to-int v7, v6

    .line 262
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 263
    .line 264
    .line 265
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-ne v1, v4, :cond_6

    .line 270
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v3, "/S"

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const v3, 0x7f0a0f94

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v3, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :catch_1
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_7
    return-void
.end method


# virtual methods
.method O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "uid",
            "game_id",
            "company_id"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "fromid"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p2, "_from"

    .line 17
    .line 18
    const/16 v1, 0x2b5e

    .line 19
    .line 20
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    :goto_0
    const-string p3, "groupuid"

    .line 36
    .line 37
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p2, "gameid"

    .line 41
    .line 42
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p2, "company_id"

    .line 46
    .line 47
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method a0(Ljava/util/List;Lcom/join/mgps/dto/SearchGameListBean;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "searchDataBeans",
            "listBean",
            "domain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;",
            "Lcom/join/mgps/dto/SearchGameListBean;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchGameListBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setAdInfo(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isIs_head()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getPosition()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    sub-int/2addr v4, v1

    .line 40
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :goto_0
    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    if-eqz p3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchGameListBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    new-instance p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setPd_info(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setIsPrivateDomain(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getIndex()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    sub-int/2addr p3, v1

    .line 79
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    return-object v0
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->Q0()Lcom/join/mgps/rpc/impl/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->i:Lcom/join/mgps/rpc/k;

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/join/android/app/component/video/h;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 23
    .line 24
    const-string v2, "SearchGameListFragmentVideoHelper"

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/adapter/x6;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/x6;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/h;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/x6;->o0(Lcom/join/mgps/adapter/x6$f;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->c0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/x6;->r0(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    instance-of v1, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 83
    .line 84
    new-instance v1, Lcom/join/mgps/fragment/f5$a;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f5$a;-><init>(Lcom/join/mgps/fragment/f5;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 93
    .line 94
    new-instance v1, Lcom/join/mgps/fragment/f5$b;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f5$b;-><init>(Lcom/join/mgps/fragment/f5;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    new-instance v1, Lcom/join/mgps/fragment/f5$c;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f5$c;-><init>(Lcom/join/mgps/fragment/f5;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->loading()V

    .line 122
    .line 123
    .line 124
    iput-boolean v2, p0, Lcom/join/mgps/fragment/f5;->v:Z

    .line 125
    .line 126
    return-void
.end method

.method autoPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/h;->i(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/f5;->g0()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method b0(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->isNeedLoad(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    return-void
.end method

.method c0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->keyword()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_link_type_val"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/f5;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "searchTotalList"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "searchGameList"

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/t;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method d0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentPluginNum()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/join/mgps/fragment/f5;->o:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 18
    .line 19
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentLangId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/fragment/f5;->p:I

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/f5;->e0(IZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_sign_id"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/f5;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "searchTotalList"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "searchGameList"

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method e0(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "recommend"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_19

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 11
    .line 12
    if-eq p1, v0, :cond_18

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_14

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->showLoadingView()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v3, 0x0

    .line 35
    :try_start_0
    new-instance v4, Lcom/join/mgps/dto/RequestSearchGameArgs;

    .line 36
    .line 37
    invoke-direct {v4}, Lcom/join/mgps/dto/RequestSearchGameArgs;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lcom/join/mgps/fragment/f5;->m:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setGameId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v5, p0, Lcom/join/mgps/fragment/f5;->p:I

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setLangId(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    iget v5, p0, Lcom/join/mgps/fragment/f5;->r:I

    .line 55
    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPc(Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPn(Ljava/lang/Integer;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->c0()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setKeyword(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setUid(Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setUid(Ljava/lang/Integer;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    iget v0, p0, Lcom/join/mgps/fragment/f5;->o:I

    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPluginNum(Ljava/lang/Integer;)V

    .line 105
    .line 106
    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    iget v0, p0, Lcom/join/mgps/fragment/f5;->t:I

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setRec_pn(Ljava/lang/Integer;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setRec_pn(Ljava/lang/Integer;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    if-eqz p2, :cond_3

    .line 127
    .line 128
    const/4 p2, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/4 p2, 0x0

    .line 131
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {v4, p2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setIsRecommend(Ljava/lang/Integer;)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/join/mgps/fragment/f5;->y:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_4

    .line 145
    .line 146
    if-eq p1, v1, :cond_4

    .line 147
    .line 148
    iget-object p2, p0, Lcom/join/mgps/fragment/f5;->y:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v4, p2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPageOfFirstGameId(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    new-instance p2, Lcom/join/mgps/dto/RequestModel;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 156
    .line 157
    invoke-direct {p2, v0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v4}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .line 165
    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->i:Lcom/join/mgps/rpc/k;

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-interface {v0, p2}, Lcom/join/mgps/rpc/k;->x(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-eqz p2, :cond_12

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_12

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/join/mgps/dto/SearchGameListBean;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getPage_first_gid()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    iput-object v4, p0, Lcom/join/mgps/fragment/f5;->y:Ljava/lang/String;

    .line 195
    .line 196
    iget-boolean v4, p0, Lcom/join/mgps/fragment/f5;->w:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    .line 198
    if-eqz v4, :cond_6

    .line 199
    .line 200
    :try_start_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    if-eqz v4, :cond_13

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-lez v4, :cond_13

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-lez v4, :cond_13

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Lcom/join/mgps/dto/SearchGameListBean;

    .line 235
    .line 236
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    if-eqz p2, :cond_5

    .line 241
    .line 242
    const/4 p2, 0x1

    .line 243
    goto :goto_3

    .line 244
    :cond_5
    const/4 p2, 0x0

    .line 245
    :goto_3
    invoke-virtual {p0, v4, v0, p2}, Lcom/join/mgps/fragment/f5;->a0(Ljava/util/List;Lcom/join/mgps/dto/SearchGameListBean;Z)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p0, p2, v3, v3}, Lcom/join/mgps/fragment/f5;->i0(Ljava/util/List;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 250
    .line 251
    .line 252
    goto/16 :goto_b

    .line 253
    .line 254
    :cond_6
    :try_start_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    .line 259
    .line 260
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    if-eqz v4, :cond_8

    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    if-gtz v4, :cond_7

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_7
    const/4 v4, 0x0

    .line 284
    goto :goto_5

    .line 285
    :cond_8
    :goto_4
    const/4 v4, 0x1

    .line 286
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    if-eqz v5, :cond_9

    .line 291
    .line 292
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 297
    .line 298
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    if-eqz v5, :cond_9

    .line 303
    .line 304
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-lez v5, :cond_9

    .line 319
    .line 320
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 325
    .line 326
    invoke-virtual {p0, v5, p1}, Lcom/join/mgps/fragment/f5;->h0(Lcom/join/mgps/dto/SearchGameListBean;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 334
    .line 335
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-eqz v5, :cond_9

    .line 340
    .line 341
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 346
    .line 347
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-lez v5, :cond_9

    .line 356
    .line 357
    const/4 v4, 0x1

    .line 358
    :cond_9
    if-eqz v4, :cond_b

    .line 359
    .line 360
    if-ne p1, v1, :cond_b

    .line 361
    .line 362
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 367
    .line 368
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    if-eqz v5, :cond_a

    .line 373
    .line 374
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 379
    .line 380
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-gtz v5, :cond_b

    .line 389
    .line 390
    :cond_a
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 395
    .line 396
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {p0, v1, v5}, Lcom/join/mgps/fragment/f5;->j0(ZLcom/join/mgps/dto/DomainInfoBean;)V

    .line 401
    .line 402
    .line 403
    :cond_b
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 408
    .line 409
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    if-eqz v5, :cond_c

    .line 414
    .line 415
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 420
    .line 421
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-lez v5, :cond_c

    .line 430
    .line 431
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 432
    .line 433
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 438
    .line 439
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    move v5, v4

    .line 448
    const/4 v4, 0x0

    .line 449
    goto :goto_6

    .line 450
    :cond_c
    const/4 v5, 0x0

    .line 451
    :goto_6
    if-eqz v4, :cond_d

    .line 452
    .line 453
    if-gtz v5, :cond_d

    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_d
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    check-cast v6, Lcom/join/mgps/dto/SearchGameListBean;

    .line 465
    .line 466
    invoke-virtual {v6}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    if-eqz v6, :cond_e

    .line 471
    .line 472
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    check-cast v6, Lcom/join/mgps/dto/SearchGameListBean;

    .line 477
    .line 478
    invoke-virtual {v6}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-lez v6, :cond_e

    .line 487
    .line 488
    const/4 v6, 0x1

    .line 489
    goto :goto_7

    .line 490
    :cond_e
    const/4 v6, 0x0

    .line 491
    :goto_7
    invoke-virtual {p0, v5, v0, v6}, Lcom/join/mgps/fragment/f5;->a0(Ljava/util/List;Lcom/join/mgps/dto/SearchGameListBean;Z)Ljava/util/List;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    check-cast v5, Lcom/join/mgps/dto/SearchGameListBean;

    .line 500
    .line 501
    invoke-virtual {v5}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    if-eqz v5, :cond_f

    .line 506
    .line 507
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    check-cast p2, Lcom/join/mgps/dto/SearchGameListBean;

    .line 512
    .line 513
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 518
    .line 519
    .line 520
    move-result p2

    .line 521
    if-gtz p2, :cond_10

    .line 522
    .line 523
    :cond_f
    if-ne p1, v1, :cond_10

    .line 524
    .line 525
    const/4 p2, 0x1

    .line 526
    goto :goto_8

    .line 527
    :cond_10
    const/4 p2, 0x0

    .line 528
    :goto_8
    iget-boolean v5, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 529
    .line 530
    if-eqz v5, :cond_11

    .line 531
    .line 532
    if-eq p1, v1, :cond_11

    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_11
    const/4 v1, 0x0

    .line 536
    :goto_9
    invoke-virtual {p0, v0, p2, v1}, Lcom/join/mgps/fragment/f5;->i0(Ljava/util/List;ZZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 537
    .line 538
    .line 539
    :goto_a
    move v1, v4

    .line 540
    goto :goto_c

    .line 541
    :catchall_0
    move-exception p2

    .line 542
    move v1, v4

    .line 543
    goto :goto_12

    .line 544
    :catch_0
    move-exception p2

    .line 545
    move v1, v4

    .line 546
    goto :goto_d

    .line 547
    :cond_12
    :goto_b
    const/4 v1, 0x0

    .line 548
    :cond_13
    :goto_c
    :try_start_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->hideLoading()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 549
    .line 550
    .line 551
    goto :goto_e

    .line 552
    :catch_1
    move-exception p2

    .line 553
    goto :goto_d

    .line 554
    :catch_2
    move-exception p2

    .line 555
    const/4 v1, 0x0

    .line 556
    :goto_d
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->showLoadFailed()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 560
    .line 561
    .line 562
    :goto_e
    if-eqz v1, :cond_15

    .line 563
    .line 564
    iget-boolean p2, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 565
    .line 566
    if-eqz p2, :cond_14

    .line 567
    .line 568
    goto :goto_10

    .line 569
    :catch_3
    move-exception p2

    .line 570
    goto :goto_f

    .line 571
    :catchall_1
    move-exception p2

    .line 572
    const/4 v1, 0x0

    .line 573
    goto :goto_12

    .line 574
    :catch_4
    move-exception p2

    .line 575
    const/4 v1, 0x0

    .line 576
    :goto_f
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 577
    .line 578
    .line 579
    if-eqz v1, :cond_15

    .line 580
    .line 581
    iget-boolean p2, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 582
    .line 583
    if-eqz p2, :cond_14

    .line 584
    .line 585
    :goto_10
    iput v2, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 586
    .line 587
    goto :goto_11

    .line 588
    :cond_14
    iput p1, p0, Lcom/join/mgps/fragment/f5;->q:I

    .line 589
    .line 590
    goto :goto_11

    .line 591
    :cond_15
    iput p1, p0, Lcom/join/mgps/fragment/f5;->q:I

    .line 592
    .line 593
    iput v3, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 594
    .line 595
    :goto_11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->k0()V

    .line 596
    .line 597
    .line 598
    goto :goto_15

    .line 599
    :catchall_2
    move-exception p2

    .line 600
    :goto_12
    if-eqz v1, :cond_17

    .line 601
    .line 602
    iget-boolean v0, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 603
    .line 604
    if-eqz v0, :cond_16

    .line 605
    .line 606
    iput v2, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 607
    .line 608
    goto :goto_13

    .line 609
    :cond_16
    iput p1, p0, Lcom/join/mgps/fragment/f5;->q:I

    .line 610
    .line 611
    goto :goto_13

    .line 612
    :cond_17
    iput p1, p0, Lcom/join/mgps/fragment/f5;->q:I

    .line 613
    .line 614
    iput v3, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 615
    .line 616
    :goto_13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->k0()V

    .line 617
    .line 618
    .line 619
    throw p2

    .line 620
    :cond_18
    :goto_14
    return-void

    .line 621
    :cond_19
    if-ne p1, v1, :cond_1a

    .line 622
    .line 623
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 624
    .line 625
    if-eqz p1, :cond_1a

    .line 626
    .line 627
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 628
    .line 629
    .line 630
    move-result p1

    .line 631
    if-nez p1, :cond_1a

    .line 632
    .line 633
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->showLoadFailed()V

    .line 634
    .line 635
    .line 636
    :cond_1a
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 637
    .line 638
    if-eqz p1, :cond_1b

    .line 639
    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    const p2, 0x7f12031e

    .line 645
    .line 646
    .line 647
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/f5;->T(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    :cond_1b
    :goto_15
    return-void
.end method

.method f0(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.broadcast.bespeak.sussess"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "gameid"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "game_book"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "message"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "pd_info"

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/join/mgps/dto/DomainInfoBean;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/f5;->l0(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne v1, v0, :cond_1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "game_search_subscribe"

    .line 47
    .line 48
    invoke-static {v0, v1, v3}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/g0;->J(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "s",
            "uid",
            "s1",
            "s2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->m:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "fromSearchP2"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "fromSearchP3"

    .line 13
    .line 14
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/f5;->l:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v0, "fromSearchP4"

    .line 19
    .line 20
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/join/mgps/fragment/f5;->O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0, p2, p3}, Lcom/papa/sim/statistic/t;->j0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method h0(Lcom/join/mgps/dto/SearchGameListBean;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v3, "1"

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v4, :cond_1

    .line 14
    .line 15
    iget-object v5, v0, Lcom/join/mgps/fragment/f5;->n:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/SearchGameListBean;->setKeyword(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v3, v5}, Lcom/join/mgps/Util/r0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-lez v7, :cond_2

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v7, 0x0

    .line 56
    :goto_0
    invoke-virtual {v0, v6, v1, v7}, Lcom/join/mgps/fragment/f5;->a0(Ljava/util/List;Lcom/join/mgps/dto/SearchGameListBean;Z)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const/16 v9, 0x10

    .line 61
    .line 62
    const/4 v10, 0x2

    .line 63
    const/16 v11, 0xc

    .line 64
    .line 65
    const/16 v12, 0xb

    .line 66
    .line 67
    const/4 v13, 0x7

    .line 68
    const-string v14, "2"

    .line 69
    .line 70
    const/16 v15, 0x70

    .line 71
    .line 72
    if-eqz v6, :cond_d

    .line 73
    .line 74
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v16

    .line 78
    if-eqz v16, :cond_d

    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v8, v1}, Lcom/join/mgps/fragment/f5;->j0(ZLcom/join/mgps/dto/DomainInfoBean;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_15

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_3

    .line 108
    .line 109
    const/16 v8, 0x93

    .line 110
    .line 111
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    invoke-virtual {v6, v15}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v15}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 122
    .line 123
    .line 124
    :goto_2
    iget v8, v0, Lcom/join/mgps/fragment/f5;->l:I

    .line 125
    .line 126
    if-nez v8, :cond_4

    .line 127
    .line 128
    invoke-virtual {v6, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    if-ne v8, v4, :cond_5

    .line 133
    .line 134
    invoke-virtual {v6, v14}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_7

    .line 142
    .line 143
    new-instance v8, Lcom/join/mgps/adapter/x6$h;

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v16

    .line 149
    invoke-static/range {v16 .. v16}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    if-eqz v16, :cond_6

    .line 154
    .line 155
    const/16 v7, 0xc

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    const/16 v7, 0xb

    .line 159
    .line 160
    :goto_4
    invoke-direct {v8, v7, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_7
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    if-eqz v7, :cond_a

    .line 172
    .line 173
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eq v7, v4, :cond_8

    .line 186
    .line 187
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v7}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-ne v7, v10, :cond_a

    .line 200
    .line 201
    :cond_8
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGameAdVideoUrl()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_9

    .line 212
    .line 213
    const/16 v8, 0x11

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    const/16 v8, 0x10

    .line 217
    .line 218
    :goto_5
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_a
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_b

    .line 230
    .line 231
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->isIs_head()Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-eqz v7, :cond_b

    .line 236
    .line 237
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 238
    .line 239
    const/16 v8, 0xe

    .line 240
    .line 241
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_b
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->isPrivateDomain()Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_c

    .line 253
    .line 254
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 255
    .line 256
    const/16 v8, 0xf

    .line 257
    .line 258
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_c
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 266
    .line 267
    invoke-direct {v7, v13, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :goto_6
    iget-object v7, v0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 274
    .line 275
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v0, v4, v6}, Lcom/join/mgps/fragment/f5;->j0(ZLcom/join/mgps/dto/DomainInfoBean;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    if-eqz v6, :cond_15

    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eqz v6, :cond_15

    .line 302
    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eqz v6, :cond_15

    .line 316
    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 322
    .line 323
    invoke-virtual {v6, v15}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v15}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 327
    .line 328
    .line 329
    iget v7, v0, Lcom/join/mgps/fragment/f5;->l:I

    .line 330
    .line 331
    if-nez v7, :cond_e

    .line 332
    .line 333
    invoke-virtual {v6, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_e
    if-ne v7, v4, :cond_f

    .line 338
    .line 339
    invoke-virtual {v6, v14}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    :goto_8
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_11

    .line 347
    .line 348
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 349
    .line 350
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    if-eqz v8, :cond_10

    .line 359
    .line 360
    const/16 v8, 0xc

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_10
    const/16 v8, 0xb

    .line 364
    .line 365
    :goto_9
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_11
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    if-eqz v7, :cond_14

    .line 377
    .line 378
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-virtual {v7}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-eq v7, v4, :cond_12

    .line 391
    .line 392
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-virtual {v7}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    if-ne v7, v10, :cond_14

    .line 405
    .line 406
    :cond_12
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 407
    .line 408
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGameAdVideoUrl()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    if-eqz v8, :cond_13

    .line 417
    .line 418
    const/16 v8, 0x11

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_13
    const/16 v8, 0x10

    .line 422
    .line 423
    :goto_a
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_14
    new-instance v7, Lcom/join/mgps/adapter/x6$h;

    .line 431
    .line 432
    invoke-direct {v7, v13, v6}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    :goto_b
    iget-object v7, v0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 439
    .line 440
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    goto/16 :goto_7

    .line 444
    .line 445
    :cond_15
    if-ne v2, v4, :cond_17

    .line 446
    .line 447
    new-instance v1, Lcom/join/mgps/adapter/x6;

    .line 448
    .line 449
    iget-object v2, v0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 450
    .line 451
    iget-object v3, v0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 452
    .line 453
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/x6;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/h;)V

    .line 454
    .line 455
    .line 456
    iput-object v1, v0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 457
    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/f5;->c0()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/x6;->r0(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 466
    .line 467
    if-eqz v1, :cond_16

    .line 468
    .line 469
    iget-object v2, v0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 470
    .line 471
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 472
    .line 473
    .line 474
    :cond_16
    iget-object v1, v0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 475
    .line 476
    invoke-virtual {v1, v5}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/f5;->autoPlay()V

    .line 480
    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_17
    iget-object v1, v0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 484
    .line 485
    invoke-virtual {v1, v5}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 486
    .line 487
    .line 488
    :goto_c
    iget-object v1, v0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 489
    .line 490
    invoke-direct {v0, v1}, Lcom/join/mgps/fragment/f5;->updateDownStateList(Ljava/util/List;)V

    .line 491
    .line 492
    .line 493
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->A:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->B:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method i0(Ljava/util/List;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "resetAdapter",
            "showRecommendTitle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    new-instance p3, Lcom/join/mgps/adapter/x6$h;

    .line 13
    .line 14
    const/16 v2, 0xd

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {p3, v2, v3}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_a

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_a

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 47
    .line 48
    const/16 v2, 0x67

    .line 49
    .line 50
    invoke-virtual {p3, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x70

    .line 54
    .line 55
    invoke-virtual {p3, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setRecommend(Z)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lcom/join/mgps/fragment/f5;->l:I

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    const-string v2, "1"

    .line 66
    .line 67
    invoke-virtual {p3, v2}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    if-ne v2, v1, :cond_3

    .line 72
    .line 73
    const-string v2, "2"

    .line 74
    .line 75
    invoke-virtual {p3, v2}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    new-instance v2, Lcom/join/mgps/adapter/x6$h;

    .line 85
    .line 86
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    const/16 v3, 0xc

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/16 v3, 0xb

    .line 100
    .line 101
    :goto_2
    invoke-direct {v2, v3, p3}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v2, v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    const/4 v3, 0x2

    .line 141
    if-ne v2, v3, :cond_8

    .line 142
    .line 143
    :cond_6
    new-instance v2, Lcom/join/mgps/adapter/x6$h;

    .line 144
    .line 145
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGameAdVideoUrl()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    const/16 v3, 0x11

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const/16 v3, 0x10

    .line 159
    .line 160
    :goto_3
    invoke-direct {v2, v3, p3}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->isPrivateDomain()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_9

    .line 172
    .line 173
    new-instance v2, Lcom/join/mgps/adapter/x6$h;

    .line 174
    .line 175
    const/16 v3, 0xf

    .line 176
    .line 177
    invoke-direct {v2, v3, p3}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    new-instance v2, Lcom/join/mgps/adapter/x6$h;

    .line 185
    .line 186
    const/4 v3, 0x7

    .line 187
    invoke-direct {v2, v3, p3}, Lcom/join/mgps/adapter/x6$h;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :goto_4
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_a
    if-eqz p2, :cond_c

    .line 201
    .line 202
    new-instance p1, Lcom/join/mgps/adapter/x6;

    .line 203
    .line 204
    iget-object p2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 205
    .line 206
    iget-object p3, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 207
    .line 208
    invoke-direct {p1, p2, p3}, Lcom/join/mgps/adapter/x6;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/h;)V

    .line 209
    .line 210
    .line 211
    iput-object p1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->c0()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/x6;->r0(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 221
    .line 222
    if-eqz p1, :cond_b

    .line 223
    .line 224
    iget-object p2, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 227
    .line 228
    .line 229
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->autoPlay()V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 241
    .line 242
    .line 243
    :goto_5
    return-void
.end method

.method j0(ZLcom/join/mgps/dto/DomainInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "pdInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/f5;->e:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->d:Landroid/view/View;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/fragment/f5$d;

    .line 36
    .line 37
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/fragment/f5$d;-><init>(Lcom/join/mgps/fragment/f5;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdGameWish:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v1, "0"

    .line 73
    .line 74
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/Ext;->setIsResultPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, v0, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/f5;->e:Landroid/view/View;

    .line 83
    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/fragment/f5;->d:Landroid/view/View;

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->g:Landroid/widget/ImageView;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    const p2, 0x7f080ae2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->h:Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u5b83\u6e38\u620f"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->d:Landroid/view/View;

    .line 117
    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->e:Landroid/view/View;

    .line 124
    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_0
    return-void
.end method

.method k0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setNoMore()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->stopLoadMore()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method l0(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "game_book"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/join/mgps/adapter/x6$h;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    instance-of v2, v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_0
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/GInfoBean;->setGame_book(I)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->notifyDataSetChanged()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method protected lazyLoad()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/f5;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->n:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f5;->b0(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->loading()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public loading()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/f5;->q:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/f5;->s:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/join/mgps/fragment/f5;->t:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    instance-of v3, v2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    check-cast v2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentPluginNum()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, p0, Lcom/join/mgps/fragment/f5;->o:I

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 26
    .line 27
    check-cast v2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentLangId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lcom/join/mgps/fragment/f5;->p:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 36
    .line 37
    check-cast v2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/activity/SearchListActivity1;->getGameId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, p0, Lcom/join/mgps/fragment/f5;->m:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->showLoadingView()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->c0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, p0, Lcom/join/mgps/fragment/f5;->n:Ljava/lang/String;

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f5;->w:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f5;->x:Z

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->z:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->reset()V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/fragment/f5;->e0(IZ)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->c0()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/x6;->r0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/f5$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f5$e;-><init>(Lcom/join/mgps/fragment/f5;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/fragment/f5;->I:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/join/mgps/fragment/f5;->updateProgressPartly()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->E()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f5;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->u:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->k:Lcom/join/android/app/component/video/h;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/android/app/component/video/h;->E()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f5;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->A:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f5;->B:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->j:Lcom/join/mgps/adapter/x6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->A:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->A:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->c:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->A:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f5;->B:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method
