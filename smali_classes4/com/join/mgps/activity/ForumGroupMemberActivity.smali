.class public Lcom/join/mgps/activity/ForumGroupMemberActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06a0
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field helper:Lcom/join/android/app/component/video/c;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field listView:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private listViewRefreshListener:Lcom/join/mgps/customview/j;

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$GroupMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private me:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

.field public pageCount:I

.field public pageLoading:I

.field rpcForumClient:Lcom/join/mgps/rpc/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const-string v0, "ForumGroupMemberActivity"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private initListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$a;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/activity/ForumGroupMemberActivity$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$b;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listViewRefreshListener:Lcom/join/mgps/customview/j;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 45
    .line 46
    new-instance v1, Lcom/join/mgps/activity/ForumGroupMemberActivity$c;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$c;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I0(Lcom/join/mgps/adapter/ForumBaseAdapter$t0;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->listView:Lcom/join/mgps/customview/XListView2;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private initViews()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->initListView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setListUi()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 16
    .line 17
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 18
    .line 19
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;

    .line 20
    .line 21
    const-string v4, "\u7ec4\u5458\u4eec"

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 32
    .line 33
    .line 34
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v3, v4, :cond_2

    .line 50
    .line 51
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 58
    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    const/4 v12, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v12, 0x0

    .line 89
    :goto_1
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 90
    .line 91
    sget-object v15, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 92
    .line 93
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getAvatar_src()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getNickname()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getGrade()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getJoin_time()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    const/4 v13, 0x0

    .line 113
    iget v6, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->gid:I

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    move/from16 v16, v6

    .line 124
    .line 125
    move-object v6, v14

    .line 126
    move-object v2, v14

    .line 127
    move/from16 v14, v16

    .line 128
    .line 129
    move-object/from16 v16, v1

    .line 130
    .line 131
    move-object v1, v15

    .line 132
    move v15, v4

    .line 133
    invoke-direct/range {v6 .. v15}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZII)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 140
    .line 141
    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    move-object/from16 v1, v16

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    :goto_2
    return-void
.end method

.method private setManagersUi()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 16
    .line 17
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 18
    .line 19
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;

    .line 20
    .line 21
    const-string v4, "\u7ba1\u7406\u4eec"

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 32
    .line 33
    .line 34
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v3, v4, :cond_2

    .line 50
    .line 51
    iget-object v4, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 58
    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    const/4 v12, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v12, 0x0

    .line 89
    :goto_1
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 90
    .line 91
    sget-object v15, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 92
    .line 93
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getAvatar_src()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getNickname()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const/4 v9, 0x1

    .line 104
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getGrade()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getJoin_time()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    const/4 v13, 0x0

    .line 113
    iget v6, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->gid:I

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->getUid()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    move/from16 v16, v6

    .line 124
    .line 125
    move-object v6, v14

    .line 126
    move-object v2, v14

    .line 127
    move/from16 v14, v16

    .line 128
    .line 129
    move-object/from16 v16, v1

    .line 130
    .line 131
    move-object v1, v15

    .line 132
    move v15, v4

    .line 133
    invoke-direct/range {v6 .. v15}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZII)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 140
    .line 141
    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    move-object/from16 v1, v16

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    :goto_2
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
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->forum_title_center:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->forum_title_center:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "\u5c0f\u7ec4\u6210\u5458"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->initViews()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loading()V

    .line 37
    .line 38
    .line 39
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

.method changeJoinState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isJoined"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->me:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->setIs_joined(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/activity/ForumGroupMemberActivity$f;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity$f;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/ForumGroupMemberActivity$e;

    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$e;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 75
    .line 76
    new-instance v0, Lcom/join/mgps/activity/ForumGroupMemberActivity$g;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity$g;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method exitGroup(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
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
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 24
    .line 25
    invoke-interface {v2, p1, v0, v1}, Lcom/join/mgps/rpc/i;->O(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeJoinState(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->T(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const p1, 0x7f120118

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const p1, 0x7f12031e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->T(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method getGroupFans(I)V
    .locals 8
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
    if-eqz v0, :cond_e

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    :try_start_0
    iget v4, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 12
    .line 13
    if-eq v4, v3, :cond_9

    .line 14
    .line 15
    if-ne v4, p1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 38
    .line 39
    iget v7, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->gid:I

    .line 40
    .line 41
    invoke-interface {v6, v7, p1, v4, v5}, Lcom/join/mgps/rpc/i;->z(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_8

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 63
    .line 64
    if-eq p1, v3, :cond_1

    .line 65
    .line 66
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/join/mgps/dto/ForumData$GroupFans;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_7

    .line 93
    .line 94
    :cond_3
    if-ne p1, v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getManagers()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v5, :cond_5

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    :cond_4
    if-le p1, v1, :cond_7

    .line 113
    .line 114
    :cond_5
    iput v3, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 115
    .line 116
    const/16 v4, 0xa

    .line 117
    .line 118
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 122
    .line 123
    if-eq p1, v3, :cond_6

    .line 124
    .line 125
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 126
    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->showGroupFans(ILcom/join/mgps/dto/ForumData$GroupFans;)V

    .line 132
    .line 133
    .line 134
    iput p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageCount:I

    .line 135
    .line 136
    const/4 v4, 0x2

    .line 137
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .line 139
    .line 140
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 141
    .line 142
    if-eq p1, v3, :cond_c

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    :goto_0
    if-eq v4, v3, :cond_a

    .line 146
    .line 147
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 148
    .line 149
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    goto :goto_2

    .line 155
    :catch_0
    move-exception v4

    .line 156
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 160
    .line 161
    .line 162
    if-ne p1, v1, :cond_b

    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 167
    .line 168
    .line 169
    :cond_b
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .line 171
    .line 172
    iget p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 173
    .line 174
    if-eq p1, v3, :cond_c

    .line 175
    .line 176
    :goto_1
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 177
    .line 178
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :goto_2
    iget v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 183
    .line 184
    if-eq v0, v3, :cond_d

    .line 185
    .line 186
    iput v2, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->pageLoading:I

    .line 187
    .line 188
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_e
    const p1, 0x7f12031e

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->T(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const/16 p1, 0x9

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V

    .line 205
    .line 206
    .line 207
    :goto_3
    return-void
.end method

.method isNetWorkConnected()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f12031e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->T(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x9

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->stopXlistRefreshAndLoadMore()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0
.end method

.method loading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->getGroupFans(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method declared-synchronized notifyDataSetChanged()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->setManagersUi()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->setListUi()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method onPayGameSuccess(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lt6/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->adapter:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method showGroupFans(ILcom/join/mgps/dto/ForumData$GroupFans;)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x1

    .line 27
    if-ne p1, v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getMe()Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->me:Lcom/join/mgps/dto/ForumData$GroupMemberBean;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getManagers()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->managers:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getManagers()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->list:Ljava/util/List;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$GroupFans;->getList()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumGroupMemberActivity$d;-><init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x5dc

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
