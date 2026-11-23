.class public Lcom/join/mgps/activity/CollectionCommentActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d03a2
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private adapter:Lcom/join/mgps/adapter/InformationAdapter;

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

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/InformationAdapter$n;",
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

.field private informationComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field informationId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isFirst:Z

.field private isLoding:Z

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

.field private radomInt:I

.field rpcClient:Lcom/join/mgps/rpc/e;

.field private vto:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isLoding:Z

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/CollectionCommentActivity$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionCommentActivity$a;-><init>(Lcom/join/mgps/activity/CollectionCommentActivity;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isFirst:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CollectionCommentActivity;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/CollectionCommentActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/CollectionCommentActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isLoding:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/CollectionCommentActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

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

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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
.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showLoding()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->getInformationData()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v1, "\u8bc4\u8bba"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 47
    .line 48
    const-string v1, "\u8bc4\u8bba\u4e00\u4e0b\u5427"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 60
    .line 61
    const/16 v2, 0x8

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dataSet:Ljava/util/List;

    .line 89
    .line 90
    new-instance v0, Lcom/join/mgps/activity/CollectionCommentActivity$b;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionCommentActivity$b;-><init>(Lcom/join/mgps/activity/CollectionCommentActivity;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/join/mgps/adapter/InformationAdapter;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->handler:Landroid/os/Handler;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dataSet:Ljava/util/List;

    .line 102
    .line 103
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->adapter:Lcom/join/mgps/adapter/InformationAdapter;

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/InformationAdapter;->m(Lcom/join/mgps/adapter/InformationAdapter$l;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->adapter:Lcom/join/mgps/adapter/InformationAdapter;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 119
    .line 120
    const/4 v2, 0x5

    .line 121
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 130
    .line 131
    new-instance v1, Lcom/join/mgps/activity/CollectionCommentActivity$c;

    .line 132
    .line 133
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionCommentActivity$c;-><init>(Lcom/join/mgps/activity/CollectionCommentActivity;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 140
    .line 141
    new-instance v1, Lcom/join/mgps/activity/CollectionCommentActivity$d;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionCommentActivity$d;-><init>(Lcom/join/mgps/activity/CollectionCommentActivity;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Ljava/util/Random;

    .line 150
    .line 151
    const-wide/16 v1, 0x7d0

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->radomInt:I

    .line 161
    .line 162
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

.method btn_chat_send()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 109
    .line 110
    const-string v3, ""

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionCommentActivity;->sendMessage(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getInformationData()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isLoding:Z

    .line 10
    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isLoding:Z

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    new-instance v3, Lcom/join/mgps/dto/CollectionCommentRequest;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/join/mgps/dto/CollectionCommentRequest;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    filled-new-array {v0, v4}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CollectionCommentRequest;->setComment_type([I)V

    .line 33
    .line 34
    .line 35
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CollectionCommentRequest;->setCollection_id(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v5, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CollectionCommentRequest;->setPn(I)V

    .line 43
    .line 44
    .line 45
    const/16 v5, 0x14

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CollectionCommentRequest;->setPc(I)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CollectionCommentRequest;->setUid(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameInformationComment(Lcom/join/mgps/dto/CollectionCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 70
    .line 71
    invoke-interface {v5, v3}, Lcom/join/mgps/rpc/e;->r0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/join/mgps/dto/InformationCommentBack;

    .line 84
    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBack;->getHot()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBack;->getAll()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v5, :cond_1

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-lez v6, :cond_1

    .line 102
    .line 103
    new-instance v6, Lcom/join/mgps/dto/InformationCommentBean;

    .line 104
    .line 105
    invoke-direct {v6}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setIs_hot(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setTitle(Z)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    :cond_1
    if-eqz v3, :cond_3

    .line 121
    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-lez v5, :cond_3

    .line 127
    .line 128
    iget v5, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 129
    .line 130
    if-ne v5, v0, :cond_2

    .line 131
    .line 132
    new-instance v5, Lcom/join/mgps/dto/InformationCommentBean;

    .line 133
    .line 134
    invoke-direct {v5}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/InformationCommentBean;->setIs_hot(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setTitle(Z)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-lez v3, :cond_5

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_4

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->noMore()V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    iget v3, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 166
    .line 167
    add-int/2addr v3, v0

    .line 168
    iput v3, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 169
    .line 170
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMain(Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->updateListFooter()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    iget v3, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 178
    .line 179
    if-ne v3, v0, :cond_6

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMain(Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->updateListFooter()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->noMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    goto :goto_2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->updateListFooter()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    .line 203
    :goto_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isLoding:Z

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isLoding:Z

    .line 207
    .line 208
    throw v0

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->updateListFooter()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showLodingFailed()V

    .line 213
    .line 214
    .line 215
    :goto_3
    return-void
.end method

.method mg_loading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->getInformationData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    return-void
.end method

.method refreshAdapter()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dataSet:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->isTitle()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    new-instance v3, Lcom/join/mgps/adapter/InformationAdapter$n;

    .line 36
    .line 37
    sget-object v4, Lcom/join/mgps/adapter/InformationAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/InformationAdapter$ViewType;

    .line 38
    .line 39
    new-instance v5, Lcom/join/mgps/adapter/InformationAdapter$n$a;

    .line 40
    .line 41
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/InformationAdapter$n$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapter$n;-><init>(Lcom/join/mgps/adapter/InformationAdapter$ViewType;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dataSet:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v3, Lcom/join/mgps/adapter/InformationAdapter$n;

    .line 54
    .line 55
    sget-object v4, Lcom/join/mgps/adapter/InformationAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/InformationAdapter$ViewType;

    .line 56
    .line 57
    new-instance v5, Lcom/join/mgps/adapter/InformationAdapter$n$a;

    .line 58
    .line 59
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/InformationAdapter$n$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapter$n;-><init>(Lcom/join/mgps/adapter/InformationAdapter$ViewType;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dataSet:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-lez v3, :cond_2

    .line 81
    .line 82
    new-instance v3, Lcom/join/mgps/adapter/InformationAdapter$n;

    .line 83
    .line 84
    sget-object v4, Lcom/join/mgps/adapter/InformationAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/InformationAdapter$ViewType;

    .line 85
    .line 86
    new-instance v5, Lcom/join/mgps/adapter/InformationAdapter$n$b;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const/4 v7, 0x1

    .line 93
    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/InformationAdapter$n$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapter$n;-><init>(Lcom/join/mgps/adapter/InformationAdapter$ViewType;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dataSet:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->adapter:Lcom/join/mgps/adapter/InformationAdapter;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/adapter/InformationAdapter;->notifyDataSetChanged()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->getInformationData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method sendMessage(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)V
    .locals 3
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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showLodingDialog()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/dto/InformationSendRequestBean;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/join/mgps/dto/InformationSendRequestBean;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/InformationSendRequestBean;->setCollection_id(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/InformationSendRequestBean;->setType(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/InformationSendRequestBean;->setUid(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/InformationSendRequestBean;->setContent(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/InformationSendRequestBean;->setHead_portrait(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setUser_name(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->radomInt:I

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setRandom_num(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->V1()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setIp_address(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/q;->q()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setMobile_phone_model(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setIs_anonymous(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setReply_comment_id(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setReply_comment_user_name(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_id()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationSendRequestBean;->setReply_comment_user_id(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->sendInformationComment(Lcom/join/mgps/dto/InformationSendRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 130
    .line 131
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->j0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_2

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    const/16 v1, 0x2c2

    .line 142
    .line 143
    if-ne p2, v1, :cond_2

    .line 144
    .line 145
    const p1, 0x7f1204ed

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->dismissLodingDialog()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    const/16 v1, 0x326

    .line 171
    .line 172
    if-ne p2, v1, :cond_3

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    const/4 v1, 0x1

    .line 186
    if-ne p2, v1, :cond_4

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->sendSuccess()V

    .line 189
    .line 190
    .line 191
    const-string p2, "\u8bc4\u8bba\u6210\u529f"

    .line 192
    .line 193
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lcom/join/mgps/dto/InformationSendBack;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationSendBack;->getIs_reward()Lcom/join/mgps/dto/RewardBean;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->toastData(Lcom/join/mgps/dto/RewardBean;)V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :catchall_0
    move-exception p1

    .line 219
    goto :goto_1

    .line 220
    :catch_0
    move-exception p1

    .line 221
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->dismissLodingDialog()V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->dismissLodingDialog()V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_5
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 236
    .line 237
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_2
    return-void
.end method

.method sendParesed(Lcom/join/mgps/dto/InformationCommentBean;)V
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
    if-eqz v1, :cond_5

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
    new-instance v1, Lcom/join/mgps/dto/PariseRequest;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/join/mgps/dto/PariseRequest;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getCollection_id()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PariseRequest;->setCollection_id(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PariseRequest;->setComment_id(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PariseRequest;->setUid(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameInformationParis(Lcom/join/mgps/dto/PariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 57
    .line 58
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/e;->i0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/16 v3, 0x2c2

    .line 69
    .line 70
    if-ne v2, v3, :cond_1

    .line 71
    .line 72
    const-string p1, "\u5b8c\u5584\u8d44\u6599\u540e\u5c31\u53ef\u70b9\u8d5e\u54e6"

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v3, 0x1

    .line 92
    if-ne v2, v3, :cond_4

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    const-string v4, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 109
    .line 110
    if-lez v2, :cond_3

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/join/mgps/dto/PariseBackData;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    add-int/2addr v2, v3

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, ""

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->updateAdapter(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/CollectionCommentActivity;->showToast(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/CollectionCommentActivity;->showToast(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showToast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_1
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->showToast(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionCommentActivity;->showToast(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_1
    return-void
.end method

.method sendSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 2
    .line 3
    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->getInformationData()V

    .line 20
    .line 21
    .line 22
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "informations"
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
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->noMessage:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->refreshAdapter()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isFirst:Z

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->isFirst:Z

    .line 60
    .line 61
    new-instance p1, Landroid/os/Message;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x3

    .line 67
    iput v0, p1, Landroid/os/Message;->what:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->handler:Landroid/os/Handler;

    .line 70
    .line 71
    const-wide/16 v1, 0x12c

    .line 72
    .line 73
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getCollection_id()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v1, "@"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBean;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ":"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_0
    return-void

    .line 123
    :cond_4
    :goto_1
    iget p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->pn:I

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    if-ne p1, v2, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->noMessage:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :cond_5
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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

.method showToast(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->informationComments:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionCommentActivity;->refreshAdapter()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/CollectionCommentActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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
