.class public Lcom/join/mgps/activity/arena/ArenaGameListActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/ArenaGameListActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0023
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0xa

.field private static final ROOM_TYPE_FC:I = 0x23

.field private static final ROOM_TYPE_JIEJI:I = 0x1f

.field public static final TYPE_FC:I = 0x2

.field public static final TYPE_JIEJI:I = 0x3

.field public static final TYPE_OTHERS:I = 0x4

.field public static final TYPE_RECENT:I = 0x1


# instance fields
.field accountUtil:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private haveMore:Z

.field hearTitleTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1790
    .end annotation
.end field

.field layout_others_list:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/e2;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTypeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFragments:[Lcom/join/mgps/fragment/c;

.field private mGameTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPn:I

.field mReuqsetServer:Lcom/join/mgps/rpc/l;

.field mType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->haveMore:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mDatas:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mGameTypes:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mFirstTypeDatas:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mDatas:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->haveMore:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/arena/ArenaGameListActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->newInstance(I)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mGameTypes:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private getData()V
    .locals 1

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showLoading()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->requestDataByType()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showFailed()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private newInstance(I)Landroidx/fragment/app/Fragment;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mFragments:[Lcom/join/mgps/fragment/c;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mGameTypes:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/GameTypeBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTypeBean;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "game_type"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mType:I

    .line 31
    .line 32
    const-string v2, "room_type"

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x23

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v4, 0x3

    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x1f

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    const-string v1, "pn"

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const-string v1, "datas"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mFirstTypeDatas:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    new-instance v1, Lcom/join/mgps/fragment/c;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/join/mgps/fragment/c;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mFragments:[Lcom/join/mgps/fragment/c;

    .line 79
    .line 80
    aput-object v1, v0, p1

    .line 81
    .line 82
    return-object v1
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mReuqsetServer:Lcom/join/mgps/rpc/l;

    .line 6
    .line 7
    const v0, 0x7f0a1789

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f0600c8

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a0e61

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a014e

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v3, 0x7f080a84

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 66
    .line 67
    const/4 v1, -0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a0f95

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    const v0, 0x7f0a0f92

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/LinearLayout;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 94
    .line 95
    const/16 v1, 0x11

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/join/mgps/adapter/e2;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mDatas:Ljava/util/List;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-direct {v0, p0, v1, v3}, Lcom/join/mgps/adapter/e2;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mAdapter:Lcom/join/mgps/adapter/e2;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    .line 114
    .line 115
    iget v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mType:I

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    if-ne v0, v1, :cond_0

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 121
    .line 122
    const-string v1, "\u6700\u8fd1"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 133
    .line 134
    new-instance v1, Lcom/join/mgps/activity/arena/ArenaGameListActivity$a;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity$a;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 143
    .line 144
    new-instance v1, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity$b;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->layout_others_list:Landroid/widget/RelativeLayout;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->getData()V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_0
    const/4 v1, 0x2

    .line 162
    if-eq v0, v1, :cond_3

    .line 163
    .line 164
    const/4 v1, 0x3

    .line 165
    if-eq v0, v1, :cond_2

    .line 166
    .line 167
    const/4 v1, 0x4

    .line 168
    if-eq v0, v1, :cond_1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 172
    .line 173
    const-string v1, "\u5176\u4ed6"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 180
    .line 181
    const-string v1, "\u8857\u673a\u5bf9\u6218"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hearTitleTxt:Landroid/widget/TextView;

    .line 188
    .line 189
    const-string v1, "FC\u5bf9\u6218"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->layout_others_list:Landroid/widget/RelativeLayout;

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    const v0, 0x7f0a1b84

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 212
    .line 213
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 214
    .line 215
    const v0, 0x7f0a11df

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Lcom/join/mgps/customview/TabPageIndicator;

    .line 223
    .line 224
    iput-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 225
    .line 226
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->getData()V

    .line 227
    .line 228
    .line 229
    :goto_1
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

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method initViewPager(Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mGameTypes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_type()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mFirstTypeDatas:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_list()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mGameTypes:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    new-array p1, p1, [Lcom/join/mgps/fragment/c;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mFragments:[Lcom/join/mgps/fragment/c;

    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/activity/arena/ArenaGameListActivity$c;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity$c;-><init>(Lcom/join/mgps/activity/arena/ArenaGameListActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mGameTypes:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f0600c9

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setNormalTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const v1, 0x7f060503

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setSelectedTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 105
    .line 106
    const v0, 0x7f080c60

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setSelectedBottomDrawableBounds(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 113
    .line 114
    const v0, 0x7f0812fd

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setNormalBottomDrawableBound(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->getData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method requestDataByType()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->requestRecentGameList()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->requestOthersGameList()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method requestOthersGameList()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mReuqsetServer:Lcom/join/mgps/rpc/l;

    .line 8
    .line 9
    const/16 v1, 0x23

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v2}, Lcom/join/mgps/rpc/l;->M(III)Lcom/join/mgps/dto/ResultResMainBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x3

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mReuqsetServer:Lcom/join/mgps/rpc/l;

    .line 20
    .line 21
    const/16 v1, 0x1f

    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v2}, Lcom/join/mgps/rpc/l;->M(III)Lcom/join/mgps/dto/ResultResMainBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_5

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_type()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->initViewPager(Lcom/join/mgps/dto/ResultResMainBean;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hideLoading()V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    :goto_2
    return-void

    .line 75
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showFailed()V

    .line 76
    .line 77
    .line 78
    :goto_3
    return-void
.end method

.method requestRecentGameList()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mReuqsetServer:Lcom/join/mgps/rpc/l;

    .line 23
    .line 24
    iget v4, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 25
    .line 26
    invoke-interface {v3, v2, v1, v4}, Lcom/join/mgps/rpc/l;->F(ILjava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_6

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/join/mgps/dto/GameListBean;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListBean;->getGame_list()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lez v3, :cond_3

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/16 v4, 0xa

    .line 76
    .line 77
    if-lt v3, v4, :cond_2

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->haveMore:Z

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->haveMore:Z

    .line 84
    .line 85
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->updateUI(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 89
    .line 90
    if-gt v1, v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->hideLoading()V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->haveMore:Z

    .line 96
    .line 97
    if-eqz v1, :cond_7

    .line 98
    .line 99
    iget v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 100
    .line 101
    add-int/2addr v1, v0

    .line 102
    iput v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 106
    .line 107
    if-gt v1, v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    :goto_2
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v3, "requestRecentGameList Exception :"

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "ArenaGameListActivity"

    .line 137
    .line 138
    invoke-static {v2, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mPn:I

    .line 142
    .line 143
    if-gt v1, v0, :cond_7

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->showFailed()V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_3
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

.method showFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method updateUI(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mDatas:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->haveMore:Z

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mDatas:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-gtz p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/ArenaGameListActivity;->mAdapter:Lcom/join/mgps/adapter/e2;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
