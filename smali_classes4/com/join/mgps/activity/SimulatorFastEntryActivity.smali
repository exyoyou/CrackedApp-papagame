.class Lcom/join/mgps/activity/SimulatorFastEntryActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00a7
.end annotation


# instance fields
.field private SCROLLING:Z

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private firstVisiblePosition:I

.field headview:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isExploring:Z

.field ivSearchIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/y7;

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field recyclerview:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvSearch:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->emuZone:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->lastVisibleIndex:I

    .line 23
    .line 24
    iput v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->firstVisiblePosition:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->SCROLLING:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->isExploring:Z

    .line 29
    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/SimulatorFastEntryActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/SimulatorFastEntryActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/SimulatorFastEntryActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x500

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->showLoding()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loadClassfyDatas()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->getData()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    new-instance v1, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;-><init>(Lcom/join/mgps/activity/SimulatorFastEntryActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method expListPoint()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->isExploring:Z

    .line 3
    .line 4
    if-nez v1, :cond_c

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->isExploring:Z

    .line 8
    .line 9
    iget v2, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->firstVisiblePosition:I

    .line 10
    .line 11
    if-ltz v2, :cond_c

    .line 12
    .line 13
    :goto_0
    iget v3, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->lastVisibleIndex:I

    .line 14
    .line 15
    if-gt v2, v3, :cond_c

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    iget v4, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->firstVisiblePosition:I

    .line 20
    .line 21
    sub-int v4, v2, v4

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->mAdapter:Lcom/join/mgps/adapter/y7;

    .line 28
    .line 29
    invoke-virtual {v4, v2}, Lcom/join/mgps/adapter/y7;->getItemViewType(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v3, :cond_b

    .line 34
    .line 35
    const v5, 0x7f0a1348

    .line 36
    .line 37
    .line 38
    if-ne v1, v4, :cond_1

    .line 39
    .line 40
    const v4, 0x7f0a1b9f

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 48
    .line 49
    if-eqz v3, :cond_b

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_b

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz v3, :cond_b

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    instance-of v4, v4, Lcom/join/mgps/adapter/q7;

    .line 70
    .line 71
    if-eqz v4, :cond_b

    .line 72
    .line 73
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/join/mgps/adapter/q7;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_b

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_0

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_0

    .line 114
    .line 115
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    sget-object v6, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    const/4 v6, 0x2

    .line 145
    if-ne v6, v4, :cond_3

    .line 146
    .line 147
    const v4, 0x7f0a144b

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .line 156
    if-eqz v3, :cond_b

    .line 157
    .line 158
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Lcom/join/mgps/adapter/e8;

    .line 163
    .line 164
    if-eqz v3, :cond_b

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_b

    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_2

    .line 195
    .line 196
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_3
    const/4 v6, 0x3

    .line 226
    if-ne v6, v4, :cond_5

    .line 227
    .line 228
    const v4, 0x7f0a143a

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    .line 237
    if-eqz v3, :cond_b

    .line 238
    .line 239
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Lcom/join/mgps/adapter/e8;

    .line 244
    .line 245
    if-eqz v3, :cond_b

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_b

    .line 260
    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-nez v5, :cond_4

    .line 276
    .line 277
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 282
    .line 283
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_5
    const/4 v6, 0x7

    .line 307
    if-ne v6, v4, :cond_7

    .line 308
    .line 309
    const v4, 0x7f0a145c

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 317
    .line 318
    if-eqz v3, :cond_b

    .line 319
    .line 320
    invoke-static {v3}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Lcom/join/mgps/adapter/g8;

    .line 329
    .line 330
    aget v5, v4, v0

    .line 331
    .line 332
    :goto_4
    aget v6, v4, v1

    .line 333
    .line 334
    if-gt v5, v6, :cond_b

    .line 335
    .line 336
    if-eqz v3, :cond_6

    .line 337
    .line 338
    invoke-virtual {v3, v5}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 343
    .line 344
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    if-eqz v7, :cond_6

    .line 349
    .line 350
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-nez v7, :cond_6

    .line 359
    .line 360
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 365
    .line 366
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 386
    .line 387
    .line 388
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_7
    const/4 v6, 0x4

    .line 392
    if-ne v6, v4, :cond_9

    .line 393
    .line 394
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    .line 400
    if-eqz v3, :cond_b

    .line 401
    .line 402
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    check-cast v3, Lcom/join/mgps/adapter/s7;

    .line 407
    .line 408
    if-eqz v3, :cond_b

    .line 409
    .line 410
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_b

    .line 423
    .line 424
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    check-cast v4, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;

    .line 429
    .line 430
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-nez v5, :cond_8

    .line 439
    .line 440
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    sget-object v6, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 445
    .line 446
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 466
    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_9
    const/4 v6, 0x5

    .line 470
    if-ne v6, v4, :cond_b

    .line 471
    .line 472
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 477
    .line 478
    if-eqz v3, :cond_b

    .line 479
    .line 480
    invoke-static {v3}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    check-cast v3, Lcom/join/mgps/adapter/a8;

    .line 489
    .line 490
    aget v5, v4, v0

    .line 491
    .line 492
    :goto_6
    aget v6, v4, v1

    .line 493
    .line 494
    if-gt v5, v6, :cond_b

    .line 495
    .line 496
    if-eqz v3, :cond_a

    .line 497
    .line 498
    invoke-virtual {v3, v5}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 503
    .line 504
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    if-eqz v7, :cond_a

    .line 509
    .line 510
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-nez v7, :cond_a

    .line 519
    .line 520
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 525
    .line 526
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 531
    .line 532
    .line 533
    move-result-object v9

    .line 534
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .line 547
    .line 548
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 552
    .line 553
    goto/16 :goto_0

    .line 554
    .line 555
    :catchall_0
    move-exception v1

    .line 556
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->isExploring:Z

    .line 557
    .line 558
    throw v1

    .line 559
    :catch_0
    :cond_c
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->isExploring:Z

    .line 560
    .line 561
    return-void
.end method

.method flSearch()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/dto/RequestOnlineCouponArgs;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestOnlineCouponArgs;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Lb7/i;->T0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/16 v2, 0xc8

    .line 50
    .line 51
    if-ne v1, v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/mgps/dto/SimulatorFastEntryBean;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->showMain()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->initRecyclerview(Lcom/join/mgps/dto/SimulatorFastEntryBean;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->showLodingFailed()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method initRecyclerview(Lcom/join/mgps/dto/SimulatorFastEntryBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 6
    .line 7
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getSearch_bar_hint()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->tvSearch:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getSearch_bar_hint()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getFast_entry()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x6

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getFast_entry()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_4

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getFast_entry()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;

    .line 79
    .line 80
    new-instance v7, Lcom/join/mgps/dto/ExtBean;

    .line 81
    .line 82
    invoke-direct {v7}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    sget-object v8, Lcom/papa/sim/statistic/EventP$TypeCode;->speedDail:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->getTitle()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$FastEntryBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    add-int/lit8 v6, v5, 0x9

    .line 118
    .line 119
    div-int/lit8 v6, v6, 0xa

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    :goto_1
    if-ge v7, v6, :cond_3

    .line 123
    .line 124
    mul-int/lit8 v8, v7, 0xa

    .line 125
    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    mul-int/lit8 v9, v7, 0xa

    .line 129
    .line 130
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    invoke-interface {v4, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    new-instance v4, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    invoke-direct {v4, v5, v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v5, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v5, Lcom/papa/sim/statistic/EventP$TypeCode;->speedDail:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v5, "\u5feb\u901f\u5165\u53e3"

    .line 170
    .line 171
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const v5, 0x7f07133d

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v4, "\u66f4\u591a"

    .line 209
    .line 210
    const v5, 0x7f0713ac

    .line 211
    .line 212
    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-lez v1, :cond_6

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    const-string v7, "\u6700\u65b0\u4e0a\u67b6"

    .line 238
    .line 239
    if-eqz v6, :cond_5

    .line 240
    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 246
    .line 247
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 248
    .line 249
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 253
    .line 254
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    sget-object v9, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 275
    .line 276
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_5
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 293
    .line 294
    const/4 v6, 0x2

    .line 295
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-direct {v1, v6, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    new-instance v6, Lcom/join/mgps/dto/ExtBean;

    .line 303
    .line 304
    invoke-direct {v6}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 305
    .line 306
    .line 307
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 308
    .line 309
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-virtual {v1, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-direct {v1, v3, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getNostalgia()Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    if-eqz v1, :cond_8

    .line 352
    .line 353
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getNostalgia()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-lez v1, :cond_8

    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getNostalgia()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    const-string v7, "\u6000\u65e7\u7ecf\u5178"

    .line 376
    .line 377
    if-eqz v6, :cond_7

    .line 378
    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 384
    .line 385
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 386
    .line 387
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 388
    .line 389
    .line 390
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 391
    .line 392
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    sget-object v9, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 413
    .line 414
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 427
    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_7
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 431
    .line 432
    const/4 v6, 0x7

    .line 433
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getNostalgia()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    invoke-direct {v1, v6, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    new-instance v6, Lcom/join/mgps/dto/ExtBean;

    .line 441
    .line 442
    invoke-direct {v6}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 443
    .line 444
    .line 445
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 446
    .line 447
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    invoke-virtual {v1, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 466
    .line 467
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    invoke-direct {v1, v3, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    if-eqz v1, :cond_a

    .line 490
    .line 491
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    if-eqz v1, :cond_a

    .line 500
    .line 501
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-lez v1, :cond_a

    .line 514
    .line 515
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    const-string v7, "\u7ecf\u5178\u5fc5\u73a9"

    .line 532
    .line 533
    if-eqz v6, :cond_9

    .line 534
    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 540
    .line 541
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 542
    .line 543
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 544
    .line 545
    .line 546
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 547
    .line 548
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    sget-object v9, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 569
    .line 570
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 579
    .line 580
    .line 581
    move-result-object v7

    .line 582
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 583
    .line 584
    .line 585
    goto :goto_4

    .line 586
    :cond_9
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 587
    .line 588
    const/4 v6, 0x3

    .line 589
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    .line 590
    .line 591
    .line 592
    move-result-object v8

    .line 593
    invoke-direct {v1, v6, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    new-instance v6, Lcom/join/mgps/dto/ExtBean;

    .line 597
    .line 598
    invoke-direct {v6}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 599
    .line 600
    .line 601
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 602
    .line 603
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 622
    .line 623
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    :cond_a
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    const v4, 0x7f071369

    .line 646
    .line 647
    .line 648
    if-eqz v1, :cond_c

    .line 649
    .line 650
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-lez v1, :cond_c

    .line 659
    .line 660
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 661
    .line 662
    const-string v6, "\u6539\u7248\u6e38\u620f"

    .line 663
    .line 664
    invoke-direct {v1, v2, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 671
    .line 672
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 677
    .line 678
    .line 679
    move-result v7

    .line 680
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 681
    .line 682
    .line 683
    move-result-object v7

    .line 684
    invoke-direct {v1, v3, v7}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 699
    .line 700
    .line 701
    move-result v7

    .line 702
    if-eqz v7, :cond_b

    .line 703
    .line 704
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    check-cast v7, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;

    .line 709
    .line 710
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 711
    .line 712
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 713
    .line 714
    .line 715
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 716
    .line 717
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 718
    .line 719
    .line 720
    move-result-object v8

    .line 721
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->getJp_info()Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 722
    .line 723
    .line 724
    move-result-object v9

    .line 725
    invoke-virtual {v9}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getCrc_link_type_val()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->getJp_info()Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 734
    .line 735
    .line 736
    move-result-object v9

    .line 737
    invoke-virtual {v9}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getCrc_link_type_val()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v9

    .line 741
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 742
    .line 743
    .line 744
    move-result-object v8

    .line 745
    sget-object v9, Lcom/papa/sim/statistic/EventP$TypeCode;->banner:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 746
    .line 747
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v9

    .line 751
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 752
    .line 753
    .line 754
    move-result-object v8

    .line 755
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 756
    .line 757
    .line 758
    move-result-object v8

    .line 759
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->getTitle()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v9

    .line 763
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 764
    .line 765
    .line 766
    move-result-object v8

    .line 767
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 768
    .line 769
    .line 770
    goto :goto_5

    .line 771
    :cond_b
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 772
    .line 773
    const/4 v7, 0x4

    .line 774
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    .line 775
    .line 776
    .line 777
    move-result-object v8

    .line 778
    invoke-direct {v1, v7, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    new-instance v7, Lcom/join/mgps/dto/ExtBean;

    .line 782
    .line 783
    invoke-direct {v7}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 784
    .line 785
    .line 786
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 787
    .line 788
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    invoke-virtual {v7, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    invoke-virtual {v1, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 803
    .line 804
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 805
    .line 806
    .line 807
    move-result-object v6

    .line 808
    const v7, 0x7f0714f8

    .line 809
    .line 810
    .line 811
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 812
    .line 813
    .line 814
    move-result v6

    .line 815
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 816
    .line 817
    .line 818
    move-result-object v6

    .line 819
    invoke-direct {v1, v3, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    :cond_c
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    if-eqz v1, :cond_e

    .line 830
    .line 831
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    if-lez v1, :cond_e

    .line 840
    .line 841
    const/4 v1, 0x0

    .line 842
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    .line 843
    .line 844
    .line 845
    move-result-object v6

    .line 846
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 847
    .line 848
    .line 849
    move-result v6

    .line 850
    if-ge v1, v6, :cond_e

    .line 851
    .line 852
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    .line 853
    .line 854
    .line 855
    move-result-object v6

    .line 856
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v6

    .line 860
    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;

    .line 861
    .line 862
    new-instance v7, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 863
    .line 864
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getTitle()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v8

    .line 868
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getId()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v9

    .line 872
    invoke-direct {v7, v2, v8, v9}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 876
    .line 877
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 878
    .line 879
    .line 880
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 881
    .line 882
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 883
    .line 884
    .line 885
    move-result-object v8

    .line 886
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getTitle()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v9

    .line 890
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 891
    .line 892
    .line 893
    move-result-object v8

    .line 894
    const-string v9, "\u5168\u90e8"

    .line 895
    .line 896
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 897
    .line 898
    .line 899
    move-result-object v8

    .line 900
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    new-instance v7, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 907
    .line 908
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 909
    .line 910
    .line 911
    move-result-object v8

    .line 912
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 913
    .line 914
    .line 915
    move-result v8

    .line 916
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 917
    .line 918
    .line 919
    move-result-object v8

    .line 920
    invoke-direct {v7, v3, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getList()Ljava/util/List;

    .line 927
    .line 928
    .line 929
    move-result-object v7

    .line 930
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 931
    .line 932
    .line 933
    move-result-object v7

    .line 934
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 935
    .line 936
    .line 937
    move-result v8

    .line 938
    if-eqz v8, :cond_d

    .line 939
    .line 940
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v8

    .line 944
    check-cast v8, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 945
    .line 946
    new-instance v9, Lcom/join/mgps/dto/ExtBean;

    .line 947
    .line 948
    invoke-direct {v9}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 949
    .line 950
    .line 951
    iget-object v10, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 952
    .line 953
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 954
    .line 955
    .line 956
    move-result-object v9

    .line 957
    invoke-virtual {v8}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v10

    .line 961
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 962
    .line 963
    .line 964
    move-result-object v9

    .line 965
    invoke-virtual {v8}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getId()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v10

    .line 969
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 970
    .line 971
    .line 972
    move-result-object v9

    .line 973
    sget-object v10, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 974
    .line 975
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v10

    .line 979
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 980
    .line 981
    .line 982
    move-result-object v9

    .line 983
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getTitle()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v10

    .line 987
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 988
    .line 989
    .line 990
    move-result-object v9

    .line 991
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 992
    .line 993
    .line 994
    goto :goto_7

    .line 995
    :cond_d
    new-instance v7, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 996
    .line 997
    const/4 v8, 0x5

    .line 998
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getList()Ljava/util/List;

    .line 999
    .line 1000
    .line 1001
    move-result-object v9

    .line 1002
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 1006
    .line 1007
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 1011
    .line 1012
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v8

    .line 1016
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getTitle()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v6

    .line 1020
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v6

    .line 1024
    invoke-virtual {v7, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    new-instance v6, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 1031
    .line 1032
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v7

    .line 1036
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1037
    .line 1038
    .line 1039
    move-result v7

    .line 1040
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    invoke-direct {v6, v3, v7}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    .line 1049
    .line 1050
    add-int/lit8 v1, v1, 0x1

    .line 1051
    .line 1052
    goto/16 :goto_6

    .line 1053
    .line 1054
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 1055
    .line 1056
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1057
    .line 1058
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1062
    .line 1063
    .line 1064
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->mAdapter:Lcom/join/mgps/adapter/y7;

    .line 1065
    .line 1066
    if-nez p1, :cond_f

    .line 1067
    .line 1068
    new-instance p1, Lcom/join/mgps/adapter/y7;

    .line 1069
    .line 1070
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/adapter/y7;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1071
    .line 1072
    .line 1073
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->mAdapter:Lcom/join/mgps/adapter/y7;

    .line 1074
    .line 1075
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 1076
    .line 1077
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->mAdapter:Lcom/join/mgps/adapter/y7;

    .line 1078
    .line 1079
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1080
    .line 1081
    .line 1082
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 1083
    .line 1084
    new-instance v0, Lcom/join/mgps/activity/q9;

    .line 1085
    .line 1086
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/q9;-><init>(Lcom/join/mgps/activity/SimulatorFastEntryActivity;)V

    .line 1087
    .line 1088
    .line 1089
    const-wide/16 v1, 0x64

    .line 1090
    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1092
    .line 1093
    .line 1094
    :cond_10
    :goto_8
    return-void
.end method

.method loadClassfyDatas()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v1, v0}, Lb7/i;->O1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v2, 0xc8

    .line 69
    .line 70
    if-ne v1, v2, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;->getGame_type()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v7, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    const-string v3, "\u7cbe\u9009"

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x1

    .line 96
    move-object v1, v7

    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-interface {v0, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .line 103
    .line 104
    :try_start_1
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->showLodingFailed()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_0
    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->getData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->headview:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->headview:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method
