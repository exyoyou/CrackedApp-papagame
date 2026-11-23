.class public Lcom/join/mgps/activity/GameCommentActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d03a2
.end annotation


# instance fields
.field CrcLinkTypeVal:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private adapter:Lcom/join/mgps/adapter/GameCommentAdapter;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_extension:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_praise:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_send:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field chat_layout_extension:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field chat_layout_extension_container:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field chat_layout_more:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private commitDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation
.end field

.field dialog:Lcom/join/mgps/dialog/f1;

.field edit_comment_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field footer_tip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field image_add:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field informationId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isEdit:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isLoading:Z

.field layout_forum_posts_main:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_forum_posts_title:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
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

.field mDialog:Lcom/join/mgps/customview/t;

.field main:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field matchListView:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field noMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private pn:I

.field private replyCommentId:Ljava/lang/String;

.field replyUserId:I

.field private replyUserName:Ljava/lang/String;

.field rpcClient:Lcom/join/mgps/rpc/e;

.field private uid:I

.field private vto:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->isLoading:Z

    .line 9
    .line 10
    new-instance v0, Lcom/join/mgps/activity/GameCommentActivity$a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameCommentActivity$a;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameCommentActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyCommentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/GameCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/GameCommentActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameCommentActivity;->isLoading:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/GameCommentActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 2
    .line 3
    return p1
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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


# virtual methods
.method addViewItem(Ljava/util/List;)V
    .locals 8
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
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->isTitle()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 24
    .line 25
    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 26
    .line 27
    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    .line 28
    .line 29
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 42
    .line 43
    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 44
    .line 45
    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    .line 46
    .line 47
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-lez v3, :cond_1

    .line 69
    .line 70
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 71
    .line 72
    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 73
    .line 74
    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v7, 0x1

    .line 81
    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method

.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLoding()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->getGameCommentList()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 48
    .line 49
    const-string v1, "\u8bc4\u8bba"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 55
    .line 56
    const-string v1, "\u8bc4\u8bba\u4e00\u4e0b\u5427"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->commitDataBeans:Ljava/util/List;

    .line 97
    .line 98
    new-instance v0, Lcom/join/mgps/activity/GameCommentActivity$b;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameCommentActivity$b;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 104
    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v4, "@"

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, "\uff1a"

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "input_method"

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 169
    .line 170
    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 171
    .line 172
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iput-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyCommentId:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_id()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    iput v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserId:I

    .line 194
    .line 195
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iput-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserName:Ljava/lang/String;

    .line 202
    .line 203
    :cond_1
    new-instance v2, Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 204
    .line 205
    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 206
    .line 207
    iget-object v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 208
    .line 209
    invoke-direct {v2, v3, v4, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GameCommentAdapter$j;)V

    .line 210
    .line 211
    .line 212
    iput-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->adapter:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 220
    .line 221
    const/16 v2, 0xa

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 232
    .line 233
    new-instance v1, Lcom/join/mgps/activity/GameCommentActivity$c;

    .line 234
    .line 235
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameCommentActivity$c;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 242
    .line 243
    new-instance v1, Lcom/join/mgps/activity/GameCommentActivity$d;

    .line 244
    .line 245
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameCommentActivity$d;-><init>(Lcom/join/mgps/activity/GameCommentActivity;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method back_image()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
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
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method btn_chat_send()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

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
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/high16 v1, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "\u4e0d\u80fd\u53d1\u8868\u7a7a\u5b57\u7b26\u4e32"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x4

    .line 64
    if-ge v2, v3, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "\u53d1\u8868\u8bc4\u8bba\u4e0d\u80fd\u5c0f\u4e8e4\u4e2a"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string v2, "input_method"

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x2

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 109
    .line 110
    const-string v3, ""

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->postGameCommentRelpy(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    return-void
.end method

.method dismissLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getGameCommentList()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->isLoading:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->getGameCommentRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->a1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBack;->getHot()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBack;->getAll()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-lez v5, :cond_0

    .line 55
    .line 56
    new-instance v5, Lcom/join/mgps/dto/InformationCommentBean;

    .line 57
    .line 58
    invoke-direct {v5}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setIs_hot(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setTitle(Z)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    :cond_0
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-lez v3, :cond_2

    .line 80
    .line 81
    iget v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 82
    .line 83
    if-ne v3, v0, :cond_1

    .line 84
    .line 85
    new-instance v3, Lcom/join/mgps/dto/InformationCommentBean;

    .line 86
    .line 87
    invoke-direct {v3}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/InformationCommentBean;->setIs_hot(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setTitle(Z)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameCommentActivity;->showMain(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->updateListFooter()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingFailed()V

    .line 117
    .line 118
    .line 119
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->isLoading:Z

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->updateListFooter()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingFailed()V

    .line 126
    .line 127
    .line 128
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->isLoading:Z

    .line 129
    .line 130
    throw v0

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->updateListFooter()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingFailed()V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void
.end method

.method public getGameCommentRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    iget v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 32
    .line 33
    iget-object v5, p0, Lcom/join/mgps/activity/GameCommentActivity;->CrcLinkTypeVal:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    const/4 v6, 0x2

    .line 37
    filled-new-array {v0, v6}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameCommentListRequestBean(IIILjava/lang/String;[I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method mg_loading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->getGameCommentList()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method onPraiseFail(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->updateAdapter(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method postGameComment(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8bc4\u8bba\u5931\u8d25"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingDialog()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameCommentActivity;->postGameCommentBean(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    return-void
.end method

.method public postGameCommentBean(Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    const-wide/16 v1, 0x7d0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/q;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/GameCommentActivity;->CrcLinkTypeVal:Ljava/lang/String;

    .line 25
    .line 26
    iget v4, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->V1()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    move-object v10, p2

    .line 45
    invoke-virtual/range {v2 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->postGameCommentRequestBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method postGameCommentRelpy(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8bc4\u8bba\u5931\u8d25"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLodingDialog()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameCommentActivity;->postGameCommentRelpyRequestBean(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/join/mgps/activity/GameCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->x0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/16 v1, 0x2c2

    .line 45
    .line 46
    if-ne p2, v1, :cond_1

    .line 47
    .line 48
    const p1, 0x7f1204ed

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    const/16 v1, 0x326

    .line 74
    .line 75
    if-ne p2, v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const/4 v1, 0x1

    .line 89
    if-ne p2, v1, :cond_3

    .line 90
    .line 91
    const-string p2, "\u8bc4\u8bba\u6210\u529f"

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->sendSuccess()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/join/mgps/dto/CommitContextDataBean;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommitContextDataBean;->getIs_reward()Lcom/join/mgps/dto/RewardBean;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->toastData(Lcom/join/mgps/dto/RewardBean;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "\u5f02\u5e38"

    .line 137
    .line 138
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->dismissLodingDialog()V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_5
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void
.end method

.method public postGameCommentRelpyRequestBean(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "message"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Ljava/util/Random;

    .line 3
    .line 4
    const-wide/16 v2, 0x7d0

    .line 5
    .line 6
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/q;->q()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-object v2, v0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, v0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 26
    .line 27
    iget-object v5, v0, Lcom/join/mgps/activity/GameCommentActivity;->CrcLinkTypeVal:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->V1()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    iget-object v12, v0, Lcom/join/mgps/activity/GameCommentActivity;->replyCommentId:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v13, v0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserName:Ljava/lang/String;

    .line 48
    .line 49
    iget v14, v0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserId:I

    .line 50
    .line 51
    move-object/from16 v11, p2

    .line 52
    .line 53
    invoke-virtual/range {v3 .. v14}, Lcom/join/mgps/Util/RequestBeanUtil;->postGameCommentRelpyRequestBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    return-object v1
.end method

.method postPraised(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u70b9\u8d5e\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameCommentActivity;->postPraisedBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/e;->b(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne v2, v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    const-string v4, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 58
    .line 59
    if-lez v2, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/join/mgps/dto/PariseBackData;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    add-int/lit8 v2, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, ""

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->updateAdapter(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->onPraiseFail(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_1
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->onPraiseFail(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void
.end method

.method public postPraisedBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->uid:I

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/GameCommentActivity;->CrcLinkTypeVal:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->postPraisedRequestBean(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method refreshViewItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->commitDataBeans:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->addViewItem(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->getGameCommentList()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method sendSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 2
    .line 3
    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "0"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyCommentId:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserId:I

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->replyUserName:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameCommentActivity;->getGameCommentList()V

    .line 28
    .line 29
    .line 30
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

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

.method showLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->commitDataBeans:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->noMessage:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->commitDataBeans:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->dataSet:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    iput v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->pn:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->commitDataBeans:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameCommentActivity;->addViewItem(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/16 v0, 0xa

    .line 67
    .line 68
    if-ge p1, v0, :cond_1

    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->adapter:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->notifyDataSetChanged()V

    .line 78
    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->isEdit:Z

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameCommentActivity;->isEdit:Z

    .line 85
    .line 86
    new-instance p1, Landroid/os/Message;

    .line 87
    .line 88
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x3

    .line 92
    iput v0, p1, Landroid/os/Message;->what:I

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->handler:Landroid/os/Handler;

    .line 95
    .line 96
    const-wide/16 v1, 0x12c

    .line 97
    .line 98
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    .line 100
    .line 101
    :cond_2
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

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

.method toastData(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rewardBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method updateAdapter(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->commitDataBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity;->adapter:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method validAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameCommentActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    return v0
.end method
