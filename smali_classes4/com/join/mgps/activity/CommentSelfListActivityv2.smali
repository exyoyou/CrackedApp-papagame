.class public Lcom/join/mgps/activity/CommentSelfListActivityv2;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0037
.end annotation


# instance fields
.field actionbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentSelfListBean;",
            ">;"
        }
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private listViewRefreshListener:Lcom/join/mgps/customview/j;

.field listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mDialog:Lcom/join/mgps/customview/t;

.field mHandler:Landroid/os/Handler;

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public pageCount:I

.field public pageLoading:I

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->mDialog:Lcom/join/mgps/customview/t;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CommentSelfListActivityv2;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->mDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->forum_title_center:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->forum_title_center:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "\u6211\u7684\u70b9\u8bc4"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->listview:Lcom/join/mgps/customview/XListView2;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget v2, Lcom/join/mgps/Util/r0;->e:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->listview:Lcom/join/mgps/customview/XListView2;

    .line 31
    .line 32
    new-instance v2, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2$b;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$b;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->listViewRefreshListener:Lcom/join/mgps/customview/j;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->listview:Lcom/join/mgps/customview/XListView2;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 58
    .line 59
    new-instance v2, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$c;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->o(Lcom/join/mgps/adapter/CommentSelfListAdapter$j;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->listview:Lcom/join/mgps/customview/XListView2;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->listview:Lcom/join/mgps/customview/XListView2;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private setPostsView(Lcom/join/mgps/dto/CommentSelfListBean;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "hideDivider"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    new-instance v15, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    .line 36
    .line 37
    sget-object v13, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_HEADER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 38
    .line 39
    new-instance v11, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getComment_score_switch()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getAdd_times()J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getStars_score()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-double v4, v2

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_old()I

    .line 87
    .line 88
    .line 89
    move-result v16

    .line 90
    move-object v2, v11

    .line 91
    move/from16 v3, p2

    .line 92
    .line 93
    move-wide/from16 v17, v4

    .line 94
    .line 95
    move v4, v1

    .line 96
    move-object v5, v14

    .line 97
    move-object/from16 v19, v14

    .line 98
    .line 99
    move-object v14, v11

    .line 100
    move-wide/from16 v11, v17

    .line 101
    .line 102
    move/from16 v17, v1

    .line 103
    .line 104
    move-object v1, v13

    .line 105
    move/from16 v13, v16

    .line 106
    .line 107
    invoke-direct/range {v2 .. v13}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDI)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v15, v1, v14}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 114
    .line 115
    invoke-virtual {v1, v15}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    .line 119
    .line 120
    sget-object v8, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_CONTENT:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 121
    .line 122
    new-instance v9, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getContent()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_old()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getComment_score_switch()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    move-object v2, v9

    .line 149
    move/from16 v3, v17

    .line 150
    .line 151
    move-object/from16 v4, v19

    .line 152
    .line 153
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v8, v9}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    .line 165
    .line 166
    sget-object v12, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_FOOTER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 167
    .line 168
    new-instance v13, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;

    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getPraise_count()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getDespise_count()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getReply_count()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_praise()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_despise()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_old()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentSelfListBean;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getComment_score_switch()I

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    move-object v2, v13

    .line 227
    invoke-direct/range {v2 .. v11}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;-><init>(ILjava/lang/String;IIIIIII)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v12, v13}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V

    .line 236
    .line 237
    .line 238
    :cond_1
    :goto_0
    return-void
.end method

.method private setPostsViews()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/join/mgps/dto/CommentSelfListBean;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->setPostsView(Lcom/join/mgps/dto/CommentSelfListBean;Z)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
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

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->rpcForumClient:Lcom/join/mgps/rpc/f;

    .line 6
    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->initViews()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
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

.method changeLoadingState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 25
    .line 26
    const-string v1, "\u6ca1\u6709\u66f4\u591a\u70b9\u8bc4\u54e6~"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$g;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$g;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 53
    .line 54
    const/16 v0, 0x8

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 65
    .line 66
    const v0, 0x7f080edb

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;

    .line 81
    .line 82
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$f;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 95
    .line 96
    const-string v1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 102
    .line 103
    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$h;

    .line 104
    .line 105
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$h;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 123
    .line 124
    new-instance v0, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;

    .line 125
    .line 126
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2$e;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 152
    .line 153
    .line 154
    :goto_0
    return-void
.end method

.method depraisePosts(ILjava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "gameId",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u70b9\u8e29\u5931\u8d25"

    .line 2
    .line 3
    const-string v1, "\u53d6\u6d88\u70b9\u8e29\u5931\u8d25"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    move-object v6, v3

    .line 44
    check-cast v6, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move v8, p1

    .line 59
    move-object v9, p2

    .line 60
    move v10, p3

    .line 61
    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->rpcForumClient:Lcom/join/mgps/rpc/f;

    .line 66
    .line 67
    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/f;->c(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-ne p3, v2, :cond_3

    .line 99
    .line 100
    move-object v3, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move-object v3, v1

    .line 103
    :goto_0
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->refreshDePraiseChanged(ILjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    if-ne p3, v2, :cond_6

    .line 129
    .line 130
    const-string v3, "\u70b9\u8e29\u6210\u529f"

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const-string v3, "\u53d6\u6d88\u70b9\u8e29\u6210\u529f"

    .line 134
    .line 135
    :goto_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    const/16 v3, 0x2c2

    .line 139
    .line 140
    if-ne v4, v3, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catch_0
    move-exception v3

    .line 147
    if-ne p3, v2, :cond_7

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move-object v0, v1

    .line 151
    :goto_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->refreshDePraiseChanged(ILjava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :cond_8
    return-void
.end method

.method getHomepageRecommendLabel(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
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
    if-eqz v0, :cond_10

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    :try_start_0
    iget v3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-ne v3, v2, :cond_1

    .line 13
    .line 14
    if-eq v3, v2, :cond_0

    .line 15
    .line 16
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-ne v3, p1, :cond_3

    .line 23
    .line 24
    if-eq v3, v2, :cond_2

    .line 25
    .line 26
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, ""

    .line 43
    .line 44
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    :cond_4
    move-object v6, v4

    .line 67
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    sget v8, Lcom/join/mgps/Util/r0;->d:I

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    move v7, p1

    .line 82
    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/Util/RequestBeanUtil;->selfComment(ILjava/lang/String;III)Lcom/join/mgps/dto/CommentSelfRequestBean;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->rpcForumClient:Lcom/join/mgps/rpc/f;

    .line 87
    .line 88
    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/f;->k(Lcom/join/mgps/dto/CommentSelfRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_a

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_a

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-nez v4, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 110
    .line 111
    if-eq p1, v2, :cond_5

    .line 112
    .line 113
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 114
    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/join/mgps/dto/CommentListForSelfBean;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentListForSelfBean;->getList()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-eqz v3, :cond_8

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_7

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showHomepageRecommendLabel(ILjava/util/List;)V

    .line 139
    .line 140
    .line 141
    iput p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageCount:I

    .line 142
    .line 143
    const/4 v3, 0x2

    .line 144
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 148
    .line 149
    if-eq p1, v2, :cond_e

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    :goto_0
    :try_start_3
    iput v2, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 153
    .line 154
    const/16 v3, 0xa

    .line 155
    .line 156
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    .line 158
    .line 159
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 160
    .line 161
    if-eq p1, v2, :cond_9

    .line 162
    .line 163
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 164
    .line 165
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    if-eqz v3, :cond_b

    .line 170
    .line 171
    :try_start_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_b

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    .line 190
    .line 191
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 192
    .line 193
    if-eq p1, v2, :cond_c

    .line 194
    .line 195
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 196
    .line 197
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception p1

    .line 202
    goto :goto_2

    .line 203
    :catch_0
    move-exception v3

    .line 204
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 208
    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    if-ne p1, v3, :cond_d

    .line 212
    .line 213
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eq p1, v0, :cond_d

    .line 220
    .line 221
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    .line 228
    .line 229
    iget p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 230
    .line 231
    if-eq p1, v2, :cond_e

    .line 232
    .line 233
    :goto_1
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 234
    .line 235
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :goto_2
    iget v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 240
    .line 241
    if-eq v0, v2, :cond_f

    .line 242
    .line 243
    iput v1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->pageLoading:I

    .line 244
    .line 245
    :cond_f
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :cond_10
    const p1, 0x7f12031e

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/16 p1, 0x9

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V

    .line 262
    .line 263
    .line 264
    :goto_3
    return-void
.end method

.method isNetWorkConnected()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f12031e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->stopXlistRefreshAndLoadMore()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0
.end method

.method loading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->getHomepageRecommendLabel(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method notifyDataChanged()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->k()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->setPostsViews()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->adapter:Lcom/join/mgps/adapter/CommentSelfListAdapter;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->changeLoadingState(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    return-void
.end method

.method praisePosts(ILjava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "gameId",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u70b9\u8d5e\u5931\u8d25"

    .line 2
    .line 3
    const-string v1, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    move-object v6, v3

    .line 44
    check-cast v6, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move v8, p1

    .line 59
    move-object v9, p2

    .line 60
    move v10, p3

    .line 61
    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->rpcForumClient:Lcom/join/mgps/rpc/f;

    .line 66
    .line 67
    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/f;->j(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-ne p3, v2, :cond_3

    .line 99
    .line 100
    move-object v3, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move-object v3, v1

    .line 103
    :goto_0
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->refreshPraiseChanged(ILjava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    if-ne p3, v2, :cond_6

    .line 129
    .line 130
    const-string v3, "\u70b9\u8d5e\u6210\u529f"

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const-string v3, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 134
    .line 135
    :goto_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    const/16 v3, 0x2c2

    .line 139
    .line 140
    if-ne v4, v3, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catch_0
    move-exception v3

    .line 147
    if-ne p3, v2, :cond_7

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move-object v0, v1

    .line 151
    :goto_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->T(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->refreshPraiseChanged(ILjava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :cond_8
    return-void
.end method

.method refreshDePraiseChanged(ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "gameId",
            "type"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p3, :cond_9

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_9

    .line 10
    .line 11
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_9

    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/CommentSelfListBean;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v1, p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_despise()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getDespise_count()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const/4 p3, 0x1

    .line 93
    if-ne p1, p3, :cond_2

    .line 94
    .line 95
    add-int/lit8 p2, p2, -0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    add-int/2addr p2, p3

    .line 99
    :goto_0
    const/4 v1, 0x0

    .line 100
    if-gez p2, :cond_3

    .line 101
    .line 102
    const/4 p2, 0x0

    .line 103
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-ne p1, p3, :cond_4

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/4 v3, 0x1

    .line 112
    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_despise(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setDespise_count(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_praise()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eq p1, p3, :cond_8

    .line 131
    .line 132
    if-ne p2, p3, :cond_8

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getPraise_count()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-ne p2, p3, :cond_5

    .line 143
    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    add-int/2addr p1, p3

    .line 148
    :goto_2
    if-gez p1, :cond_6

    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-ne p2, p3, :cond_7

    .line 156
    .line 157
    const/4 p3, 0x0

    .line 158
    :cond_7
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_praise(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setPraise_count(I)V

    .line 166
    .line 167
    .line 168
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->notifyDataChanged()V

    .line 169
    .line 170
    .line 171
    :cond_9
    return-void
.end method

.method refreshPraiseChanged(ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "gameId",
            "type"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p3, :cond_9

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_9

    .line 10
    .line 11
    iget-object p3, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_9

    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/CommentSelfListBean;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v1, p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getGame_id()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_praise()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getPraise_count()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const/4 p3, 0x1

    .line 93
    if-ne p1, p3, :cond_2

    .line 94
    .line 95
    add-int/lit8 p2, p2, -0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    add-int/2addr p2, p3

    .line 99
    :goto_0
    const/4 v1, 0x0

    .line 100
    if-gez p2, :cond_3

    .line 101
    .line 102
    const/4 p2, 0x0

    .line 103
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-ne p1, p3, :cond_4

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/4 v3, 0x1

    .line 112
    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_praise(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setPraise_count(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getIs_despise()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eq p1, p3, :cond_8

    .line 131
    .line 132
    if-ne p2, p3, :cond_8

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->getDespise_count()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-ne p2, p3, :cond_5

    .line 143
    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    add-int/2addr p1, p3

    .line 148
    :goto_2
    if-gez p1, :cond_6

    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-ne p2, p3, :cond_7

    .line 156
    .line 157
    const/4 p3, 0x0

    .line 158
    :cond_7
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setIs_despise(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentSelfListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;->setDespise_count(I)V

    .line 166
    .line 167
    .line 168
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->notifyDataChanged()V

    .line 169
    .line 170
    .line 171
    :cond_9
    return-void
.end method

.method showDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showHomepageRecommendLabel(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "page",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentSelfListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->dataSet:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->notifyDataChanged()V

    .line 17
    .line 18
    .line 19
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

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/CommentSelfListActivityv2$d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2$d;-><init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x64

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method validAccount()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    return v0
.end method
