.class public Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06ce
.end annotation


# static fields
.field public static final KEY_FORUM_COMMENT_BEAN:Ljava/lang/String; = "key_forum_comment_bean"

.field public static final KEY_FORUM_POST_BEAN:Ljava/lang/String; = "key_forum_post_bean"

.field public static final KEY_FORUM_REPLY_BEAN:Ljava/lang/String; = "key_forum_reply_bean"

.field private static final MAX_POSTS_IMAGE:I = 0x9


# instance fields
.field private final EVENT_COMMENT:I

.field private final EVENT_COMMENT_REPLY:I

.field private final EVENT_COMMENT_REPLY_REPLY:I

.field private final EVENT_DELETE_COMMENT:I

.field private final EVENT_DELETE_COMMENT_REPLY:I

.field private final EVENT_DELETE_COMMENT_REPLY_REPLY:I

.field private final EVENT_REPORT_COMMENT:I

.field private final EVENT_REPORT_COMMENT_REPLY:I

.field private final EVENT_REPORT_COMMENT_REPLY_REPLY:I

.field private final LOADING:I

.field private final LOADING_DB_FAILED:I

.field private final LOADING_FAILED:I

.field private final LOADING_NETWORK_FAILED:I

.field private final LOADING_SRV_NO_REC_FAILED:I

.field private final LOADING_SRV_POSTS_FAILED:I

.field private final LOADING_SUCCESS:I

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

.field private comment:Landroid/widget/Button;

.field commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field private curCid:I

.field private curEventType:I

.field private curMessage:Ljava/lang/String;

.field private curPid:I

.field private curRid:I

.field private deleteComment:Landroid/widget/Button;

.field doingForumPostDelete:Z

.field doingForumPostReport:Z

.field doingReport:Z

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

.field private forumDialog:Lcom/join/mgps/dialog/x0;

.field private forumLoadingDialog:Lcom/join/mgps/dialog/y0;

.field forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

.field image_add:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isLoadingData:Z

.field isShowInputExtensionBoard:Z

.field isShowInputExtensionFunction:Z

.field private isShowKeyboard:Z

.field layout_forum_posts_title:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title_right:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;"
        }
    .end annotation
.end field

.field private loadingState:I

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mDialog:Lcom/join/mgps/customview/t;

.field mHandler:Landroid/os/Handler;

.field private final mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field private mPrePostingHintDialog:Lcom/join/mgps/dialog/a2;

.field mProfileListener:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

.field matchListView:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field netConnectException:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private popupWindow:Landroid/widget/PopupWindow;

.field replyBean:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field toggleSendOn:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLoadingData:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING:I

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING_FAILED:I

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING_SUCCESS:I

    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING_NETWORK_FAILED:I

    .line 20
    .line 21
    const/16 v2, 0x12

    .line 22
    .line 23
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING_DB_FAILED:I

    .line 24
    .line 25
    const/16 v3, 0x14

    .line 26
    .line 27
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING_SRV_NO_REC_FAILED:I

    .line 28
    .line 29
    const/16 v4, 0x18

    .line 30
    .line 31
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->LOADING_SRV_POSTS_FAILED:I

    .line 32
    .line 33
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_COMMENT:I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_COMMENT_REPLY:I

    .line 40
    .line 41
    const/4 v5, 0x4

    .line 42
    iput v5, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_COMMENT_REPLY_REPLY:I

    .line 43
    .line 44
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_DELETE_COMMENT:I

    .line 45
    .line 46
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_DELETE_COMMENT_REPLY:I

    .line 47
    .line 48
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_DELETE_COMMENT_REPLY_REPLY:I

    .line 49
    .line 50
    const/16 v1, 0x21

    .line 51
    .line 52
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_REPORT_COMMENT:I

    .line 53
    .line 54
    const/16 v1, 0x22

    .line 55
    .line 56
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_REPORT_COMMENT_REPLY:I

    .line 57
    .line 58
    const/16 v1, 0x24

    .line 59
    .line 60
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->EVENT_REPORT_COMMENT_REPLY_REPLY:I

    .line 61
    .line 62
    iput v4, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 63
    .line 64
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->toggleSendOn:I

    .line 65
    .line 66
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mProfileListener:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowKeyboard:Z

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionFunction:Z

    .line 83
    .line 84
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionBoard:Z

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostDelete:Z

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 94
    .line 95
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$h;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 101
    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->reversePraise()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->dismissPopupWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    return-object p0
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

.method private deleteTempPic(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "images"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_3

    .line 16
    .line 17
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {}, Lcom/join/mgps/Util/r0;->l0()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p1, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 85
    .line 86
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Ljava/util/Hashtable;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p1, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 96
    .line 97
    :cond_4
    :goto_1
    return-void
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private dismissPopupWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "ev"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aget v0, v0, v3

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    int-to-float v5, v2

    .line 18
    cmpg-float v4, v4, v5

    .line 19
    .line 20
    if-ltz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    add-int/2addr v2, v5

    .line 31
    int-to-float v2, v2

    .line 32
    cmpl-float v2, v4, v2

    .line 33
    .line 34
    if-gtz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v4, v0

    .line 41
    cmpg-float v2, v2, v4

    .line 42
    .line 43
    if-ltz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr v0, p1

    .line 54
    int-to-float p1, v0

    .line 55
    cmpl-float p1, p2, p1

    .line 56
    .line 57
    if-gtz p1, :cond_0

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_0
    return v1
.end method

.method private initPopupWindow()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d06aa

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
    new-instance v1, Landroid/widget/PopupWindow;

    .line 14
    .line 15
    const/4 v2, -0x2

    .line 16
    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    const v1, 0x7f0a029f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/Button;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->comment:Landroid/widget/Button;

    .line 31
    .line 32
    const v1, 0x7f0a02a1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/Button;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteComment:Landroid/widget/Button;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->comment:Landroid/widget/Button;

    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteComment:Landroid/widget/Button;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 64
    .line 65
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$d;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private initViews()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6211\u7684\u6d88\u606f"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_title_right:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u67e5\u770b\u4e3b\u8d34"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "key_forum_comment_bean"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "key_forum_post_bean"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "key_forum_reply_bean"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x0

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-class v6, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 67
    .line 68
    new-array v7, v4, [Ljava/lang/Class;

    .line 69
    .line 70
    invoke-virtual {v5, v6, v7}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 81
    .line 82
    :cond_0
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-class v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 97
    .line 98
    new-array v6, v4, [Ljava/lang/Class;

    .line 99
    .line 100
    invoke-virtual {v3, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 111
    .line 112
    :cond_1
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    .line 118
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-class v3, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 127
    .line 128
    new-array v4, v4, [Ljava/lang/Class;

    .line 129
    .line 130
    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->replyBean:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 141
    .line 142
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 147
    .line 148
    if-nez v1, :cond_3

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 157
    .line 158
    new-instance v0, Lcom/join/mgps/dialog/y0;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y0;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->initPopupWindow()V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->image_add:Landroid/widget/ImageView;

    .line 169
    .line 170
    const/16 v1, 0x8

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 176
    .line 177
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_forum_posts_title:Landroid/widget/RelativeLayout;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/join/mgps/customview/KeyboardListenLayout;

    .line 185
    .line 186
    new-instance v2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$k;

    .line 187
    .line 188
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$k;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/KeyboardListenLayout;->setOnSoftKeyboardListener(Lcom/join/mgps/customview/KeyboardListenLayout$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 205
    .line 206
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;

    .line 207
    .line 208
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$l;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 215
    .line 216
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 222
    .line 223
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;

    .line 224
    .line 225
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 232
    .line 233
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$n;

    .line 234
    .line 235
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$n;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 242
    .line 243
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;-><init>(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 247
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 256
    .line 257
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mProfileListener:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->C(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 263
    .line 264
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 270
    .line 271
    if-eqz v0, :cond_4

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_4

    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 286
    .line 287
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 288
    .line 289
    if-eqz v0, :cond_5

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_5

    .line 296
    .line 297
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curPid:I

    .line 304
    .line 305
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->replyBean:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 306
    .line 307
    if-eqz v0, :cond_6

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_6

    .line 314
    .line 315
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->replyBean:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 322
    .line 323
    :cond_6
    return-void

    .line 324
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 325
    .line 326
    .line 327
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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

.method private loadDBData()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loading()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadDBData()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadSrvData()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x7f12031e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x11

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private reGetToken()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->touristLogin()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x7f120141

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private refreshCommentCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "\u5df2\u6709"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "\u6761\u56de\u590d"

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 52
    .line 53
    const-string v1, "\u5df2\u67090\u6761\u56de\u590d"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method private reversePraise()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 26
    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->modifyPraiseView(ZI)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private sendCommentReplyReplyRequest()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f120142

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->validAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curMessage:Ljava/lang/String;

    .line 31
    .line 32
    iget v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 33
    .line 34
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/r0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->c0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/16 v4, 0x2c2

    .line 65
    .line 66
    if-ne v3, v4, :cond_3

    .line 67
    .line 68
    const v0, 0x7f1204ed

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->isResult()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 99
    .line 100
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    const-wide/16 v5, 0x3e8

    .line 133
    .line 134
    div-long/2addr v3, v5

    .line 135
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 136
    .line 137
    .line 138
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 139
    .line 140
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 141
    .line 142
    .line 143
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getRid()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_money()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_exp()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-ne v0, v2, :cond_5

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPrePostingHintDialog(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    :goto_0
    return-void
.end method

.method private sendCommentReplyRequest()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f120142

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->validAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curMessage:Ljava/lang/String;

    .line 31
    .line 32
    iget v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 33
    .line 34
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/r0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->G(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/16 v4, 0x2c2

    .line 65
    .line 66
    if-ne v3, v4, :cond_3

    .line 67
    .line 68
    const v0, 0x7f1204ed

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->isResult()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 99
    .line 100
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    const-wide/16 v5, 0x3e8

    .line 133
    .line 134
    div-long/2addr v3, v5

    .line 135
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 136
    .line 137
    .line 138
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 139
    .line 140
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getRid()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_money()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_exp()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ne v0, v2, :cond_5

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPrePostingHintDialog(I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 199
    .line 200
    .line 201
    :goto_0
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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->initViews()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loading()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55\uff01"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionBoard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowKeyboard:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method btn_chat_praise()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->validAccount()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const v0, 0x7f010095

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->reversePraise()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->praisePosts()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method btn_chat_send()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curMessage:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "\u56de\u590d\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendComment()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x2

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendCommentReply()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x4

    .line 46
    if-ne v0, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendCommentReply()V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
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
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    if-nez p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_2
    or-int/2addr p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 40
    .line 41
    const/16 p1, -0xb

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkFailed(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$o;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$o;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/16 p1, 0x16

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkFailed(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 82
    .line 83
    const-string v0, "\u8be5\u8bc4\u8bba\u5df2\u7ecf\u5220\u9664~"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 89
    .line 90
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$p;

    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$p;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 99
    .line 100
    const/16 v0, 0xa

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const/16 p1, 0x1f

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkFailed(I)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_6

    .line 113
    .line 114
    const/16 p1, 0x1a

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkFailed(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const/16 p1, 0x11

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkFailed(I)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 134
    .line 135
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$a;

    .line 136
    .line 137
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    :goto_0
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 152
    .line 153
    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 159
    .line 160
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$q;

    .line 161
    .line 162
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$q;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_1
    return-void
.end method

.method checkFailed(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method checkKeyboard()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->replyBean:Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->replyReply(IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentReply(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method clearCommentMessage()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_send:Landroid/widget/Button;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->image_add:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 45
    .line 46
    const-string v1, "\u6dfb\u52a0\u56de\u590d"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method commentReply(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cid",
            "cNickname"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " cNickname="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 24
    .line 25
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionFunction(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "\u56de\u590d"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, ":"

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method deleteComment(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8bc4\u8bba\u5220\u9664\u5931\u8d25"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/join/mgps/Util/r0;->W(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/i;->C(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;->isResult()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-string v1, "\u8bc4\u8bba\u5df2\u5220\u9664"

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentDeleteSuccess(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const p1, 0x7f12031e

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception p1

    .line 89
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_2
    return-void

    .line 97
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method deleteCommentReply(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u56de\u590d\u5220\u9664\u5931\u8d25"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/r0;->X(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/i;->o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;->isResult()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processDeleteCommentReplySuccess(I)V

    .line 54
    .line 55
    .line 56
    const-string p1, "\u56de\u590d\u5df2\u5220\u9664"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method

.method deletePosts()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostDelete:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostDelete:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :try_start_0
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/i;->I(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    :goto_0
    if-eqz v2, :cond_2

    .line 67
    .line 68
    const-string v0, "\u5e16\u5b50\u5220\u9664\u6210\u529f"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string v0, "\u5e16\u5b50\u5220\u9664\u5931\u8d25"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostDelete:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostDelete:Z

    .line 93
    .line 94
    throw v0

    .line 95
    :cond_4
    const v0, 0x7f12031e

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostDelete:Z

    .line 106
    .line 107
    :goto_3
    return-void
.end method

.method dismissSendPromptDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dialog/y0;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isIgnored(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "input_method"

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1
.end method

.method doForumPostReport()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const v1, 0x7f12013b

    .line 8
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    const v0, 0x7f120142

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    return-void

    .line 12
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;

    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    const-string v6, ""

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/join/mgps/rpc/i;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x2bd

    if-eq v3, v0, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f120141

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;->isResult()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f12013c

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 23
    :try_start_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    goto :goto_3

    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    .line 26
    throw v0

    :cond_8
    const v0, 0x7f12031e

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 28
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingForumPostReport:Z

    :goto_3
    return-void
.end method

.method doForumPostReport(II)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cid",
            "rid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "\u8bc4\u8bba\u4e3e\u62a5\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string v0, "\u56de\u590d\u4e3e\u62a5\u6210\u529f"

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "\u8bc4\u8bba\u4e3e\u62a5\u5931\u8d25"

    goto :goto_1

    :cond_1
    const-string v1, "\u56de\u590d\u4e3e\u62a5\u5931\u8d25"

    .line 29
    :goto_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 30
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    .line 32
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 33
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 35
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    const p1, 0x7f120142

    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    return-void

    .line 38
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p2

    .line 39
    new-instance v11, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    move-result v5

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, ""

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;-><init>(ILjava/lang/String;IIILjava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    invoke-virtual {v11}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsReportRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/i;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result p2

    if-eqz p2, :cond_5

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f120141

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;

    if-eqz p1, :cond_7

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsReportData;->isResult()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 45
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 47
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_8
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 49
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :goto_2
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    goto :goto_4

    :goto_3
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    .line 52
    throw p1

    :cond_9
    const p1, 0x7f12031e

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 54
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doingReport:Z

    :goto_4
    return-void
.end method

.method error(Ljava/lang/String;)V
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

.method getForumProfileMessageReplyData()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLoadingData:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLoadingData:Z

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    const/16 v0, 0x18

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v6, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, ""

    .line 46
    .line 47
    invoke-interface {v3, v5, v2, v6, v7}, Lcom/join/mgps/rpc/i;->B(ILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v2, v4

    .line 53
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/16 v5, 0x2bd

    .line 58
    .line 59
    const/16 v6, 0x14

    .line 60
    .line 61
    if-ne v3, v5, :cond_2

    .line 62
    .line 63
    const v2, 0x7f120142

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLoadingData:Z

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;->getComment()Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 96
    .line 97
    .line 98
    :goto_2
    if-eqz v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->updateMessageData(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    if-eqz v4, :cond_6

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    const/16 v2, 0x20

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkKeyboard()V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    :goto_3
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_5

    .line 127
    :catch_0
    move-exception v2

    .line 128
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    .line 134
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLoadingData:Z

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLoadingData:Z

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_7
    const v0, 0x7f12031e

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/16 v0, 0x11

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 159
    .line 160
    .line 161
    :goto_6
    return-void
.end method

.method hideExtensionBoard()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionBoard:Z

    .line 20
    .line 21
    return-void
.end method

.method hideExtensionFunction(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hide"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionBoard()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionFunction:Z

    .line 21
    .line 22
    return-void
.end method

.method public hideSystemKeyBoard(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
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
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 15
    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowKeyboard:Z

    .line 18
    .line 19
    return-void
.end method

.method public isIgnored(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0e1f

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    return v1
.end method

.method public isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    filled-new-array {v0, v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 13
    .line 14
    .line 15
    aget v2, v1, v0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aget v1, v1, v3

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    add-int/2addr v4, v1

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/2addr p1, v2

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-float v2, v2

    .line 35
    cmpl-float v2, v5, v2

    .line 36
    .line 37
    if-lez v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-float p1, p1

    .line 44
    cmpg-float p1, v2, p1

    .line 45
    .line 46
    if-gez p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-float v1, v1

    .line 53
    cmpl-float p1, p1, v1

    .line 54
    .line 55
    if-lez p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-float p2, v4

    .line 62
    cmpg-float p1, p1, p2

    .line 63
    .line 64
    if-ltz p1, :cond_1

    .line 65
    .line 66
    :cond_0
    const/4 v0, 0x1

    .line 67
    :cond_1
    return v0
.end method

.method layout_title_right()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method loadSrvData()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->getForumProfileMessageReplyData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method modifyPraiseView(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "like",
            "count"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 4
    .line 5
    const p2, 0x7f080c51

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 13
    .line 14
    const p2, 0x7f081320

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method notifyAdapter()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->u(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method declared-synchronized notifyDataSetChanged()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->setProfileViewData(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyAdapter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method notifyLoginSuccess()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionBoard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowKeyboard:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    .line 16
    .line 17
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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingState:I

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loading()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method praisePosts()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curPid:I

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->R(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v3, 0x2c2

    .line 49
    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->reversePraise()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    const-string v2, "\u70b9\u8d5e\u6210\u529f"

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    if-eqz v2, :cond_5

    .line 92
    .line 93
    const-string v2, "\u70b9\u8d5e\u5931\u8d25"

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/r0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void
.end method

.method processCommentDeleteSuccess(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->refreshCommentCount()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 3
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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->refreshCommentCount()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 6
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v2, v3, :cond_3

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ne v4, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->notifyDataSetChanged()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->refreshCommentCount()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method processDeleteCommentReplySuccess(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v3, p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method processSendCommentResult(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBean",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionBoard()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->isResult()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPid(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setUid(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setNickname(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAvatar_src(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setMessage(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    const-wide/16 v4, 0x3e8

    .line 79
    .line 80
    div-long/2addr v2, v4

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAdd_time(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPic_list()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPic_list(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getRaw_pic_list()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setRaw_pic_list(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getFloor()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setFloor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 106
    .line 107
    .line 108
    sget-object v1, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_money()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_exp()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-virtual {p0, v1, v2, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processSendCommentResultRefreshCommenCount(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteTempPic(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-ne p1, v0, :cond_2

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->dismissSendPromptDialog()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPrePostingHintDialog(I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_3

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->dismissSendPromptDialog()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    goto :goto_2

    .line 177
    :catch_0
    move-exception p1

    .line 178
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionBoard()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionBoard()V

    .line 195
    .line 196
    .line 197
    throw p1
.end method

.method processSendCommentResultRefreshCommenCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method replyReply(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cid",
            "rid",
            "rNickname"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionFunction(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 7
    .line 8
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curCid:I

    .line 9
    .line 10
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 13
    .line 14
    const-string p2, ""

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "\u56de\u590d"

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p3, ":"

    .line 45
    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method sendComment()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->toggleSendOn:I

    .line 32
    .line 33
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lnet/bither/util/b;->x()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->toggleSendOn:I

    .line 42
    .line 43
    const v1, 0x7f12031e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    throw v0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->toggleSendOn:I

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method sendCommentReply()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    iget v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendCommentReplyRequest()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendCommentReplyReplyRequest()V

    .line 39
    .line 40
    .line 41
    :goto_0
    monitor-exit v0

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method setPopupWindowAttr(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deleteVisible",
            "commentVisible"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->initPopupWindow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v0, 0x7f0a029f

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/Button;

    .line 22
    .line 23
    const v1, 0x7f0a02a1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/Button;

    .line 31
    .line 32
    const v2, 0x7f0a04e8

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method setProfileViewData(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getForum_auth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :cond_1
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-object v4, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 72
    .line 73
    sget-object v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 74
    .line 75
    new-instance v15, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAvatar_src()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAdd_time()J

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getVip_level()I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getSvip_level()I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    move-object v5, v15

    .line 108
    move-object v0, v15

    .line 109
    move/from16 v15, v16

    .line 110
    .line 111
    invoke-direct/range {v5 .. v15}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;-><init>(ZLjava/lang/String;Ljava/lang/String;JIZIII)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v4, v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 123
    .line 124
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 125
    .line 126
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;-><init>(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v2, :cond_3

    .line 155
    .line 156
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-ge v0, v2, :cond_3

    .line 167
    .line 168
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 169
    .line 170
    sget-object v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 171
    .line 172
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;

    .line 173
    .line 174
    iget-object v6, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 175
    .line 176
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Ljava/lang/String;

    .line 185
    .line 186
    iget-object v7, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 187
    .line 188
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getRaw_pic_list()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-direct {v5, v6, v0, v7}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v2, v4, v5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 210
    .line 211
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_REPLY_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 212
    .line 213
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    move-object/from16 v6, p1

    .line 220
    .line 221
    invoke-direct {v4, v5, v6, v3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;I)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->listData:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    :goto_1
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

.method showExtensionBoard()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionBoard:Z

    .line 26
    .line 27
    return-void
.end method

.method showExtensionContentBoard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension:Landroid/view/View;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowInputExtensionBoard:Z

    .line 26
    .line 27
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

.method showMoreLoading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showPopupwindow(Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    mul-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    const/high16 v2, 0x42200000    # 40.0f

    .line 29
    .line 30
    mul-float v0, v0, v2

    .line 31
    .line 32
    sub-float/2addr v1, v0

    .line 33
    float-to-int v0, v1

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    iput p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    if-ne p2, p1, :cond_0

    .line 44
    .line 45
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curRid:I

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method showPrePostingHintDialog(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showPromptDialog(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pid",
            "rid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u8bc4\u8bba\u5417\uff1f"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dialog/x0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 13
    .line 14
    const-string v2, "\u786e\u5b9a"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 20
    .line 21
    const-string v2, "\u53d6\u6d88"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->b(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 54
    .line 55
    new-instance v2, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$f;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->curEventType:I

    .line 64
    .line 65
    const/16 v2, 0x11

    .line 66
    .line 67
    if-ne v0, v2, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/16 v1, 0x12

    .line 76
    .line 77
    if-eq v0, v1, :cond_2

    .line 78
    .line 79
    const/16 v1, 0x14

    .line 80
    .line 81
    if-ne v0, v1, :cond_3

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 84
    .line 85
    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u56de\u590d\u5417\uff1f"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 91
    .line 92
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;

    .line 93
    .line 94
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method showRewardToast(Lcom/join/mgps/customview/RewardType;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "money",
            "exp"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showSendPromptDialog(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/y0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/y0;->c(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public showSystemKeyBoard(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
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
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isShowKeyboard:Z

    .line 15
    .line 16
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

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->g()Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const-wide/16 v2, 0xbb8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method submitForumPostsComment(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "requestBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const p1, 0x7f120142

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->validAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    if-eqz p1, :cond_4

    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getParams1()Lorg/springframework/util/LinkedMultiValueMap;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->z0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/16 v2, 0x2c2

    .line 50
    .line 51
    if-ne v1, v2, :cond_2

    .line 52
    .line 53
    const p1, 0x7f1204ed

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const/16 v2, 0x2bd

    .line 68
    .line 69
    if-ne v1, v2, :cond_3

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->reGetToken()V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processSendCommentResult(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_0
    return-void
.end method

.method touristLogin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->isLogined(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "2"

    .line 22
    .line 23
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->I(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyLoginSuccess()V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_0
    return-void
.end method

.method updateMessageData(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->commentBean:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->refreshCommentCount()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method validAccount()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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
