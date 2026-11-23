.class public Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d007e
.end annotation


# instance fields
.field private canSend:Z

.field etComment:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field issueId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field llMain:Landroid/widget/LinearLayout;
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

.field private replyAdapter:Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;

.field private rpcGameClient:Lcom/join/mgps/rpc/k;

.field rvComment:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvFeedBackDesc:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvFeedBackGameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvFeedBackReason:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvSend:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getIssueTypeDesc(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issueType"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "\u5176\u4ed6\u95ee\u9898"

    goto :goto_0

    :pswitch_1
    const-string p1, "\u66b4\u529b\u6d89\u653f"

    goto :goto_0

    :pswitch_2
    const-string p1, "\u4fb5\u6743\u6284\u88ad"

    goto :goto_0

    :pswitch_3
    const-string p1, "\u6076\u610f\u6263\u8d39"

    goto :goto_0

    :pswitch_4
    const-string p1, "\u8272\u60c5\u5185\u5bb9"

    goto :goto_0

    :pswitch_5
    const-string p1, "\u643a\u5e26\u75c5\u6bd2"

    goto :goto_0

    :pswitch_6
    const-string p1, "\u7248\u672c\u592a\u65e7"

    goto :goto_0

    :pswitch_7
    const-string p1, "\u65e0\u6cd5\u5b89\u88c5"

    goto :goto_0

    :pswitch_8
    const-string p1, "\u65e0\u6cd5\u4e0b\u8f7d"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addMyComment(Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->replyAdapter:Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->etComment:Landroid/widget/EditText;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->replyAdapter:Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->etComment:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->rvComment:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->replyAdapter:Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->forum_title_center:Landroid/widget/TextView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->forum_title_center:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "\u6295\u8bc9\u8be6\u60c5"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->getData()V

    .line 21
    .line 22
    .line 23
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

.method etComment()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/TextChange;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->etComment:Landroid/widget/EditText;

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
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->canSend:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->tvSend:Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v1, "#F47500"

    .line 27
    .line 28
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->canSend:Z

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->tvSend:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v1, "#C8C9CB"

    .line 42
    .line 43
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->issueId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;->setIssueId(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->u0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/16 v2, 0xc8

    .line 51
    .line 52
    if-ne v1, v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/dto/MessageDetailFeedBackBean;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showMain()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->updateUi(Lcom/join/mgps/dto/MessageDetailFeedBackBean;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showLodingFailed()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showLodingFailed()V

    .line 86
    .line 87
    .line 88
    const v0, 0x7f12031e

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showMessage(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->getData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method reply(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u6dfb\u52a0\u8bc4\u8bba\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->issueId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;->setIssueId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;->setContent(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MessageDetailFeedBackArgs;->setUid(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/k;->w0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v2, 0xc8

    .line 64
    .line 65
    if-ne v1, v2, :cond_0

    .line 66
    .line 67
    new-instance v1, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;->setReplyUid(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;->setAvatar(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;->setUsername(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;->setCreateTime(J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;->setReplyContent(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->addMyComment(Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackReplies;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showMessage(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->showMessage(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->llMain:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->llMain:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->llMain:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
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

.method tvSend()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->canSend:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->etComment:Landroid/widget/EditText;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->reply(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/MessageDetailFeedBackBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/MessageDetailFeedBackBean;->getFeedbackIssue()Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/MessageDetailFeedBackBean;->getFeedbackIssue()Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->tvFeedBackGameName:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->getGameName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->tvFeedBackReason:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->getIssueType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->getIssueTypeDesc(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->tvFeedBackDesc:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->getContent()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->tvTime:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->getCreateTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->s(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->rvComment:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/MessageDetailFeedBackBean;->getFeedbackReplies()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/MessageDetailFeedBackBean;->getFeedbackReplies()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;-><init>(Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->replyAdapter:Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity$a;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/message/FeedBackMessageDetailActivity;->rvComment:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
