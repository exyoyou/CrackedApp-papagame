.class public Lcom/join/mgps/activity/ForumSearchHintActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumSearchHintActivity$i;,
        Lcom/join/mgps/activity/ForumSearchHintActivity$j;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d027a
.end annotation


# instance fields
.field private adapter:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

.field allSearch:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field autoListView:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clearLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field failedMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

.field gridView:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private historyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field historyListView:Lcom/join/mgps/customview/NoScrollListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field img_iconback:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field img_search:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field indexBeens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;"
        }
    .end annotation
.end field

.field keyword:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field layout1:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout2:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout3:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout4:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout5:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout6:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;"
        }
    .end annotation
.end field

.field listViewRefreshListener:Lcom/join/mgps/customview/j;

.field private loadingPage:I

.field loading_view:Lcom/join/mgps/customview/LoadingImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lodingBackImage:Landroid/widget/ImageView;
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

.field private mAdapterOnClickListener:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

.field mHandler:Landroid/os/Handler;

.field netConnectExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field noHistory:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private pageCount:I

.field queryBeens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;"
        }
    .end annotation
.end field

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field searchEditText:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private searchHistoryAdapter:Lcom/join/mgps/adapter/c7;

.field private searchHistoryDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;"
        }
    .end annotation
.end field

.field search_list_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field setNetwork:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field setting:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field text1:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field text2:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field text3:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field text4:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field text5:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field text6:Lcom/join/mgps/customview/MarqueeTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textView2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private totalItemCount:I

.field tv1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv4:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv5:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv6:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field wrapGridView:Lcom/join/mgps/customview/WrapContentGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


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
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$a;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->mAdapterOnClickListener:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$f;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$f;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumSearchHintActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumSearchHintActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->saveRecordBean(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/ForumSearchHintActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->totalItemCount:I

    .line 2
    .line 3
    return p0
.end method

.method private saveRecordBean(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setCreate_time(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x64

    .line 45
    .line 46
    if-le v1, v2, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-wide/16 v2, 0xa

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v4, v0

    .line 63
    const-string v6, "create_time"

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-virtual/range {v1 .. v7}, Lq5/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lq5/b;->delete(Ljava/util/Collection;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, v1}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setName(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->setCreate_time(J)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method private setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->getKeyword()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    .line 26
    .line 27
    sget-object v2, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    .line 28
    .line 29
    new-instance v3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-direct {v3, v1, v4, v5}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-direct {v2, v1, v3, v4, v0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    .line 91
    .line 92
    sget-object v3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    .line 93
    .line 94
    invoke-direct {v0, v3, v2}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    new-instance v6, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    .line 103
    .line 104
    sget-object v7, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    .line 105
    .line 106
    new-instance v8, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getView()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getComment()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPraise()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    move-object v0, v8

    .line 125
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {v6, v7, v8}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private updateQuery(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "res",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->initViews()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->load()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method change_data()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchIndex()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method clearHistory()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->a()I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method clearLayout()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->clearHistory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method hideAllUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->allSearch:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->search_list_layout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method hideKeyboard()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "input_method"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method hidePullLoad()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method historyListView(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/ItemClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->saveRecordBean(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideKeyboard()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method img_iconback()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const-string v0, "input_method"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->isSearching()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method img_search()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideKeyboard()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->saveRecordBean(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchQuery(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method initViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$b;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$c;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$c;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->keyword:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->keyword:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->keyword:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/adapter/c7;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/c7;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryAdapter:Lcom/join/mgps/adapter/c7;

    .line 71
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 78
    .line 79
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->adapter:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->mAdapterOnClickListener:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->f(Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 94
    .line 95
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->adapter:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 108
    .line 109
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$d;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$d;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$e;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listViewRefreshListener:Lcom/join/mgps/customview/j;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->f()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hidePullLoad()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const/16 v1, 0x8

    .line 145
    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 150
    .line 151
    if-nez v0, :cond_1

    .line 152
    .line 153
    new-instance v0, Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 159
    .line 160
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->wrapGridView:Lcom/join/mgps/customview/WrapContentGridView;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method isSearching()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method load()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchHistory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchIndex()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x7f12031e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method loadSearchHistory()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lt6/s;->n()Lt6/s;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    const-wide/16 v4, 0xa

    .line 13
    .line 14
    const-string v6, "create_time"

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-virtual/range {v1 .. v7}, Lq5/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/join/mgps/db/tables/ForumSearchRecordTable;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/ForumSearchRecordTable;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-lez v1, :cond_1

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-ge v1, v2, :cond_1

    .line 72
    .line 73
    new-instance v2, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 74
    .line 75
    invoke-direct {v2}, Lcom/join/mgps/dto/SearchAutoDataBean;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, ""

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setCrc_sign_id(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setGame_name(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method loadSearchIndex()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    const-string v0, ""

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/i;->M(Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumSearchIndexData;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumSearchIndexData;->getRecommend()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->indexBeens:Ljava/util/List;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->indexBeens:Ljava/util/List;

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->serverConnectionException()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyUi()V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method loadSearchQuery(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyword",
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne p2, v2, :cond_2

    .line 23
    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    :cond_2
    const-string v7, ""

    .line 32
    .line 33
    iget v8, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->fid:I

    .line 34
    .line 35
    if-lez v8, :cond_3

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 38
    .line 39
    sget v5, Lcom/join/mgps/Util/r0;->d:I

    .line 40
    .line 41
    move v4, p2

    .line 42
    move-object v6, p1

    .line 43
    invoke-interface/range {v3 .. v8}, Lcom/join/mgps/rpc/i;->f0(IILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 49
    .line 50
    sget v4, Lcom/join/mgps/Util/r0;->d:I

    .line 51
    .line 52
    invoke-interface {v3, p2, v4, p1, v7}, Lcom/join/mgps/rpc/i;->P(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    const/4 v3, 0x0

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 67
    .line 68
    move-object p1, v3

    .line 69
    :goto_1
    if-eqz p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumSearchQueryData;->getRes()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_5
    if-eqz v3, :cond_6

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    iput p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    iput v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setXListNoMore()V

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-direct {p0, v3, p2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->updateQuery(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 95
    .line 96
    if-eq p1, v1, :cond_7

    .line 97
    .line 98
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 99
    .line 100
    :cond_7
    if-ne p2, v2, :cond_9

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_4

    .line 105
    :catch_0
    move-exception p1

    .line 106
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 110
    .line 111
    if-eq p1, v1, :cond_8

    .line 112
    .line 113
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 114
    .line 115
    :cond_8
    if-ne p2, v2, :cond_9

    .line 116
    .line 117
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showPullLoad()V

    .line 118
    .line 119
    .line 120
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :goto_4
    iget v3, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 125
    .line 126
    if-eq v3, v1, :cond_a

    .line 127
    .line 128
    iput v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 129
    .line 130
    :cond_a
    if-ne p2, v2, :cond_b

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showPullLoad()V

    .line 133
    .line 134
    .line 135
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_c
    const p1, 0x7f12031e

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 150
    .line 151
    .line 152
    :goto_5
    return-void
.end method

.method netWorkException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->netExcption:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method notifyDefaultUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->indexBeens:Ljava/util/List;

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->updateRecommand(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->search_list_layout:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->noHistory:Landroid/widget/TextView;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyListView:Lcom/join/mgps/customview/NoScrollListView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryAdapter:Lcom/join/mgps/adapter/c7;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->noHistory:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryAdapter:Lcom/join/mgps/adapter/c7;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/adapter/c7;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method notifySearchUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->adapter:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->listData:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->h(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->adapter:Lcom/join/mgps/adapter/ForumSearchHintAdapter;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method notifyUi()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->isSearching()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setSearchUiVisibility(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifySearchUi()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->notifyDefaultUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
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

    .line 1
    iput p4, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->totalItemCount:I

    .line 2
    .line 3
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

.method searchEditText(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "actionId",
            "keyEvent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/EditorAction;
    .end annotation

    .line 1
    const/4 p3, 0x6

    .line 2
    if-ne p2, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "input_method"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    const/4 p3, 0x1

    .line 18
    invoke-virtual {p1, p3, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->img_search()V

    .line 22
    .line 23
    .line 24
    return p3

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method serverConnectionException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->netConnectExcption:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method setSearchUiVisibility(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showNetworkFailedUi()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadingPage:I

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    iget p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->pageCount:I

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->queryBeens:Ljava/util/List;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showNoRecordUi()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showResultUi()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showDefaultUi()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method setViewVisibility(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visibility"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method setXListNoMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showDefaultUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->allSearch:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->search_list_layout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method showLoadingUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method showNetworkFailedUi()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->relodingimag:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v2, 0x7f080fbe

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->failedMessage:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setting:Landroid/widget/TextView;

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setNetwork:Landroid/widget/Button;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->lodingBackImage:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setNetwork:Landroid/widget/Button;

    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$g;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$g;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->relodingimag:Landroid/widget/ImageView;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/activity/ForumSearchHintActivity$h;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumSearchHintActivity$h;-><init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method showNoRecordUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->relodingimag:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v1, 0x7f080edb

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->failedMessage:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u5e16\u5b50"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setting:Landroid/widget/TextView;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->setNetwork:Landroid/widget/Button;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->lodingBackImage:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method showPullLoad()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showResultUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideAllUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
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

.method stopLoadMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->autoListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const-wide/16 v2, 0x7d0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method updateRecommand(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beans",
            "visible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->allSearch:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 24
    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->c()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->c()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumSearchHintActivity$i;->b(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->gridAdapter:Lcom/join/mgps/activity/ForumSearchHintActivity$i;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->allSearch:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->allSearch:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method updateUI()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->search_list_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->noHistory:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->historyListView:Lcom/join/mgps/customview/NoScrollListView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryAdapter:Lcom/join/mgps/adapter/c7;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchHistoryAdapter:Lcom/join/mgps/adapter/c7;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/adapter/c7;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
