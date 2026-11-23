.class public Lcom/join/mgps/activity/CreateEndGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CreateEndGameActivity$f;,
        Lcom/join/mgps/activity/CreateEndGameActivity$g;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d003a
.end annotation


# static fields
.field public static final FINISH_EVENT_TAG:Ljava/lang/String; = "CreateEndGameActivity"

.field public static final REQUEST_CODE_PICK_SLOT:I = 0x3ea


# instance fields
.field archiveListBean:Lcom/join/mgps/dto/ArchiveListBean;

.field bossBean:Lcom/join/mgps/dto/BossBean;

.field bossLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BossBean;",
            ">;"
        }
    .end annotation
.end field

.field configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field duration:J

.field gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

.field gameBean:Lcom/join/mgps/dto/UserGameListBean;

.field gameId:Ljava/lang/String;

.field iv_archive_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_arrow:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_arrow_game:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_question:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_boss_info:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_choose_slot:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field popupWindow:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

.field popupWindowGame:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

.field rl_slot:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field sdv_image_game:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showPop:Z

.field showPopGame:Z

.field tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

.field tv_boss_sub_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_boss_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_choose_boos:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_choose_game:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_time:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_time_label:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field uploadSlotTipDialog:Lcom/join/mgps/dialog/o2;

.field userGameLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserGameListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->duration:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPopGame:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameBean:Lcom/join/mgps/dto/UserGameListBean;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPop:Z

    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CreateEndGameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CreateEndGameActivity;->resetBoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/CreateEndGameActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CreateEndGameActivity;->lambda$showBossPopWindow$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/CreateEndGameActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CreateEndGameActivity;->lambda$showGamePopWindow$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showBossPopWindow$1(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPop:Z

    .line 3
    .line 4
    const v0, 0x7f081101

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->iv_arrow:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f08080b

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_title:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v0, "#000000"

    .line 21
    .line 22
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_sub_title:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v0, "#777777"

    .line 32
    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private synthetic lambda$showGamePopWindow$0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPopGame:Z

    .line 3
    .line 4
    const v0, 0x7f081101

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->iv_arrow_game:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f08080b

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private resetBoss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->ll_boss_info:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_choose_boos:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private showBossPopWindow(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archerView",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BossBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d07e0

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f081102

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->iv_arrow:Landroid/widget/ImageView;

    .line 20
    .line 21
    const v2, 0x7f08080c

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a145c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/join/mgps/activity/CreateEndGameActivity$c;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$c;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$g;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 62
    .line 63
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_title:Landroid/widget/TextView;

    .line 68
    .line 69
    const-string v3, "#6194FF"

    .line 70
    .line 71
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_boss_sub_title:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 93
    .line 94
    invoke-virtual {v1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tipAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$g;

    .line 98
    .line 99
    new-instance v1, Lcom/join/mgps/activity/CreateEndGameActivity$d;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$d;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;-><init>(Landroid/app/Activity;)V

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->j(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const v2, 0x7f071293

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    float-to-int v1, v1

    .line 129
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->k(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const v2, 0x7f071453

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    float-to-int v1, v1

    .line 145
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->e(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->f(Landroid/view/View;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->c(Z)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->i(Landroid/view/View;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->b(Z)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    new-instance v0, Lcom/join/mgps/activity/t0;

    .line 167
    .line 168
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/t0;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->h(Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->l()Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindow:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 180
    .line 181
    return-void
.end method

.method private showGamePopWindow(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archerView",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserGameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d07df

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f081102

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->iv_arrow_game:Landroid/widget/ImageView;

    .line 20
    .line 21
    const v2, 0x7f08080c

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a145c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/join/mgps/activity/CreateEndGameActivity$a;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$a;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$f;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 62
    .line 63
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 69
    .line 70
    invoke-virtual {v1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameAdapter:Lcom/join/mgps/activity/CreateEndGameActivity$f;

    .line 74
    .line 75
    new-instance v1, Lcom/join/mgps/activity/CreateEndGameActivity$b;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$b;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 81
    .line 82
    .line 83
    new-instance p2, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;-><init>(Landroid/app/Activity;)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->j(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const v2, 0x7f071293

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    float-to-int v1, v1

    .line 105
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->k(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const v2, 0x7f0714d1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    float-to-int v1, v1

    .line 121
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->e(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->f(Landroid/view/View;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->c(Z)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->i(Landroid/view/View;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->b(Z)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    new-instance v0, Lcom/join/mgps/activity/u0;

    .line 143
    .line 144
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/u0;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->h(Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->l()Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindowGame:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 156
    .line 157
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->loadUserGamesData(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a11
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method chooseBoss()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0462
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossLists:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindow:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPop:Z

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPop:Z

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPop:Z

    .line 40
    .line 41
    const v0, 0x7f0a0462

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossLists:Ljava/util/List;

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->showBossPopWindow(Landroid/view/View;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->loadBossData(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const-string v0, "\u8bf7\u9009\u62e9\u6e38\u620f"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_2
    return-void
.end method

.method chooseGame()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0463
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->userGameLists:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindowGame:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPopGame:Z

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPopGame:Z

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->p()V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->showPopGame:Z

    .line 32
    .line 33
    const v0, 0x7f0a0463

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->userGameLists:Ljava/util/List;

    .line 41
    .line 42
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->showGamePopWindow(Landroid/view/View;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->loadUserGamesData(Z)V

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_2
    return-void
.end method

.method chooseSlot()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0edf
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v1, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "gameId"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x3ea

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "\u8bf7\u9009\u62e9\u6e38\u620f"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method loadBossData(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBossListArgs;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestBossListArgs;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->m0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossLists:Ljava/util/List;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->updateBossUi(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method loadUserGamesData(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/k;->Z(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/util/List;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->userGameLists:Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->updateGamesUi(ZLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3ea

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const-string p1, "mData"

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/dto/ArchiveListBean;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->archiveListBean:Lcom/join/mgps/dto/ArchiveListBean;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->rl_slot:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->ll_choose_slot:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const/16 p2, 0x8

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->iv_archive_image:Landroid/widget/ImageView;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->archiveListBean:Lcom/join/mgps/dto/ArchiveListBean;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveListBean;->getArchiveCover()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public onBusEvent(Lcom/join/mgps/event/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "CreateEndGameActivity"

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/v;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method onChooseTime()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0465
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/wheel/picker/a;-><init>(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/c;->G0(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/c;->m0(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/popup/b;->i0(Z)V

    .line 14
    .line 15
    .line 16
    const/high16 v1, 0x41700000    # 15.0f

    .line 17
    .line 18
    invoke-static {p0, v1}, Lq6/a;->H(Landroid/content/Context;F)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/c;->D0(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/activity/CreateEndGameActivity$e;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CreateEndGameActivity$e;-><init>(Lcom/join/mgps/activity/CreateEndGameActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/a;->V0(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/customview/popup/a;->B()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method onClickNext()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a02ae
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->archiveListBean:Lcom/join/mgps/dto/ArchiveListBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\u8bf7\u9009\u62e9\u5b58\u6863"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "\u8bf7\u9009\u62e9BOSS"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-wide v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->duration:J

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-gtz v4, :cond_2

    .line 28
    .line 29
    const-string v0, "\u8bf7\u8bbe\u7f6e\u6311\u6218\u65f6\u957f"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const-wide/16 v2, 0x4e20

    .line 36
    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-gez v4, :cond_3

    .line 40
    .line 41
    const-string v0, "\u6311\u6218\u65f6\u957f\u4e0d\u80fd\u4f4e\u4e8e20\u79d2"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CreateEndGameActivity;->showToast(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->bossBean:Lcom/join/mgps/dto/BossBean;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;->b(Lcom/join/mgps/dto/BossBean;)Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->archiveListBean:Lcom/join/mgps/dto/ArchiveListBean;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;->a(Lcom/join/mgps/dto/ArchiveListBean;)Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-wide v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->duration:J

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;->d(Ljava/lang/Long;)Lcom/join/mgps/activity/CreateEndGameCommitActivity_$q;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method onClickQuestion()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a74
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->uploadSlotTipDialog:Lcom/join/mgps/dialog/o2;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/dialog/o2;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/o2;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->uploadSlotTipDialog:Lcom/join/mgps/dialog/o2;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->uploadSlotTipDialog:Lcom/join/mgps/dialog/o2;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getEndgame_archive_hint()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/o2;->a(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method onDeleteSlot()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a2e
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->archiveListBean:Lcom/join/mgps/dto/ArchiveListBean;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->ll_choose_slot:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->rl_slot:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showToast(Ljava/lang/String;)V
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
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method updateBossUi(Ljava/util/List;)V
    .locals 1
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
            "Lcom/join/mgps/dto/BossBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindow:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f0a0462

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/CreateEndGameActivity;->showBossPopWindow(Landroid/view/View;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method updateGamesUi(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "update",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserGameListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->userGameLists:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->userGameLists:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/join/mgps/dto/UserGameListBean;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserGameListBean;->getGameId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->sdv_image_game:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserGameListBean;->getGameIcon()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->tv_choose_game:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserGameListBean;->getGameName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->loadBossData(Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/CreateEndGameActivity;->popupWindowGame:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const p1, 0x7f0a0463

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/CreateEndGameActivity;->showGamePopWindow(Landroid/view/View;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method
