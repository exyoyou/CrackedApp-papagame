.class Lcom/join/mgps/fragment/r5$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/r5;
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
            "Lcom/join/mgps/dto/UnlockBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/join/mgps/fragment/r5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/r5;Ljava/util/List;)V
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
            "Lcom/join/mgps/dto/UnlockBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/r5$d;->e:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/fragment/r5$d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/r5$d;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/fragment/r5$d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/r5$d;->c(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/fragment/r5;->M(Lcom/join/mgps/fragment/r5;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/r5$d;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/UnlockBean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/UnlockBean;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/join/mgps/fragment/r5;->M(Lcom/join/mgps/fragment/r5;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->e:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/UnlockBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/UnlockBean;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8
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
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/r5$d;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/r5$d;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/dto/UnlockBean;

    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v0, v2, :cond_7

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v0, v5, :cond_5

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    if-eq v0, v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :cond_0
    check-cast p1, Lcom/join/mgps/fragment/r5$e;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->getAchievementBean()Lcom/join/mgps/dto/SimulatorAchievementBean;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->a(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v6, "\u60a8\u5df2\u5b8c\u6210"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->b(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/ProgressBar;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->b(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/ProgressBar;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getUnlock_achievements()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "+"

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getUnlock_achievements()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-lez v0, :cond_2

    .line 112
    .line 113
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->c(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/LinearLayout;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->d(Lcom/join/mgps/fragment/r5$e;)Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 125
    .line 126
    iget-object v6, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 127
    .line 128
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-direct {v5, v6, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->d(Lcom/join/mgps/fragment/r5$e;)Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v5, Lcom/join/mgps/fragment/r5$b;

    .line 143
    .line 144
    iget-object v6, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getUnlock_achievements()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-direct {v5, v6, v7, v4}, Lcom/join/mgps/fragment/r5$b;-><init>(Lcom/join/mgps/fragment/r5;Ljava/util/List;Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->d(Lcom/join/mgps/fragment/r5$e;)Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->e(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getUnlock_achievements_num()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->e(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getUnlock_achievements_num()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-gtz v5, :cond_1

    .line 198
    .line 199
    const/16 v5, 0x8

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_1
    const/4 v5, 0x0

    .line 203
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->c(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/LinearLayout;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    :goto_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getLock_achievements()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getLock_achievements()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-lez v0, :cond_4

    .line 229
    .line 230
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->f(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/LinearLayout;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->g(Lcom/join/mgps/fragment/r5$e;)Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 242
    .line 243
    iget-object v6, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 244
    .line 245
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-direct {v5, v6, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 253
    .line 254
    .line 255
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->g(Lcom/join/mgps/fragment/r5$e;)Landroidx/recyclerview/widget/RecyclerView;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v5, Lcom/join/mgps/fragment/r5$b;

    .line 260
    .line 261
    iget-object v6, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getLock_achievements()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-direct {v5, v6, v7, v2}, Lcom/join/mgps/fragment/r5$b;-><init>(Lcom/join/mgps/fragment/r5;Ljava/util/List;Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 271
    .line 272
    .line 273
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->g(Lcom/join/mgps/fragment/r5$e;)Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 278
    .line 279
    .line 280
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->h(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getLock_achievements_num()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->h(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getLock_achievements_num()I

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-gtz p2, :cond_3

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_3
    const/4 v3, 0x0

    .line 318
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->f(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/LinearLayout;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    :goto_3
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->h(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    new-instance v0, Lcom/join/mgps/fragment/s5;

    .line 334
    .line 335
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/s5;-><init>(Lcom/join/mgps/fragment/r5$d;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    .line 340
    .line 341
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$e;->e(Lcom/join/mgps/fragment/r5$e;)Landroid/widget/TextView;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    new-instance p2, Lcom/join/mgps/fragment/t5;

    .line 346
    .line 347
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/t5;-><init>(Lcom/join/mgps/fragment/r5$d;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_b

    .line 354
    .line 355
    :cond_5
    check-cast p1, Lcom/join/mgps/fragment/r5$g;

    .line 356
    .line 357
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$g;->a(Lcom/join/mgps/fragment/r5$g;)Landroid/widget/TextView;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->getTimeDesc()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$g;->b(Lcom/join/mgps/fragment/r5$g;)Landroid/widget/ImageView;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$g;->c(Lcom/join/mgps/fragment/r5$g;)Landroidx/cardview/widget/CardView;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isLockTitle()Z

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    if-eqz p2, :cond_6

    .line 384
    .line 385
    const-string p2, "#4E5B65"

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_6
    const-string p2, "#2892EC"

    .line 389
    .line 390
    :goto_4
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result p2

    .line 394
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_b

    .line 398
    .line 399
    :cond_7
    check-cast p1, Lcom/join/mgps/fragment/r5$f;

    .line 400
    .line 401
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->getInfo()Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->a(Lcom/join/mgps/fragment/r5$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getIcon()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->b(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/TextView;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->c(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/TextView;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getCondition()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->d(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/TextView;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isLock()Z

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-eqz v6, :cond_9

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getUnlock_rate()I

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    if-lez v6, :cond_8

    .line 453
    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getUnlock_rate()I

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v7, "%\u73a9\u5bb6\u5df2\u89e3\u9501"

    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_8
    const-string v6, "\u8fd8\u6ca1\u4eba\u89e3\u9501,\u5feb\u6765\u6311\u6218"

    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getUnlock_date()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v7, " "

    .line 485
    .line 486
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getUnlock_time()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v7, "\u5b8c\u6210"

    .line 497
    .line 498
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    .line 507
    .line 508
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->d(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/TextView;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isLock()Z

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    if-eqz v6, :cond_a

    .line 517
    .line 518
    const-string v6, "#A4C2E0"

    .line 519
    .line 520
    goto :goto_7

    .line 521
    :cond_a
    const-string v6, "#82888E"

    .line 522
    .line 523
    :goto_7
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    .line 529
    .line 530
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->e(Lcom/join/mgps/fragment/r5$f;)Landroidx/constraintlayout/widget/Group;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getTarget()I

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    if-le v6, v2, :cond_b

    .line 539
    .line 540
    const/4 v2, 0x0

    .line 541
    goto :goto_8

    .line 542
    :cond_b
    const/16 v2, 0x8

    .line 543
    .line 544
    :goto_8
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 545
    .line 546
    .line 547
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->f(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/TextView;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getDone()I

    .line 557
    .line 558
    .line 559
    move-result v6

    .line 560
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getTarget()I

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->g(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/ProgressBar;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getTarget()I

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 589
    .line 590
    .line 591
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->g(Lcom/join/mgps/fragment/r5$f;)Landroid/widget/ProgressBar;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;->getDone()I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 600
    .line 601
    .line 602
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->h(Lcom/join/mgps/fragment/r5$f;)Landroid/view/View;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isFirst()Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_c

    .line 611
    .line 612
    const/16 v1, 0x8

    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_c
    const/4 v1, 0x0

    .line 616
    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->i(Lcom/join/mgps/fragment/r5$f;)Landroid/view/View;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isLast()Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_d

    .line 628
    .line 629
    goto :goto_a

    .line 630
    :cond_d
    const/4 v3, 0x0

    .line 631
    :goto_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isFirst()Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_e

    .line 639
    .line 640
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isLast()Z

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-nez v0, :cond_e

    .line 645
    .line 646
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->j(Lcom/join/mgps/fragment/r5$f;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    const-string p2, "#212832"

    .line 651
    .line 652
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    move-result p2

    .line 656
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 657
    .line 658
    .line 659
    goto :goto_b

    .line 660
    :cond_e
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isFirst()Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_f

    .line 665
    .line 666
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isLast()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-eqz v0, :cond_f

    .line 671
    .line 672
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->j(Lcom/join/mgps/fragment/r5$f;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    const p2, 0x7f08104d

    .line 677
    .line 678
    .line 679
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 680
    .line 681
    .line 682
    goto :goto_b

    .line 683
    :cond_f
    invoke-virtual {p2}, Lcom/join/mgps/dto/UnlockBean;->isFirst()Z

    .line 684
    .line 685
    .line 686
    move-result p2

    .line 687
    if-eqz p2, :cond_10

    .line 688
    .line 689
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->j(Lcom/join/mgps/fragment/r5$f;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    const p2, 0x7f08104f

    .line 694
    .line 695
    .line 696
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 697
    .line 698
    .line 699
    goto :goto_b

    .line 700
    :cond_10
    invoke-static {p1}, Lcom/join/mgps/fragment/r5$f;->j(Lcom/join/mgps/fragment/r5$f;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    const p2, 0x7f08104e

    .line 705
    .line 706
    .line 707
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    .line 709
    .line 710
    :goto_b
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
    iget-object p2, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

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
    const v0, 0x7f0d0616

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lcom/join/mgps/fragment/r5$e;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 33
    .line 34
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/r5$e;-><init>(Lcom/join/mgps/fragment/r5;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

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
    const v0, 0x7f0d0619

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/join/mgps/fragment/r5$g;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 58
    .line 59
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/r5$g;-><init>(Lcom/join/mgps/fragment/r5;Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

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
    const v0, 0x7f0d0618

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lcom/join/mgps/fragment/r5$f;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/r5$d;->f:Lcom/join/mgps/fragment/r5;

    .line 83
    .line 84
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/r5$f;-><init>(Lcom/join/mgps/fragment/r5;Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    move-object p1, p2

    .line 88
    :goto_1
    return-object p1
.end method
