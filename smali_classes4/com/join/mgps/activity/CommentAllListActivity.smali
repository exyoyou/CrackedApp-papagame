.class public Lcom/join/mgps/activity/CommentAllListActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/CommentAllListAdapter$h;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0162
.end annotation


# instance fields
.field private CommentAllListBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;"
        }
    .end annotation
.end field

.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bespeakSwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private commentBaseBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field commentContent:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private commentHeadMstarBar:Lcom/join/mgps/customview/MStarBar;

.field private commentHeadNumTx:Landroid/widget/TextView;

.field private commentHeadPointTx:Landroid/widget/TextView;

.field commentId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentScoreSwitch:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentStars:F
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field comment_all_list:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private comment_head_nopoint_tx:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private editText5:Landroid/widget/TextView;

.field private fiveHv:Lcom/join/mgps/customview/HistogramView;

.field private fourHv:Lcom/join/mgps/customview/HistogramView;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameIsStart:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameType:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private goCommit:Landroid/widget/LinearLayout;

.field private headView:Landroid/view/View;

.field private isLoading:Z

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mySelf:Lcom/join/mgps/dto/CommentBaseBean;

.field noCommentLl:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private oneHv:Lcom/join/mgps/customview/HistogramView;

.field packageName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private pn:I

.field private point_ll:Landroid/widget/LinearLayout;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/f;

.field sgcSwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private start_ll:Landroid/widget/LinearLayout;

.field textTopRight:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private threeHv:Lcom/join/mgps/customview/HistogramView;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private twoHv:Lcom/join/mgps/customview/HistogramView;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->isLoading:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->CommentAllListBeans:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CommentAllListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->isLoading:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CommentAllListActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dpValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p2, p2, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p2, p1

    .line 16
    float-to-int p1, p2

    .line 17
    return p1
.end method


# virtual methods
.method addViewItem(Ljava/util/List;)V
    .locals 5
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
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->isTitle()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 23
    .line 24
    sget-object v3, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 25
    .line 26
    new-instance v4, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 27
    .line 28
    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;-><init>(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->dataSet:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 41
    .line 42
    sget-object v3, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 43
    .line 44
    new-instance v4, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 45
    .line 46
    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;-><init>(Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->dataSet:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method afterView()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->title_textview:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u5168\u90e8\u70b9\u8bc4"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->uid:I

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->token:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v1, 0x7f0d0168

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 70
    .line 71
    const v1, 0x7f0a1195

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->oneHv:Lcom/join/mgps/customview/HistogramView;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 83
    .line 84
    const v1, 0x7f0a1a76

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->twoHv:Lcom/join/mgps/customview/HistogramView;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 96
    .line 97
    const v1, 0x7f0a1745

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->threeHv:Lcom/join/mgps/customview/HistogramView;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 109
    .line 110
    const v1, 0x7f0a06be

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->fourHv:Lcom/join/mgps/customview/HistogramView;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 122
    .line 123
    const v1, 0x7f0a063f

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->fiveHv:Lcom/join/mgps/customview/HistogramView;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 135
    .line 136
    const v1, 0x7f0a03db

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 144
    .line 145
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadMstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 148
    .line 149
    const v1, 0x7f0a03de

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadPointTx:Landroid/widget/TextView;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 161
    .line 162
    const v1, 0x7f0a03dc

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_head_nopoint_tx:Landroid/widget/TextView;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 174
    .line 175
    const v1, 0x7f0a03dd

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/TextView;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadNumTx:Landroid/widget/TextView;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 187
    .line 188
    const v1, 0x7f0a0563

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->editText5:Landroid/widget/TextView;

    .line 198
    .line 199
    const-string v1, "\u5199\u8bc4\u8bba"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 205
    .line 206
    const v1, 0x7f0a1621

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/widget/LinearLayout;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->start_ll:Landroid/widget/LinearLayout;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 218
    .line 219
    const v1, 0x7f0a126e

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/LinearLayout;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->point_ll:Landroid/widget/LinearLayout;

    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 231
    .line 232
    const v1, 0x7f0a07a4

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lcom/join/mgps/activity/CommentAllListActivity$a;

    .line 240
    .line 241
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentAllListActivity$a;-><init>(Lcom/join/mgps/activity/CommentAllListActivity;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadMstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 248
    .line 249
    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadMstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLoding()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->getCommentList()V

    .line 262
    .line 263
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentBaseBeanList:Ljava/util/List;

    .line 270
    .line 271
    new-instance v0, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .line 275
    .line 276
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->dataSet:Ljava/util/List;

    .line 277
    .line 278
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 279
    .line 280
    iget-object v3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 281
    .line 282
    iget v4, p0, Lcom/join/mgps/activity/CommentAllListActivity;->uid:I

    .line 283
    .line 284
    iget-object v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->dataSet:Ljava/util/List;

    .line 285
    .line 286
    iget-object v6, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 287
    .line 288
    iget v7, p0, Lcom/join/mgps/activity/CommentAllListActivity;->sgcSwitch:I

    .line 289
    .line 290
    move-object v2, v0

    .line 291
    move-object v8, p0

    .line 292
    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/adapter/CommentAllListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;ILcom/join/mgps/adapter/CommentAllListAdapter$h;)V

    .line 293
    .line 294
    .line 295
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 296
    .line 297
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 298
    .line 299
    if-eqz v0, :cond_1

    .line 300
    .line 301
    const-string v2, "1"

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 310
    .line 311
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->headView:Landroid/view/View;

    .line 312
    .line 313
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->textTopRight:Landroid/widget/TextView;

    .line 317
    .line 318
    const/16 v2, 0x8

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->textTopRight:Landroid/widget/TextView;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 330
    .line 331
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 332
    .line 333
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 337
    .line 338
    const/16 v2, 0xa

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 349
    .line 350
    new-instance v1, Lcom/join/mgps/activity/CommentAllListActivity$b;

    .line 351
    .line 352
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentAllListActivity$b;-><init>(Lcom/join/mgps/activity/CommentAllListActivity;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 359
    .line 360
    new-instance v1, Lcom/join/mgps/activity/CommentAllListActivity$c;

    .line 361
    .line 362
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentAllListActivity$c;-><init>(Lcom/join/mgps/activity/CommentAllListActivity;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 366
    .line 367
    .line 368
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

.method public checkReset(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 5
    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->i(II)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->j(II)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method getCommentList()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->isLoading:Z

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->getGameCommentRequestBean()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/f;->a(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/CommentAllListBean;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentAllListBean;->getScoring_details()Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentAllListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/join/mgps/dto/CommentAllListBean;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentAllListBean;->getGeneral_comment()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->setLinechartData(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-lez v2, :cond_2

    .line 92
    .line 93
    new-instance v2, Lcom/join/mgps/dto/CommentBaseBean;

    .line 94
    .line 95
    invoke-direct {v2}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 102
    .line 103
    .line 104
    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 105
    .line 106
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    .line 114
    .line 115
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 116
    .line 117
    const/4 v3, 0x2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    iget v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 121
    .line 122
    if-ne v2, v0, :cond_3

    .line 123
    .line 124
    new-instance v2, Lcom/join/mgps/dto/CommentBaseBean;

    .line 125
    .line 126
    invoke-direct {v2}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 133
    .line 134
    .line 135
    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 136
    .line 137
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 144
    .line 145
    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 146
    .line 147
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 151
    .line 152
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_3
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-lez v2, :cond_5

    .line 162
    .line 163
    iget v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 164
    .line 165
    if-ne v2, v0, :cond_4

    .line 166
    .line 167
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 168
    .line 169
    if-nez v2, :cond_4

    .line 170
    .line 171
    new-instance v2, Lcom/join/mgps/dto/CommentBaseBean;

    .line 172
    .line 173
    invoke-direct {v2}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 180
    .line 181
    .line 182
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_4
    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-ge v0, v2, :cond_5

    .line 196
    .line 197
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Lcom/join/mgps/dto/CommentBaseBean;

    .line 202
    .line 203
    iget v3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/CommentAllListActivity;->showMain(Ljava/util/List;)V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLodingFailed()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLodingFailed()V

    .line 231
    .line 232
    .line 233
    :goto_1
    return-void
.end method

.method public getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comment_id",
            "type",
            "pn"
        }
    .end annotation

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->token:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->uid:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    move-object v5, v0

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->token:Ljava/lang/String;

    .line 56
    .line 57
    iget v6, p0, Lcom/join/mgps/activity/CommentAllListActivity;->uid:I

    .line 58
    .line 59
    move-object v4, p1

    .line 60
    move v7, p2

    .line 61
    move v8, p3

    .line 62
    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public getGameCommentRequestBean()Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->token:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->uid:I

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 44
    .line 45
    const/16 v3, 0xa

    .line 46
    .line 47
    iget-object v4, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameId:Ljava/lang/String;

    .line 48
    .line 49
    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->uid:I

    .line 50
    .line 51
    iget-object v6, p0, Lcom/join/mgps/activity/CommentAllListActivity;->token:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method getToken()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->g(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "|"

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_0
    :goto_0
    return-void
.end method

.method public onChangeComment(Lcom/join/mgps/event/n;)V
    .locals 0
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
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->getCommentList()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 25
    .line 26
    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/f;->d(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    const/16 v1, 0x321

    .line 37
    .line 38
    if-ne p3, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eq p3, v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p0, p3, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->checkReset(II)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 80
    .line 81
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method public onRootView(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameType:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->bespeakSwitch:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameIsStart:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->sgcSwitch:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onUnPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 26
    .line 27
    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/f;->e(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/16 v1, 0x321

    .line 38
    .line 39
    if-ne p3, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eq p3, v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p0, p3, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->checkReset(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 81
    .line 82
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    return-void
.end method

.method resultShow(Ljava/lang/String;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "b",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

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
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-ne p4, p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 17
    .line 18
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/CommentAllListAdapter;->j(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 23
    .line 24
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/CommentAllListAdapter;->i(II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method resultShow2(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x321

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->getToken()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method setLinechartData(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scoringDetailsBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v2, v1, [Lcom/join/mgps/customview/HistogramView;

    .line 5
    .line 6
    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->oneHv:Lcom/join/mgps/customview/HistogramView;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v3, v2, v4

    .line 10
    .line 11
    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->twoHv:Lcom/join/mgps/customview/HistogramView;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    aput-object v3, v2, v5

    .line 15
    .line 16
    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->threeHv:Lcom/join/mgps/customview/HistogramView;

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    aput-object v3, v2, v6

    .line 20
    .line 21
    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->fourHv:Lcom/join/mgps/customview/HistogramView;

    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    aput-object v3, v2, v7

    .line 25
    .line 26
    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->fiveHv:Lcom/join/mgps/customview/HistogramView;

    .line 27
    .line 28
    const/4 v8, 0x4

    .line 29
    aput-object v3, v2, v8

    .line 30
    .line 31
    const-string v3, "#FBCD36"

    .line 32
    .line 33
    const-string v9, "#E4DECA"

    .line 34
    .line 35
    const-string v10, "#F47500"

    .line 36
    .line 37
    const-string v11, "#FFA423"

    .line 38
    .line 39
    const-string v12, "#FFB53D"

    .line 40
    .line 41
    filled-new-array {v10, v11, v12, v3, v9}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v9, Ljava/text/DecimalFormat;

    .line 46
    .line 47
    const-string v10, "#.0"

    .line 48
    .line 49
    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_score()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v10

    .line 64
    iget-object v12, v0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadPointTx:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object v9, v0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadMstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_stars()D

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    invoke-virtual {v9, v10, v11}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 80
    .line 81
    .line 82
    new-array v9, v1, [D

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score5()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    aput-wide v10, v9, v4

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score4()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 107
    .line 108
    .line 109
    move-result-wide v10

    .line 110
    aput-wide v10, v9, v5

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score3()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    aput-wide v10, v9, v6

    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score2()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    aput-wide v5, v9, v7

    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score1()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    aput-wide v5, v9, v8

    .line 153
    .line 154
    const-wide/16 v5, 0x0

    .line 155
    .line 156
    move-wide v10, v5

    .line 157
    const/4 v7, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    :goto_0
    if-ge v7, v1, :cond_1

    .line 160
    .line 161
    aget-wide v12, v9, v7

    .line 162
    .line 163
    cmpl-double v14, v12, v10

    .line 164
    .line 165
    if-lez v14, :cond_0

    .line 166
    .line 167
    move v8, v7

    .line 168
    move-wide v10, v12

    .line 169
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_1
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadNumTx:Landroid/widget/TextView;

    .line 173
    .line 174
    new-instance v12, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getP_count()I

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v13, "\u4eba"

    .line 187
    .line 188
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getP_count()I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-gtz v7, :cond_2

    .line 203
    .line 204
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadMstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 205
    .line 206
    invoke-virtual {v7, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 207
    .line 208
    .line 209
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_head_nopoint_tx:Landroid/widget/TextView;

    .line 210
    .line 211
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadPointTx:Landroid/widget/TextView;

    .line 215
    .line 216
    const/16 v12, 0x8

    .line 217
    .line 218
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->commentHeadNumTx:Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_2
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->point_ll:Landroid/widget/LinearLayout;

    .line 228
    .line 229
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    :goto_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    .line 234
    const/high16 v12, 0x41200000    # 10.0f

    .line 235
    .line 236
    invoke-direct {v0, v0, v12}, Lcom/join/mgps/activity/CommentAllListActivity;->dip2px(Landroid/content/Context;F)I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    const/4 v13, -0x1

    .line 241
    invoke-direct {v7, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .line 243
    .line 244
    const/4 v12, 0x0

    .line 245
    :goto_2
    if-ge v12, v1, :cond_6

    .line 246
    .line 247
    aget-object v13, v2, v12

    .line 248
    .line 249
    invoke-virtual {v13, v4}, Lcom/join/mgps/customview/HistogramView;->setAnim(Z)V

    .line 250
    .line 251
    .line 252
    aget-wide v13, v9, v12

    .line 253
    .line 254
    cmpl-double v15, v13, v5

    .line 255
    .line 256
    if-nez v15, :cond_3

    .line 257
    .line 258
    aget-object v13, v2, v12

    .line 259
    .line 260
    invoke-virtual {v13, v5, v6}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_3
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 265
    .line 266
    if-ne v12, v8, :cond_4

    .line 267
    .line 268
    aget-object v13, v2, v12

    .line 269
    .line 270
    invoke-virtual {v13, v5, v6}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_4
    cmpl-double v16, v10, v13

    .line 275
    .line 276
    if-nez v16, :cond_5

    .line 277
    .line 278
    aget-object v13, v2, v12

    .line 279
    .line 280
    invoke-virtual {v13, v5, v6}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_5
    aget-object v5, v2, v12

    .line 285
    .line 286
    div-double/2addr v13, v10

    .line 287
    invoke-virtual {v5, v13, v14}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 288
    .line 289
    .line 290
    :goto_3
    aget-object v5, v2, v12

    .line 291
    .line 292
    aget-object v6, v3, v12

    .line 293
    .line 294
    invoke-virtual {v5, v6}, Lcom/join/mgps/customview/HistogramView;->setRateBackgroundColor(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    aget-object v5, v2, v12

    .line 298
    .line 299
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    aget-object v5, v2, v12

    .line 303
    .line 304
    invoke-virtual {v5, v4}, Lcom/join/mgps/customview/HistogramView;->setOrientation(I)V

    .line 305
    .line 306
    .line 307
    add-int/lit8 v12, v12, 0x1

    .line 308
    .line 309
    const-wide/16 v5, 0x0

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_6
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->noCommentLl:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->CommentAllListBeans:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f12031e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->noCommentLl:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->textTopRight:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->updateListFooter()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentBaseBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->noCommentLl:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->textTopRight:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->noCommentLl:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->textTopRight:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentBaseBeanList:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->dataSet:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 77
    .line 78
    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->pn:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentBaseBeanList:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->addViewItem(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-gtz p1, :cond_2

    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->updateListFooter()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

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

.method textTopRight()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mAdapter:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->g()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameType:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->bespeakSwitch:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->mySelf:Lcom/join/mgps/dto/CommentBaseBean;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->context:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameId:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->packageName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->bespeakSwitch:I

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->gameType:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->comment_all_list:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->isLoading:Z

    .line 13
    .line 14
    return-void
.end method
