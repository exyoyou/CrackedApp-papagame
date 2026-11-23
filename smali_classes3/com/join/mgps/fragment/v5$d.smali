.class Lcom/join/mgps/fragment/v5$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/fragment/v5$e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/join/mgps/fragment/v5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/v5;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/fragment/v5$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/v5$d;->e:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/fragment/v5$d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v5$d;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/fragment/v5$d;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/fragment/v5$d;->e(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/fragment/v5$d;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Lcom/join/mgps/fragment/v5$e;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/fragment/v5$d;->d(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Lcom/join/mgps/fragment/v5$e;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic d(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Lcom/join/mgps/fragment/v5$e;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isExpand()Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    xor-int/lit8 p4, p4, 0x1

    .line 6
    .line 7
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->setExpand(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/v5$e;->l(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;)V

    .line 11
    .line 12
    .line 13
    iget-object p4, p0, Lcom/join/mgps/fragment/v5$d;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p4, p3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isExpand()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private synthetic e(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isPraised()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/v5;->S(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/v5;->R(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of p1, p1, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/activity/GameMainActivity4;->showBattle()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/v5;->O(Lcom/join/mgps/fragment/v5;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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

.method public getItemViewType(I)I
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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5$d;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/fragment/v5$e;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/fragment/v5$e;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/v5$d;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/v5$d;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/join/mgps/fragment/v5$e;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eq v0, v3, :cond_d

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    if-eq v0, v2, :cond_3

    .line 22
    .line 23
    if-eq v0, v6, :cond_0

    .line 24
    .line 25
    goto/16 :goto_d

    .line 26
    .line 27
    :cond_0
    check-cast p1, Lcom/join/mgps/fragment/v5$h;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$h;->a(Lcom/join/mgps/fragment/v5$h;)Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5$e;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$h;->b(Lcom/join/mgps/fragment/v5$h;)Landroid/widget/ImageView;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$h;->c(Lcom/join/mgps/fragment/v5$h;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const v0, 0x7f081198

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$h;->d(Lcom/join/mgps/fragment/v5$h;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5$e;->e()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const/16 v0, 0x8

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$h;->e(Lcom/join/mgps/fragment/v5$h;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5$e;->f()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v4, 0x0

    .line 86
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_d

    .line 90
    .line 91
    :cond_3
    check-cast p1, Lcom/join/mgps/fragment/v5$g;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5$e;->d()Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->j(Lcom/join/mgps/fragment/v5$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getAvatar()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v2, v7}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->a(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getNickname()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getAchievements()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_8

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getAchievements()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-gtz v2, :cond_4

    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->b(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->c(Lcom/join/mgps/fragment/v5$g;)Landroidx/constraintlayout/widget/Group;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->d(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getDescribe()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->e(Lcom/join/mgps/fragment/v5$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->e(Lcom/join/mgps/fragment/v5$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->e(Lcom/join/mgps/fragment/v5$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 181
    .line 182
    iget-object v8, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 183
    .line 184
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getAchievements()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    new-instance v7, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-le v7, v6, :cond_5

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isExpand()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_5

    .line 214
    .line 215
    invoke-interface {v2, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    goto :goto_2

    .line 220
    :cond_5
    move-object v7, v2

    .line 221
    :goto_2
    new-instance v8, Lcom/join/mgps/fragment/v5$c;

    .line 222
    .line 223
    iget-object v9, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 224
    .line 225
    invoke-direct {v8, v9, v7}, Lcom/join/mgps/fragment/v5$c;-><init>(Lcom/join/mgps/fragment/v5;Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->e(Lcom/join/mgps/fragment/v5$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    const/4 v7, 0x0

    .line 236
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-le v2, v6, :cond_7

    .line 244
    .line 245
    iget-object v2, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 246
    .line 247
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const v3, 0x7f0d0498

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    const v3, 0x7f0a1882

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isExpand()Z

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    if-eqz v6, :cond_6

    .line 276
    .line 277
    const-string v6, "\u6536\u8d77"

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_6
    const-string v6, "\u67e5\u770b\u5168\u90e8"

    .line 281
    .line 282
    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    new-instance v6, Lcom/join/mgps/fragment/x5;

    .line 286
    .line 287
    invoke-direct {v6, p0, v0, v1, p2}, Lcom/join/mgps/fragment/x5;-><init>(Lcom/join/mgps/fragment/v5$d;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Lcom/join/mgps/fragment/v5$e;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;)I

    .line 294
    .line 295
    .line 296
    :cond_7
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->e(Lcom/join/mgps/fragment/v5$g;)Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_8
    :goto_4
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->b(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->c(Lcom/join/mgps/fragment/v5$g;)Landroidx/constraintlayout/widget/Group;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->b(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getDescribe()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    :goto_5
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->f(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/ImageView;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isSupportPraise()Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_9

    .line 338
    .line 339
    const/4 v3, 0x0

    .line 340
    goto :goto_6

    .line 341
    :cond_9
    const/16 v3, 0x8

    .line 342
    .line 343
    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->g(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isSupportPraise()Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_a

    .line 355
    .line 356
    const/4 v3, 0x0

    .line 357
    goto :goto_7

    .line 358
    :cond_a
    const/16 v3, 0x8

    .line 359
    .line 360
    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->f(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/ImageView;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->isPraised()Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_b

    .line 372
    .line 373
    const v3, 0x7f080c53

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_b
    const v3, 0x7f080c56

    .line 378
    .line 379
    .line 380
    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    .line 382
    .line 383
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->g(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/TextView;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getPraiseCount()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .line 397
    .line 398
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->h(Lcom/join/mgps/fragment/v5$g;)Landroid/widget/LinearLayout;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    new-instance v3, Lcom/join/mgps/fragment/y5;

    .line 403
    .line 404
    invoke-direct {v3, p0, v0, p2}, Lcom/join/mgps/fragment/y5;-><init>(Lcom/join/mgps/fragment/v5$d;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$g;->i(Lcom/join/mgps/fragment/v5$g;)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5$e;->f()Z

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    if-eqz p2, :cond_c

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_c
    const/4 v4, 0x0

    .line 422
    :goto_9
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_d

    .line 426
    .line 427
    :cond_d
    check-cast p1, Lcom/join/mgps/fragment/v5$f;

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/join/mgps/fragment/v5$e;->b()Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    if-eqz p2, :cond_15

    .line 434
    .line 435
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-gtz v0, :cond_e

    .line 440
    .line 441
    goto/16 :goto_e

    .line 442
    .line 443
    :cond_e
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 444
    .line 445
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    const-string v1, "\u6682\u65e0\u7edf\u8ba1"

    .line 453
    .line 454
    if-lez v0, :cond_10

    .line 455
    .line 456
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->a(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    check-cast v4, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 465
    .line 466
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getTitle()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    .line 472
    .line 473
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->b(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    check-cast v4, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 482
    .line 483
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getDesc()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    if-eqz v4, :cond_f

    .line 492
    .line 493
    move-object v4, v1

    .line 494
    goto :goto_a

    .line 495
    :cond_f
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 500
    .line 501
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getDesc()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    :goto_a
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    .line 507
    .line 508
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-le v0, v3, :cond_12

    .line 513
    .line 514
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->c(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    check-cast v4, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 523
    .line 524
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getTitle()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->d(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    check-cast v4, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 540
    .line 541
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getDesc()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-eqz v4, :cond_11

    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_11
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    check-cast v1, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 557
    .line 558
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getDesc()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    :cond_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-le v0, v2, :cond_14

    .line 570
    .line 571
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->e(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    check-cast v1, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 580
    .line 581
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getTitle()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    .line 587
    .line 588
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->f(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    check-cast v1, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 597
    .line 598
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getDesc()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-eqz v1, :cond_13

    .line 607
    .line 608
    const-string p2, "0\u4eba"

    .line 609
    .line 610
    goto :goto_c

    .line 611
    :cond_13
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    check-cast p2, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;

    .line 616
    .line 617
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorMomentBean$BasicInfo;->getDesc()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p2

    .line 621
    :goto_c
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    .line 623
    .line 624
    :cond_14
    invoke-static {p1}, Lcom/join/mgps/fragment/v5$f;->g(Lcom/join/mgps/fragment/v5$f;)Landroid/widget/TextView;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    new-instance p2, Lcom/join/mgps/fragment/w5;

    .line 629
    .line 630
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/w5;-><init>(Lcom/join/mgps/fragment/v5$d;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    .line 635
    .line 636
    :goto_d
    return-void

    .line 637
    :cond_15
    :goto_e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 638
    .line 639
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 640
    .line 641
    .line 642
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v0, 0x7f0d061d

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lcom/join/mgps/fragment/v5$h;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 33
    .line 34
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/v5$h;-><init>(Lcom/join/mgps/fragment/v5;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const v0, 0x7f0d061c

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/join/mgps/fragment/v5$g;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 58
    .line 59
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/v5$g;-><init>(Lcom/join/mgps/fragment/v5;Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const v0, 0x7f0d061b

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lcom/join/mgps/fragment/v5$f;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/v5$d;->f:Lcom/join/mgps/fragment/v5;

    .line 83
    .line 84
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/v5$f;-><init>(Lcom/join/mgps/fragment/v5;Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    move-object p1, p2

    .line 88
    :goto_1
    return-object p1
.end method
