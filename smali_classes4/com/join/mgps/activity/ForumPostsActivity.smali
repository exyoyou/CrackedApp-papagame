.class public Lcom/join/mgps/activity/ForumPostsActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ForumStickView$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsActivity$c0;,
        Lcom/join/mgps/activity/ForumPostsActivity$a0;,
        Lcom/join/mgps/activity/ForumPostsActivity$f0;,
        Lcom/join/mgps/activity/ForumPostsActivity$b0;,
        Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;,
        Lcom/join/mgps/activity/ForumPostsActivity$e0;,
        Lcom/join/mgps/activity/ForumPostsActivity$g0;,
        Lcom/join/mgps/activity/ForumPostsActivity$h0;,
        Lcom/join/mgps/activity/ForumPostsActivity$d0;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06ab
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0xa
    }
.end annotation


# static fields
.field public static final KEY_FORUM_POSTS_BEAN:Ljava/lang/String;

.field public static final KEY_MEDIACMD:Ljava/lang/String; = "key_mediacmd"

.field public static final KEY_MEDIACMDPARAMS:Ljava/lang/String; = "key_mediacmd_params"

.field private static final MAX_POSTS_IMAGE:I = 0x9

.field public static final RESULT_CODE_POST_INFO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ForumPostsActivity"


# instance fields
.field final COMMENT_ORDER_ASC:Ljava/lang/String;

.field final COMMENT_ORDER_DESC:Ljava/lang/String;

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

.field private final LOADING_SRV_INFO_DELETED:I

.field private final LOADING_SRV_POSTS_FAILED:I

.field private final LOADING_SUCCESS:I

.field actionbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private adView:Lcom/join/mgps/customview/BaiduAdBannerRelativeLayout;

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

.field btn_chat_star:Landroid/widget/Button;
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

.field comment_order:Ljava/lang/String;

.field copperTitleTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cover:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field coverUrl:Ljava/lang/String;

.field csl_view:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private curCid:I

.field private curEventType:I

.field private curMessage:Ljava/lang/String;

.field private curPid:I

.field private curRid:I

.field currentPlayPosition:I

.field private dialog4Event:I

.field doingAddTags:Z

.field doingForumPostBest:Z

.field doingForumPostDelete:Z

.field doingForumPostFavorite:Z

.field doingForumPostReport:Z

.field doingPostGag:Z

.field doingRemoveTags:Z

.field doingReport:Z

.field doingSetFirstPost:Z

.field downloadGameWhenInfoGotcha:Z

.field private downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field edit_comment_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field public firstVisible:I

.field footer_tip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private forumDialog:Lcom/join/mgps/dialog/x0;

.field private forumDialog4More:Lcom/join/mgps/dialog/x0;

.field private forumGagType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field private forumLoadingDialog:Lcom/join/mgps/dialog/y0;

.field forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field forumPostsOnClickListener:Lcom/join/mgps/adapter/ForumCommentAdapter$w;

.field forum_post_host:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_post_moderator:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_post_nickname:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_post_stickie:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fsv_stick:Lcom/join/mgps/customview/ForumStickView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameInfo:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field getGameDownloadInfoStatus:I

.field gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

.field gridView:Lcom/join/mgps/customview/WrapContentGridView;

.field headAdapter:Lcom/join/mgps/adapter/ForumPostsAdapter;

.field headData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$e0;",
            ">;"
        }
    .end annotation
.end field

.field helper:Lcom/join/android/app/component/video/c;

.field iForumExtFuncListener:Lcom/join/mgps/customview/e$d;

.field image_add:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isActive:Z

.field volatile isPreLoading:Z

.field isShowInputExtensionBoard:Z

.field isShowInputExtensionFunction:Z

.field private isShowKeyboard:Z

.field iv_more:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_chat_cell_container:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumCommentAdapter$z;",
            ">;"
        }
    .end annotation
.end field

.field loadingLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private loadingPage:I

.field private loadingState:I

.field loadingView:Lcom/join/mgps/customview/CustomLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public mAbsListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mCompressListener:Lnet/bither/util/b$e;

.field mDialog:Lcom/join/mgps/customview/t;

.field private mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

.field mFullScreenFlag:Z

.field public mItemsPositionGetter:Lcom/join/mgps/recycler/c;

.field mOffsetY:I

.field mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

.field mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

.field private final mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field private mPrePostingHintDialog:Lcom/join/mgps/dialog/a2;

.field mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTop:I

.field matchListView:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mediaController:Lcom/join/android/app/component/video/MediaController;

.field member_honor:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field moderator:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field moreFuncBest:Landroid/widget/LinearLayout;

.field moreFuncBestImg:Landroid/widget/ImageView;

.field moreFuncBlock1:Landroid/view/View;

.field moreFuncBlock2:Landroid/view/View;

.field moreFuncDelete:Landroid/widget/LinearLayout;

.field moreFuncFavorite:Landroid/widget/LinearLayout;

.field moreFuncFavoriteImg:Landroid/widget/ImageView;

.field moreFuncListener:Landroid/view/View$OnClickListener;

.field moreFuncReport:Landroid/widget/LinearLayout;

.field moreFuncRow2:Landroid/view/View;

.field moreFuncShare:Landroid/widget/LinearLayout;

.field moreFuncShareImg:Landroid/widget/ImageView;

.field moreFuncSort:Landroid/widget/LinearLayout;

.field moreFuncSortImg:Landroid/widget/ImageView;

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

.field newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

.field officialIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private pageCount:I

.field play:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field playPositionOffset:I

.field postFuncHost:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field postFuncMore:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field postFunction:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private recommendClient:Lcom/join/mgps/rpc/e;

.field rl_comment_count:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rv_head:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field see_lz:I

.field selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

.field toggleSendOn:I

.field public totalCount:I

.field video:Lcom/join/android/app/component/video/MyVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoDefaultHeight:I

.field videoIndex:I

.field videoLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoUrl:Ljava/lang/String;

.field view_empty:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipFlag:Lcom/join/mgps/customview/VipView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public visibleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "key_forum_posts_bean"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/join/mgps/activity/ForumPostsActivity;->KEY_FORUM_POSTS_BEAN:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "asc"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->COMMENT_ORDER_ASC:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "desc"

    .line 9
    .line 10
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->COMMENT_ORDER_DESC:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_COMMENT:I

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_COMMENT_REPLY:I

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_COMMENT_REPLY_REPLY:I

    .line 25
    .line 26
    const/16 v2, 0x11

    .line 27
    .line 28
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_DELETE_COMMENT:I

    .line 29
    .line 30
    const/16 v3, 0x12

    .line 31
    .line 32
    iput v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_DELETE_COMMENT_REPLY:I

    .line 33
    .line 34
    const/16 v4, 0x14

    .line 35
    .line 36
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_DELETE_COMMENT_REPLY_REPLY:I

    .line 37
    .line 38
    const/16 v5, 0x21

    .line 39
    .line 40
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_REPORT_COMMENT:I

    .line 41
    .line 42
    const/16 v5, 0x22

    .line 43
    .line 44
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_REPORT_COMMENT_REPLY:I

    .line 45
    .line 46
    const/16 v5, 0x24

    .line 47
    .line 48
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->EVENT_REPORT_COMMENT_REPLY_REPLY:I

    .line 49
    .line 50
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    .line 51
    .line 52
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$k;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$k;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsOnClickListener:Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 58
    .line 59
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->pageCount:I

    .line 60
    .line 61
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 62
    .line 63
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING:I

    .line 64
    .line 65
    const/16 v0, 0x10

    .line 66
    .line 67
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING_FAILED:I

    .line 68
    .line 69
    const/16 v0, 0x20

    .line 70
    .line 71
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING_SUCCESS:I

    .line 72
    .line 73
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING_NETWORK_FAILED:I

    .line 74
    .line 75
    iput v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING_DB_FAILED:I

    .line 76
    .line 77
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING_SRV_INFO_DELETED:I

    .line 78
    .line 79
    const/16 v0, 0x18

    .line 80
    .line 81
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->LOADING_SRV_POSTS_FAILED:I

    .line 82
    .line 83
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 84
    .line 85
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->toggleSendOn:I

    .line 86
    .line 87
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$s;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$s;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 95
    .line 96
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionFunction:Z

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 99
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 106
    .line 107
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$e;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$e;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isPreLoading:Z

    .line 115
    .line 116
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$f;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 122
    .line 123
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$l;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$l;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->iForumExtFuncListener:Lcom/join/mgps/customview/e$d;

    .line 131
    .line 132
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostReport:Z

    .line 133
    .line 134
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingReport:Z

    .line 135
    .line 136
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostDelete:Z

    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 139
    .line 140
    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->currentPlayPosition:I

    .line 142
    .line 143
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->playPositionOffset:I

    .line 144
    .line 145
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isActive:Z

    .line 146
    .line 147
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mTop:I

    .line 148
    .line 149
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mOffsetY:I

    .line 150
    .line 151
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoDefaultHeight:I

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 155
    .line 156
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 162
    .line 163
    new-instance v0, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 169
    .line 170
    new-instance v0, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 176
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 183
    .line 184
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->getGameDownloadInfoStatus:I

    .line 185
    .line 186
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadGameWhenInfoGotcha:Z

    .line 187
    .line 188
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingAddTags:Z

    .line 189
    .line 190
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingRemoveTags:Z

    .line 191
    .line 192
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingSetFirstPost:Z

    .line 193
    .line 194
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingPostGag:Z

    .line 195
    .line 196
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->firstVisible:I

    .line 197
    .line 198
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->visibleCount:I

    .line 199
    .line 200
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->totalCount:I

    .line 201
    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->reversePraise()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostShare()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1202(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->dialog4Event:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showPromptDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/activity/ForumPostsActivity$a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->excePositiveClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->finishM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curCid:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curPid:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/ForumPostsActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->pageCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/ForumPostsActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->loading(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private doForumPostShare()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->G1(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private excePositiveClick()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->dialog4Event:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :sswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostReport()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostFavorite()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->deletePosts()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostBest()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :sswitch_data_0
    .sparse-switch
        0x7f0a05cb -> :sswitch_3
        0x7f0a05ce -> :sswitch_2
        0x7f0a05cf -> :sswitch_1
        0x7f0a05d2 -> :sswitch_0
    .end sparse-switch
.end method

.method private finishM()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentUtil;->getSplashActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->setSplashActivity(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v2, Lcom/join/mgps/activity/MGMainActivity_;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/high16 v0, 0x4000000

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/high16 v0, 0x20000000

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const-string v0, "key_selected_images"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    return-object p1
.end method

.method private hideUserUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->layout_chat_cell_container:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
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

.method private initForumPostsFuncPopupWindow()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0278

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
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 14
    .line 15
    const/4 v7, -0x2

    .line 16
    const/4 v8, -0x2

    .line 17
    move-object v3, v1

    .line 18
    move-object v4, p0

    .line 19
    move-object v5, p0

    .line 20
    move-object v6, v0

    .line 21
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity$a0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;Landroid/view/View;II)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$h;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$h;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a07bf

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridView:Lcom/join/mgps/customview/WrapContentGridView;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridView:Lcom/join/mgps/customview/WrapContentGridView;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initGridAdapterData()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private initForumPostsFuncPopupWindow1()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0277

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
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 14
    .line 15
    const/4 v7, -0x1

    .line 16
    const/4 v8, -0x2

    .line 17
    move-object v3, v1

    .line 18
    move-object v4, p0

    .line 19
    move-object v5, p0

    .line 20
    move-object v6, v0

    .line 21
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity$a0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;Landroid/view/View;II)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$g;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$g;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a108e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncFavorite:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v1, 0x7f0a1092

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncShare:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v1, 0x7f0a1094

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncSort:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v1, 0x7f0a142a

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncRow2:Landroid/view/View;

    .line 75
    .line 76
    const v1, 0x7f0a108c

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncDelete:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    const v1, 0x7f0a1090

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncReport:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    const v1, 0x7f0a108a

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBest:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    const v1, 0x7f0a020e

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBlock1:Landroid/view/View;

    .line 117
    .line 118
    const v1, 0x7f0a020f

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBlock2:Landroid/view/View;

    .line 126
    .line 127
    const v1, 0x7f0a108f

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/widget/ImageView;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncFavoriteImg:Landroid/widget/ImageView;

    .line 137
    .line 138
    const v1, 0x7f0a1093

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Landroid/widget/ImageView;

    .line 146
    .line 147
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncShareImg:Landroid/widget/ImageView;

    .line 148
    .line 149
    const v1, 0x7f0a1095

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Landroid/widget/ImageView;

    .line 157
    .line 158
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncSortImg:Landroid/widget/ImageView;

    .line 159
    .line 160
    const v1, 0x7f0a108b

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/ImageView;

    .line 168
    .line 169
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBestImg:Landroid/widget/ImageView;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncFavorite:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncShare:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncSort:Landroid/widget/LinearLayout;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncDelete:Landroid/widget/LinearLayout;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncReport:Landroid/widget/LinearLayout;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBest:Landroid/widget/LinearLayout;

    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncListener:Landroid/view/View$OnClickListener;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method private initGridAdapterData()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x7

    .line 22
    new-array v1, v0, [I

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    const-string v2, "\u5206\u4eab"

    .line 28
    .line 29
    const-string v3, "\u4e3e\u62a5"

    .line 30
    .line 31
    const-string v4, "\u5220\u5e16"

    .line 32
    .line 33
    const-string v5, "\u52a0\u7cbe"

    .line 34
    .line 35
    const-string v6, "\u6536\u5f55\u81f3\u8bdd\u9898"

    .line 36
    .line 37
    const-string v7, "\u79fb\u9664\u8bdd\u9898"

    .line 38
    .line 39
    const-string v8, "\u7f6e\u9876"

    .line 40
    .line 41
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_0
    if-ge v4, v0, :cond_10

    .line 48
    .line 49
    aget v5, v1, v4

    .line 50
    .line 51
    aget-object v6, v2, v4

    .line 52
    .line 53
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity$c0;

    .line 54
    .line 55
    invoke-direct {v7, p0}, Lcom/join/mgps/activity/ForumPostsActivity$c0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    if-ne v5, v0, :cond_5

    .line 60
    .line 61
    iget-object v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_best_allow()Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_2

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_2
    iget-object v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 72
    .line 73
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-ne v9, v8, :cond_3

    .line 78
    .line 79
    const-string v6, "\u53d6\u6d88\u7cbe\u534e"

    .line 80
    .line 81
    :cond_3
    iget-object v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 82
    .line 83
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-ne v9, v8, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 v8, 0x0

    .line 91
    :goto_1
    iput-boolean v8, v7, Lcom/join/mgps/activity/ForumPostsActivity$c0;->d:Z

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_5
    const/4 v9, 0x6

    .line 96
    if-ne v5, v9, :cond_6

    .line 97
    .line 98
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 99
    .line 100
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_del_allow()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_f

    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_6
    const/16 v9, 0x8

    .line 109
    .line 110
    if-ne v5, v9, :cond_7

    .line 111
    .line 112
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 113
    .line 114
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_add_tag_allow()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-nez v8, :cond_f

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    const/16 v9, 0x9

    .line 122
    .line 123
    if-ne v5, v9, :cond_8

    .line 124
    .line 125
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_remove_tag_allow()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_f

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    const/16 v9, 0xa

    .line 135
    .line 136
    if-ne v5, v9, :cond_c

    .line 137
    .line 138
    iget-object v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 139
    .line 140
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_first()Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-nez v9, :cond_9

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    iget-object v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 148
    .line 149
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-ne v9, v8, :cond_a

    .line 154
    .line 155
    const-string v6, "\u53d6\u6d88\u7f6e\u9876"

    .line 156
    .line 157
    :cond_a
    iget-object v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 158
    .line 159
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-ne v9, v8, :cond_b

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_b
    const/4 v8, 0x0

    .line 167
    :goto_2
    iput-boolean v8, v7, Lcom/join/mgps/activity/ForumPostsActivity$c0;->e:Z

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_c
    if-ne v5, v8, :cond_d

    .line 171
    .line 172
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 173
    .line 174
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    iput-boolean v8, v7, Lcom/join/mgps/activity/ForumPostsActivity$c0;->c:Z

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_d
    const/4 v8, 0x3

    .line 182
    if-ne v5, v8, :cond_e

    .line 183
    .line 184
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 185
    .line 186
    const-string v9, "asc"

    .line 187
    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_f

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_e
    const/4 v8, 0x4

    .line 196
    if-ne v5, v8, :cond_f

    .line 197
    .line 198
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 199
    .line 200
    const-string v9, "desc"

    .line 201
    .line 202
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-nez v8, :cond_f

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_f
    :goto_3
    iput v5, v7, Lcom/join/mgps/activity/ForumPostsActivity$c0;->a:I

    .line 210
    .line 211
    iput-object v6, v7, Lcom/join/mgps/activity/ForumPostsActivity$c0;->b:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 214
    .line 215
    invoke-virtual {v5, v7}, Lcom/join/mgps/activity/ForumPostsActivity$b0;->a(Lcom/join/mgps/activity/ForumPostsActivity$c0;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridAdapter:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    nop

    .line 229
    :array_0
    .array-data 4
        0x2
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method private initHListView()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$b;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->f(Lcom/join/mgps/activity/ForumPostsActivity$f0$c;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->matchListView:Lit/sephiroth/android/library/widget/HListView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private initViews()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFunction:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncHostImg()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity;->KEY_FORUM_POSTS_BEAN:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    new-array v4, v4, [Ljava/lang/Class;

    .line 40
    .line 41
    const-class v5, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 42
    .line 43
    invoke-virtual {v3, v5, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->finishM()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 64
    .line 65
    const-string v2, "ForumPostsVideoHelper"

    .line 66
    .line 67
    invoke-direct {v0, p0, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 73
    .line 74
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 83
    .line 84
    sget v2, Lcom/join/mgps/Util/r0;->e:I

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setPreLoadCount(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 90
    .line 91
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$t;

    .line 92
    .line 93
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$t;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumCommentAdapter;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsOnClickListener:Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->k0(Lcom/join/mgps/adapter/ForumCommentAdapter$w;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 124
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 131
    .line 132
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 135
    .line 136
    invoke-direct {v0, p0, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->headAdapter:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_head:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_head:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->headAdapter:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->fsv_stick:Lcom/join/mgps/customview/ForumStickView;

    .line 159
    .line 160
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumStickView;->setForumStickViewListener(Lcom/join/mgps/customview/ForumStickView$e;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->csl_view:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;

    .line 164
    .line 165
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$u;

    .line 166
    .line 167
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$u;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setOnVerticalScrollChangeListener(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lcom/join/mgps/dialog/y0;

    .line 174
    .line 175
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y0;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 181
    .line 182
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lcom/join/mgps/customview/KeyboardListenLayout;

    .line 190
    .line 191
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$v;

    .line 192
    .line 193
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$v;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/KeyboardListenLayout;->setOnSoftKeyboardListener(Lcom/join/mgps/customview/KeyboardListenLayout$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 205
    .line 206
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$w;

    .line 207
    .line 208
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$w;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Landroid/text/SpannableString;

    .line 215
    .line 216
    const-string v2, "\u6bcf\u6b21\u6700\u591a\u53ef\u4ee5\u5206\u4eab9\u5f20\u56fe"

    .line 217
    .line 218
    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 222
    .line 223
    const-string v3, "#808080"

    .line 224
    .line 225
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 230
    .line 231
    .line 232
    const/16 v3, 0x9

    .line 233
    .line 234
    const/16 v4, 0x21

    .line 235
    .line 236
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->footer_tip:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initHListView()V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initForumPostsFuncPopupWindow()V

    .line 248
    .line 249
    .line 250
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loading(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReload"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->reset()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->loadDBData()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, v0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->loadForumPostsData(ZZI)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const p1, 0x7f12031e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x11

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private playVideo()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->coverUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 26
    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lcom/join/android/app/component/video/MediaController;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/MediaController;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->q()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MyVideoView;->setMediaController(Lcom/join/android/app/component/video/MediaController;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->resume()V

    .line 127
    .line 128
    .line 129
    const-string v0, "play a last video ..."

    .line 130
    .line 131
    filled-new-array {v0}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MyVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "play a new video ..."

    .line 145
    .line 146
    filled-new-array {v0}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 154
    .line 155
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$m;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$m;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 164
    .line 165
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$n;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$n;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 174
    .line 175
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$o;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$o;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 184
    .line 185
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$p;

    .line 186
    .line 187
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$p;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->play:Landroid/widget/ImageView;

    .line 194
    .line 195
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$q;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$q;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method private processGagType(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_gag_type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumGagType:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumGagType:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumGagType:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumGagType:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->touristLogin()V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

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
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyUpdateUi(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyUpdateUi(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->Y4(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyUpdateUi(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyUpdateUi(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void
.end method

.method private receiveUpdate()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyUpdateUi(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private refreshCommentCount()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->e(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v1, "0"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private reversePraise()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 26
    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->modifyPraiseView(ZI)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private sendCommentReplyReplyRequest()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->validAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curCid:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 37
    .line 38
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/r0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->c0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/16 v4, 0x2c2

    .line 69
    .line 70
    if-ne v3, v4, :cond_3

    .line 71
    .line 72
    const v0, 0x7f1204ed

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->isResult()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    const-wide/16 v5, 0x3e8

    .line 137
    .line 138
    div-long/2addr v3, v5

    .line 139
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 140
    .line 141
    .line 142
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 145
    .line 146
    .line 147
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getRid()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_money()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_exp()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-ne v0, v2, :cond_5

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showPrePostingHintDialog(I)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_6

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_0
    return-void
.end method

.method private sendCommentReplyRequest()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->validAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curCid:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 37
    .line 38
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/r0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->G(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/16 v4, 0x2c2

    .line 69
    .line 70
    if-ne v3, v4, :cond_3

    .line 71
    .line 72
    const v0, 0x7f1204ed

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->isResult()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    const-wide/16 v5, 0x3e8

    .line 137
    .line 138
    div-long/2addr v3, v5

    .line 139
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 140
    .line 141
    .line 142
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getRid()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_money()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_exp()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-ne v0, v2, :cond_5

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showPrePostingHintDialog(I)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 210
    .line 211
    .line 212
    :goto_0
    return-void
.end method

.method private setPostGag(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "gagUid"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$d;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private showForumPostsFuncPopupWindow(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initForumPostsFuncPopupWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gridView:Lcom/join/mgps/customview/WrapContentGridView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncSortImg()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncBestImg()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initGridAdapterData()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 22
    .line 23
    const v1, 0x7f130544

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private showPromptDialog()V
    .locals 3

    .line 18
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->dialog4Event:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void

    :pswitch_2
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u4e3e\u62a5\u5417\uff1f"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u786e\u5b9a\u8981\u56de\u590d\u5417\uff1f"

    goto :goto_0

    .line 20
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostFavorite()V

    return-void

    :pswitch_5
    const-string v0, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    goto :goto_0

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u786e\u5b9a\u8981\u53d6\u6d88\u7cbe\u534e\u5417\uff1f"

    goto :goto_0

    :cond_0
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u7cbe\u534e\u5417\uff1f"

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Lcom/join/mgps/dialog/x0;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/x0;->f(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/x0;->d(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/x0;->b(I)V

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$i;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$j;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog4More:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a05cb
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showUserUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->layout_chat_cell_container:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private updatePostTitleView(Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_nickname:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->vipFlag:Lcom/join/mgps/customview/VipView;

    .line 9
    .line 10
    iget v1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->k:I

    .line 11
    .line 12
    iget v2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->l:I

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->f:Z

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_stickie:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_stickie:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->i:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->officialIcon:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->officialIcon:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :goto_2
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->h:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_nickname:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const v4, 0x7f06002b

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_moderator:Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_nickname:Landroid/widget/TextView;

    .line 82
    .line 83
    iget v3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->k:I

    .line 84
    .line 85
    iget v4, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->l:I

    .line 86
    .line 87
    const v5, 0x7f06014c

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v0, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_moderator:Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 99
    .line 100
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->c:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 106
    .line 107
    new-instance v3, Lcom/join/mgps/activity/ForumPostsActivity$c;

    .line 108
    .line 109
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->o:Z

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moderator:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moderator:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :goto_4
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->p:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_4

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->member_honor:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->member_honor:Landroid/widget/TextView;

    .line 144
    .line 145
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->p:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->member_honor:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    :goto_5
    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Landroid/view/View;

    .line 158
    .line 159
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 160
    .line 161
    aput-object v3, v0, v2

    .line 162
    .line 163
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_nickname:Landroid/widget/TextView;

    .line 164
    .line 165
    const/4 v4, 0x1

    .line 166
    aput-object v3, v0, v4

    .line 167
    .line 168
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    new-array v0, v4, [Landroid/view/View;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->vipFlag:Lcom/join/mgps/customview/VipView;

    .line 174
    .line 175
    aput-object v3, v0, v2

    .line 176
    .line 177
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->m:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->n:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->copperTitleTv:Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v4, :cond_7

    .line 187
    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_6

    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->copperTitleTv:Landroid/widget/TextView;

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->copperTitleTv:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const v1, 0x7f0805d1

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_5

    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    const/4 v2, 0x7

    .line 226
    if-ne v1, v2, :cond_5

    .line 227
    .line 228
    const-string v1, "#"

    .line 229
    .line 230
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_5

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_5
    const-string v3, "#2fccdf"

    .line 238
    .line 239
    :goto_6
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .line 240
    .line 241
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->copperTitleTv:Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->copperTitleTv:Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 267
    .line 268
    iget p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->b:I

    .line 269
    .line 270
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->setPostGag(Landroid/view/View;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :catch_1
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    .line 277
    .line 278
    :goto_8
    return-void
.end method


# virtual methods
.method addPostTag(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagList"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u6536\u5f55\u8bdd\u9898\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingAddTags:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingAddTags:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    :try_start_0
    invoke-static {p0, v5}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 53
    .line 54
    move-object v7, p1

    .line 55
    invoke-interface/range {v4 .. v9}, Lcom/join/mgps/rpc/i;->N(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 72
    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->isResult()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 v3, 0x0

    .line 83
    :goto_0
    if-eqz v3, :cond_2

    .line 84
    .line 85
    const-string v1, "\u6536\u5f55\u8bdd\u9898\u6210\u529f"

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyTagAdded(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const-string p1, ""

    .line 114
    .line 115
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingAddTags:Z

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_4

    .line 140
    :catch_0
    move-exception p1

    .line 141
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 148
    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :goto_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingAddTags:Z

    .line 156
    .line 157
    throw p1

    .line 158
    :cond_6
    const p1, 0x7f12031e

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingAddTags:Z

    .line 169
    .line 170
    :goto_5
    return-void
.end method

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initFields()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initViews()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->loading(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public autoPlayScroll(Landroidx/recyclerview/widget/RecyclerView;III)V
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
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->firstVisible:I

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->firstVisible:I

    .line 9
    .line 10
    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->visibleCount:I

    .line 11
    .line 12
    iput p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->totalCount:I

    .line 13
    .line 14
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->setResult4Request()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->finishM()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method btn_chat_extension()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 v1, 0x0

    .line 26
    :goto_1
    and-int v0, v3, v1

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showExtensionContentBoard()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->goMyAlbumActivity4PickPic()V

    .line 35
    .line 36
    .line 37
    :goto_2
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->validAccount()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const v0, 0x7f010095

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->reversePraise()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->praisePosts()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method btn_chat_send()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

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
    const-string v0, "\u56de\u590d\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

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
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "pa"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    if-ne v0, v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendComment()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v1, 0x2

    .line 80
    if-ne v0, v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendCommentReply()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v1, 0x4

    .line 87
    if-ne v0, v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendCommentReply()V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    return-void

    .line 93
    :cond_5
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method btn_chat_star()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const v0, 0x7f010095

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncFavoriteImg()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostFavorite()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method callbackPlayVideo(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "key_mediacmd"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "key_mediacmd_params"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "cmd="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "params="

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "callbackPlayVideo"

    .line 57
    .line 58
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x1

    .line 76
    const/4 v3, 0x0

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    move-object v1, v0

    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_0
    array-length v5, p1

    .line 83
    if-ge v4, v5, :cond_5

    .line 84
    .line 85
    aget-object v5, p1, v4

    .line 86
    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    if-eq v4, v2, :cond_2

    .line 92
    .line 93
    const/4 v6, 0x2

    .line 94
    if-eq v4, v6, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object v1, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v0, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget v6, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoIndex:I

    .line 106
    .line 107
    if-ne v5, v6, :cond_4

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stop()V

    .line 111
    .line 112
    .line 113
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoIndex:I

    .line 114
    .line 115
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "videoUrl="

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "coverUrl="

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v5, "CMD_PLAY"

    .line 153
    .line 154
    filled-new-array {v5, p1, v4}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isActive:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->setVideoContainerParams()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->play(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_6
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_a

    .line 192
    .line 193
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoIndex:I

    .line 194
    .line 195
    const/4 v1, -0x1

    .line 196
    if-ne v0, v1, :cond_7

    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    aget-object p1, p1, v3

    .line 200
    .line 201
    check-cast p1, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_8

    .line 208
    .line 209
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 210
    .line 211
    const/16 v0, 0x8

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isActive:Z

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stop()V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoIndex:I

    .line 229
    .line 230
    if-ne p1, v1, :cond_9

    .line 231
    .line 232
    return-void

    .line 233
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 239
    .line 240
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isActive:Z

    .line 244
    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :cond_a
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->pause()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_4

    .line 263
    .line 264
    :cond_b
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_c

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stop()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :cond_c
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_10

    .line 292
    .line 293
    const-string v0, "false"

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    :goto_2
    array-length v4, p1

    .line 297
    if-ge v1, v4, :cond_f

    .line 298
    .line 299
    if-nez v1, :cond_d

    .line 300
    .line 301
    aget-object v0, p1, v3

    .line 302
    .line 303
    check-cast v0, Ljava/lang/String;

    .line 304
    .line 305
    :cond_d
    if-ne v1, v2, :cond_e

    .line 306
    .line 307
    aget-object v4, p1, v2

    .line 308
    .line 309
    check-cast v4, Ljava/lang/String;

    .line 310
    .line 311
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->fullscreen()V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_10
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_14

    .line 332
    .line 333
    const-string v0, "0"

    .line 334
    .line 335
    move-object v1, v0

    .line 336
    const/4 v4, 0x0

    .line 337
    :goto_3
    array-length v5, p1

    .line 338
    if-ge v4, v5, :cond_13

    .line 339
    .line 340
    if-nez v4, :cond_11

    .line 341
    .line 342
    aget-object v0, p1, v3

    .line 343
    .line 344
    check-cast v0, Ljava/lang/String;

    .line 345
    .line 346
    :cond_11
    if-ne v4, v2, :cond_12

    .line 347
    .line 348
    aget-object v1, p1, v2

    .line 349
    .line 350
    check-cast v1, Ljava/lang/String;

    .line 351
    .line 352
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v2, "top="

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v3, "offset="

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    const-string v3, "CMD_TRANSLATE_Y"

    .line 398
    .line 399
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->offsetContainer(II)V

    .line 407
    .line 408
    .line 409
    :cond_14
    :goto_4
    return-void
.end method

.method public changeCommentUI(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showEmpty"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "from"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p2, v1, :cond_8

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p2, v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq p2, v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    if-eq p2, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xb

    .line 28
    .line 29
    if-eq p2, p1, :cond_7

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_b

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_b

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadedMap:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_b

    .line 162
    .line 163
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadingMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
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
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

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
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->l(I)V

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
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/CustomLoadingView;->o()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->l(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_2
    or-int/2addr p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 42
    .line 43
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$x;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$x;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/customview/CustomLoadingView;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->setListener(Lcom/join/mgps/customview/CustomLoadingView$e;)V

    .line 49
    .line 50
    .line 51
    const/16 p1, -0xb

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->checkFailed(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v0, 0x9

    .line 58
    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->l(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/16 p1, 0x16

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->checkFailed(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 82
    .line 83
    const-string v0, "\u8be5\u8d34\u5df2\u7ecf\u5220\u9664~"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 89
    .line 90
    const/16 v0, 0xa

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->l(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/16 p1, 0x1f

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->checkFailed(I)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    const/16 p1, 0x1a

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->checkFailed(I)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    const/16 p1, 0x11

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->checkFailed(I)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->l(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    :goto_0
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 132
    .line 133
    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CustomLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/CustomLoadingView;->l(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_1
    return-void
.end method

.method checkAndClearMessage()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionFunction:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 14
    .line 15
    .line 16
    :cond_1
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
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

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

.method clearCommentMessage()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curPid:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curCid:I

    .line 22
    .line 23
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_send:Landroid/widget/Button;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 50
    .line 51
    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshCommentCount()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method clearImageMemoryLruCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7
    .line 8
    .line 9
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
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

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

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;->isResult()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const-string v1, "\u8bc4\u8bba\u5df2\u5220\u9664"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentDeleteSuccess(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const p1, 0x7f12031e

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :catch_0
    move-exception p1

    .line 92
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    return-void

    .line 100
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 101
    .line 102
    .line 103
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
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processDeleteCommentReplySuccess(I)V

    .line 54
    .line 55
    .line 56
    const-string p1, "\u56de\u590d\u5df2\u5220\u9664"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostDelete:Z

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
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostDelete:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

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
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->finishM()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string v0, "\u5e16\u5b50\u5220\u9664\u5931\u8d25"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostDelete:Z

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
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostDelete:Z

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostDelete:Z

    .line 106
    .line 107
    :goto_3
    return-void
.end method

.method dismissFuncWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method dismissSendPromptDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

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
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->isIgnored(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

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
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 43
    .line 44
    .line 45
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->checkAndClearMessage()V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method doForumPostBest()V
    .locals 9
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
    if-eqz v0, :cond_e

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 15
    .line 16
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    move-object v2, v3

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    const v3, 0x7f120135

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f120142

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v5, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const-string v8, ""

    .line 81
    .line 82
    invoke-direct {v5, v6, v4, v7, v8}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v4, v5}, Lcom/join/mgps/rpc/i;->u0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_a

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    const/16 v0, 0x2bd

    .line 104
    .line 105
    if-eq v5, v0, :cond_3

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    const v0, 0x7f120141

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_4
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;

    .line 124
    .line 125
    if-eqz v4, :cond_9

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->isResult()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getBest()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-ne v4, v0, :cond_5

    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    const/4 v4, 0x0

    .line 142
    :goto_1
    if-eqz v4, :cond_6

    .line 143
    .line 144
    const v5, 0x7f120136

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    const v5, 0x7f120137

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    if-eqz v4, :cond_7

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    const/4 v0, 0x0

    .line 169
    :goto_3
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_b

    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_9
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_a
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 207
    .line 208
    if-eqz v0, :cond_d

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncBestImg()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    goto :goto_6

    .line 223
    :catch_1
    move-exception v0

    .line 224
    :try_start_3
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 225
    .line 226
    if-eqz v4, :cond_c

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncBestImg()V

    .line 236
    .line 237
    .line 238
    :cond_c
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    .line 247
    .line 248
    :cond_d
    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :goto_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 252
    .line 253
    throw v0

    .line 254
    :cond_e
    const v0, 0x7f12031e

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostBest:Z

    .line 265
    .line 266
    :goto_7
    return-void
.end method

.method doForumPostFavorite()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u5e16\u5b50\u6536\u85cf\u5931\u8d25"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    xor-int/2addr v1, v3

    .line 18
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncFavoriteImg()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->processMoreFuncFavoriteFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v3, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const-string v6, ""

    .line 68
    .line 69
    invoke-direct {v3, v4, v1, v5, v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/q;->z()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, "_"

    .line 97
    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->setApp_ver(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v1, v3}, Lcom/join/mgps/rpc/i;->F(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    const/16 v1, 0x2bd

    .line 130
    .line 131
    if-eq v3, v1, :cond_2

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->processMoreFuncFavoriteFailed()V

    .line 135
    .line 136
    .line 137
    const-string v1, "\u7528\u6237\u9a8c\u8bc1\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\uff01"

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;

    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncFavoriteImg()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_4

    .line 168
    .line 169
    const-string v3, "\u5e16\u5b50\u5df2\u6536\u85cf"

    .line 170
    .line 171
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    const-string v3, "\u5e16\u5b50\u5df2\u53d6\u6d88\u6536\u85cf"

    .line 176
    .line 177
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-static {v3, v1}, Lcom/join/mgps/Util/r0;->f1(IZ)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->processMoreFuncFavoriteFailed()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->processMoreFuncFavoriteFailed()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncFavoriteImg()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto :goto_3

    .line 213
    :catch_0
    move-exception v1

    .line 214
    :try_start_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->processMoreFuncFavoriteFailed()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .line 222
    .line 223
    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :goto_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 227
    .line 228
    throw v0

    .line 229
    :cond_7
    const v0, 0x7f12031e

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    const/16 v0, 0x11

    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 242
    .line 243
    .line 244
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingForumPostFavorite:Z

    .line 245
    .line 246
    :goto_4
    return-void
.end method

.method doForumPostReport()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/group/posts/forum_report/index?pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method doForumPostReport(II)V
    .locals 3
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

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/group/posts/forum_report/index?pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&rid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method doForumTagsAdd()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x1

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    move-object v3, p0

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goForumPostsTagSelectActivity(Landroid/content/Context;IILjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method doForumTagsDel()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x2

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    move-object v3, p0

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goForumPostsTagSelectActivity(Landroid/content/Context;IILjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method downloadGameById(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
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
    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->getGameDownloadInfoStatus:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v3, p1, v2, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 42
    .line 43
    invoke-interface {v2, p1}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadGameWhenInfoGotcha:Z

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception p1

    .line 104
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_1
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->getGameDownloadInfoStatus:I

    .line 111
    .line 112
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadGameWhenInfoGotcha:Z

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :goto_2
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->getGameDownloadInfoStatus:I

    .line 116
    .line 117
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadGameWhenInfoGotcha:Z

    .line 118
    .line 119
    throw p1

    .line 120
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :goto_3
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

.method fullscreen()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mFullScreenFlag:Z

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showUserUi()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->setVideoContainerParams()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->offsetContainer(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mFullScreenFlag:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideUserUi()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->resetVideoContainerParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method getCdnUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cdnUrl",
            "imgUrl"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const-string v0, "http"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method getSelectedIds()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 51
    .line 52
    if-eq v0, v2, :cond_1

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ","

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-object v1
.end method

.method getVideoDefaultHeight(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoDefaultHeight:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v1, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    sub-int/2addr v0, p1

    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    mul-float v0, v0, p1

    .line 33
    .line 34
    const p1, 0x3fe66666    # 1.8f

    .line 35
    .line 36
    .line 37
    div-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoDefaultHeight:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoDefaultHeight:I

    .line 42
    .line 43
    return p1
.end method

.method public goMyAlbumActivity4PickPic()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 14
    .line 15
    check-cast v2, Ljava/io/Serializable;

    .line 16
    .line 17
    const-string v3, "key_selected_images"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x100

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method helpSolvePosts(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pid",
            "rid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u91c7\u7eb3\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u64cd\u4f5c\uff01"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_7

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/r0;->d0(Landroid/content/Context;II)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/i;->g(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-nez p1, :cond_2

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

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    const/16 p1, 0x2bd

    .line 57
    .line 58
    if-eq v1, p1, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const p2, 0x7f120141

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;->isResult()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentHelpSolveSuccess(I)V

    .line 89
    .line 90
    .line 91
    const-string p1, "\u91c7\u7eb3\u6210\u529f\uff01"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :catch_0
    move-exception p1

    .line 122
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_7
    const p1, 0x7f12031e

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-void
.end method

.method hideExtensionBoard()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension:Landroid/widget/Button;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionFunction:Z

    .line 21
    .line 22
    return-void
.end method

.method public hideKeyBoardHandler()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->hideKeyBoardHandler()V

    .line 2
    .line 3
    .line 4
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
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 18
    .line 19
    return-void
.end method

.method image_add()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->goMyAlbumActivity4PickPic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initFields()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

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

.method isPlayPositionVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method loadForumPostsData(ZZI)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isReload",
            "clearComment",
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_18

    .line 10
    .line 11
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 12
    .line 13
    if-eqz v2, :cond_17

    .line 14
    .line 15
    iget v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_c

    .line 20
    .line 21
    :cond_0
    const/4 v13, -0x1

    .line 22
    if-ne v2, v13, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 29
    .line 30
    const/4 v15, 0x1

    .line 31
    const/4 v12, 0x0

    .line 32
    if-le v0, v15, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMoreLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const/16 v2, 0x18

    .line 40
    .line 41
    const/4 v14, 0x0

    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :cond_2
    :goto_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->extBean:Lcom/join/mgps/dto/ExtBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    move-object v11, v3

    .line 63
    move-object/from16 v25, v4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const-string v3, ""

    .line 67
    .line 68
    move-object v11, v3

    .line 69
    move-object/from16 v25, v11

    .line 70
    .line 71
    :goto_1
    if-ne v0, v15, :cond_5

    .line 72
    .line 73
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 80
    .line 81
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 84
    .line 85
    .line 86
    move-result v17

    .line 87
    sget v18, Lcom/join/mgps/Util/r0;->d:I

    .line 88
    .line 89
    iget v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 90
    .line 91
    iget-object v5, v1, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 94
    .line 95
    .line 96
    move-result v21

    .line 97
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v22

    .line 101
    const-string v23, ""

    .line 102
    .line 103
    move-object/from16 v16, v3

    .line 104
    .line 105
    move/from16 v19, v4

    .line 106
    .line 107
    move-object/from16 v20, v5

    .line 108
    .line 109
    move-object/from16 v24, v11

    .line 110
    .line 111
    invoke-interface/range {v16 .. v25}, Lcom/join/mgps/rpc/i;->l0(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 117
    .line 118
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    sget v6, Lcom/join/mgps/Util/r0;->d:I

    .line 125
    .line 126
    iget v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 127
    .line 128
    iget-object v8, v1, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 129
    .line 130
    const-string v9, ""

    .line 131
    .line 132
    move-object v10, v11

    .line 133
    move-object/from16 v11, v25

    .line 134
    .line 135
    invoke-interface/range {v4 .. v11}, Lcom/join/mgps/rpc/i;->l(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 136
    .line 137
    .line 138
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :goto_2
    const/4 v14, 0x0

    .line 140
    goto :goto_3

    .line 141
    :cond_5
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 148
    .line 149
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    sget v5, Lcom/join/mgps/Util/r0;->d:I

    .line 156
    .line 157
    iget v6, v1, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 158
    .line 159
    iget-object v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    const-string v10, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    .line 171
    move-object v2, v3

    .line 172
    move v3, v4

    .line 173
    move/from16 v4, p3

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    move-object/from16 v12, v25

    .line 177
    .line 178
    :try_start_5
    invoke-interface/range {v2 .. v12}, Lcom/join/mgps/rpc/i;->o0(IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    goto :goto_3

    .line 183
    :cond_6
    const/4 v14, 0x0

    .line 184
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 185
    .line 186
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    sget v5, Lcom/join/mgps/Util/r0;->d:I

    .line 193
    .line 194
    iget v6, v1, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 195
    .line 196
    iget-object v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 197
    .line 198
    const-string v8, ""

    .line 199
    .line 200
    move/from16 v4, p3

    .line 201
    .line 202
    move-object v9, v11

    .line 203
    move-object/from16 v10, v25

    .line 204
    .line 205
    invoke-interface/range {v2 .. v10}, Lcom/join/mgps/rpc/i;->v0(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_3
    if-eqz v2, :cond_13

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumPostsData;

    .line 216
    .line 217
    if-eqz v2, :cond_11

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getComment_list()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getForum_gag_type()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    if-ne v0, v15, :cond_9

    .line 232
    .line 233
    if-eqz v3, :cond_7

    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-nez v5, :cond_9

    .line 240
    .line 241
    :cond_7
    iput v13, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 242
    .line 243
    const/16 v0, 0x14

    .line 244
    .line 245
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    .line 247
    .line 248
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 249
    .line 250
    if-eq v0, v13, :cond_8

    .line 251
    .line 252
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 253
    .line 254
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_9
    if-ne v0, v15, :cond_a

    .line 259
    .line 260
    if-eqz p1, :cond_a

    .line 261
    .line 262
    :try_start_6
    invoke-virtual {v1, v3, v15}, Lcom/join/mgps/activity/ForumPostsActivity;->setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->processPostsInfo(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->processGagType(Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    if-eqz p2, :cond_b

    .line 272
    .line 273
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 274
    .line 275
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 276
    .line 277
    .line 278
    :cond_b
    if-eqz v4, :cond_c

    .line 279
    .line 280
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_c

    .line 285
    .line 286
    iput v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->pageCount:I

    .line 287
    .line 288
    invoke-virtual {v1, v4, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentList(Ljava/util/List;I)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_c
    iput v13, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 293
    .line 294
    if-ne v0, v15, :cond_d

    .line 295
    .line 296
    iput v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->pageCount:I

    .line 297
    .line 298
    :cond_d
    :goto_4
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 299
    .line 300
    if-eqz v0, :cond_f

    .line 301
    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-gtz v0, :cond_e

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_e
    const/4 v12, 0x0

    .line 310
    goto :goto_6

    .line 311
    :cond_f
    :goto_5
    const/4 v12, 0x1

    .line 312
    :goto_6
    invoke-virtual {v1, v12}, Lcom/join/mgps/activity/ForumPostsActivity;->changeCommentUI(Z)V

    .line 313
    .line 314
    .line 315
    const/16 v0, 0x20

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 318
    .line 319
    .line 320
    if-nez p1, :cond_10

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_10
    const/4 v15, 0x0

    .line 324
    :goto_7
    invoke-virtual {v1, v15}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 325
    .line 326
    .line 327
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 328
    .line 329
    if-eq v0, v13, :cond_15

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_11
    const/16 v2, 0x18

    .line 333
    .line 334
    :try_start_7
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 335
    .line 336
    .line 337
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 338
    .line 339
    if-eq v0, v13, :cond_12

    .line 340
    .line 341
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 342
    .line 343
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_13
    :try_start_8
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 348
    .line 349
    const/16 v2, 0x18

    .line 350
    .line 351
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 352
    .line 353
    .line 354
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 355
    .line 356
    if-eq v0, v13, :cond_14

    .line 357
    .line 358
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 359
    .line 360
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :catch_1
    move-exception v0

    .line 365
    goto :goto_8

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    const/4 v14, 0x0

    .line 368
    goto :goto_b

    .line 369
    :catch_2
    move-exception v0

    .line 370
    const/4 v14, 0x0

    .line 371
    :goto_8
    const/16 v2, 0x18

    .line 372
    .line 373
    :goto_9
    :try_start_9
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 377
    .line 378
    .line 379
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 380
    .line 381
    if-eq v0, v13, :cond_15

    .line 382
    .line 383
    :goto_a
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 384
    .line 385
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 386
    .line 387
    .line 388
    goto :goto_d

    .line 389
    :catchall_1
    move-exception v0

    .line 390
    :goto_b
    iget v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 391
    .line 392
    if-eq v2, v13, :cond_16

    .line 393
    .line 394
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 395
    .line 396
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 397
    .line 398
    .line 399
    throw v0

    .line 400
    :cond_17
    :goto_c
    return-void

    .line 401
    :cond_18
    const v0, 0x7f12031e

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    const/16 v0, 0x11

    .line 412
    .line 413
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 417
    .line 418
    .line 419
    :goto_d
    return-void
.end method

.method lodingVideo()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 4
    .line 5
    const p2, 0x7f0808f0

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 13
    .line 14
    const p2, 0x7f0808f8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method notifyAdapter(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReload"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method notifyPlayViewOffset()V
    .locals 0

    return-void
.end method

.method notifyTagAdded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagList"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method notifyTagRemoved(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagList"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method notifyUpdateUi(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "event"
        }
    .end annotation

    return-void
.end method

.method offsetContainer(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "top",
            "offsetY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    neg-int p1, p1

    .line 28
    int-to-float p1, p1

    .line 29
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mTop:I

    .line 34
    .line 35
    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mOffsetY:I

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p2, "mTop="

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mTop:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "mOffsetY="

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mOffsetY:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v0, "offsetContainer"

    .line 76
    .line 77
    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    iget p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mOffsetY:I

    .line 87
    .line 88
    int-to-float p2, p2

    .line 89
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
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
    const/16 v0, 0x100

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->notifyDataSetChanged()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->d(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-lez p1, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showExtensionContentBoard()V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/16 v0, 0x2711

    .line 57
    .line 58
    if-ne p1, v0, :cond_5

    .line 59
    .line 60
    if-eqz p3, :cond_5

    .line 61
    .line 62
    const/4 p1, -0x1

    .line 63
    if-eq p2, p1, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, ""

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    const-string p2, "action"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const-string p3, "ids"

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    move v6, p2

    .line 87
    move-object p2, p1

    .line 88
    move p1, v6

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 p1, 0x0

    .line 91
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-class v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    new-array v4, v3, [Ljava/lang/Class;

    .line 103
    .line 104
    const-class v5, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 105
    .line 106
    aput-object v5, v4, v1

    .line 107
    .line 108
    invoke-virtual {v0, v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p3, p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Ljava/util/List;

    .line 117
    .line 118
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 119
    .line 120
    if-ne p1, v3, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->getSelectedIds()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->addPostTag(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 p2, 0x2

    .line 131
    if-ne p1, p2, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->getSelectedIds()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->removePostTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :cond_5
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->setResult4Request()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method onClickMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a62
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initForumPostsFuncPopupWindow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->iv_more:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showForumPostsFuncPopupWindow(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->videoConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 31
    .line 32
    .line 33
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setSystemUiHide(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setSystemUiHide(Z)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dialog/y0;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 18
    .line 19
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->y(Lnet/bither/util/b$e;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/Hashtable;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 38
    .line 39
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Ljava/util/Hashtable;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, v0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearImageMemoryLruCache()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "zip DownloadStatus ="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq p1, v1, :cond_5

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq p1, v2, :cond_4

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    if-eq p1, v1, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    if-eq p1, v3, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    if-eq p1, v3, :cond_1

    .line 47
    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    if-eq p1, v2, :cond_0

    .line 51
    .line 52
    const/16 v4, 0x30

    .line 53
    .line 54
    if-eq p1, v4, :cond_3

    .line 55
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_0
    const/16 p1, 0x9

    .line 61
    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 p1, 0x4

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFavoriteChanged(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pid",
            "isFavorite"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onFavoriteChanged(IZ)V

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
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/r0;->j(IZLjava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mFullScreenFlag:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->toggleFullScreen()V

    .line 27
    .line 28
    .line 29
    return p1

    .line 30
    :cond_0
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->finishM()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stop()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mAbsListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mItemsPositionGetter:Lcom/join/mgps/recycler/c;

    .line 27
    .line 28
    :goto_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method onPayGameSuccess(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
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

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->e(Lnet/bither/util/b$e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method onScrollStickView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a13d3
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->csl_view:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->fsv_stick:Lcom/join/mgps/customview/ForumStickView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c0(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/2addr v0, v2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->play:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method play(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoUrl",
            "coverUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->pause()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoUrl:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->resume()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoUrl:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->coverUrl:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stop()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    .line 72
    const/16 p2, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->play:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->playVideo()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method playBackground(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "key_mediacmd"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "key_mediacmd_params"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method postFuncHost()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncHostImg()V

    .line 18
    .line 19
    .line 20
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 21
    .line 22
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 23
    .line 24
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->pageCount:I

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->loading(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method postFuncMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->initForumPostsFuncPopupWindow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mForumPostsFuncWindow:Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showForumPostsFuncPopupWindow(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method postFuncSort()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "asc"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "desc"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncSortImg()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingState:I

    .line 28
    .line 29
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->loading(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method postGag(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "guid",
            "timeType",
            "remarks"
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
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingPostGag:Z

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
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingPostGag:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;

    .line 38
    .line 39
    invoke-direct {v4}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setUid(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setToken(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setGag_uid(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p2}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setGag_time(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p3}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setRemarks(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/i;->L(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumResult;

    .line 80
    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumResult;->isResult()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    .line 91
    :goto_0
    if-eqz v2, :cond_2

    .line 92
    .line 93
    const-string p1, "\u7981\u8a00\u6210\u529f"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumResult;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumResult;->getMsg()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string p1, ""

    .line 119
    .line 120
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const-string p1, "\u7981\u8a00\u5931\u8d25"

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    goto :goto_3

    .line 138
    :catch_0
    move-exception p1

    .line 139
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingPostGag:Z

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingPostGag:Z

    .line 146
    .line 147
    throw p1

    .line 148
    :cond_5
    const p1, 0x7f12031e

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingPostGag:Z

    .line 159
    .line 160
    :goto_4
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
    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curPid:I

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->R(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x2c2

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->reversePraise()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    const-string v2, "\u70b9\u8d5e\u6210\u529f"

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    if-eqz v2, :cond_5

    .line 88
    .line 89
    const-string v2, "\u70b9\u8d5e\u5931\u8d25"

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/r0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

.method preLoadImages(Landroid/widget/ListView;III)V
    .locals 3
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
            "lastVisiblePos",
            "totalItemCount"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 p2, 0x1

    .line 2
    sub-int/2addr p4, p2

    .line 3
    if-eq p3, p4, :cond_7

    .line 4
    .line 5
    iget-boolean p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isPreLoading:Z

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    const/4 p4, 0x0

    .line 11
    :try_start_0
    iput-boolean p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isPreLoading:Z

    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, p3, 0x1

    .line 19
    .line 20
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ge v0, v1, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$l;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$l;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$l;->a:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const/4 p1, 0x0

    .line 83
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-ge p1, p3, :cond_6

    .line 88
    .line 89
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p3}, Lcom/join/android/app/common/utils/l;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_3

    .line 103
    :catch_0
    move-exception p1

    .line 104
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_6
    iput-boolean p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isPreLoading:Z

    .line 108
    .line 109
    return-void

    .line 110
    :goto_3
    iput-boolean p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isPreLoading:Z

    .line 111
    .line 112
    throw p1

    .line 113
    :cond_7
    :goto_4
    return-void
.end method

.method processCommentDeleteSuccess(I)V
    .locals 1
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
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshCommentCount()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method processCommentHelpSolveSuccess(I)V
    .locals 5
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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setSolve_flg(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    instance-of v4, v4, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v4, p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAnswer_flg(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method processCommentList(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comment_list",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 22
    .line 23
    invoke-virtual {p0, v1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->wrapCommentItem(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshCommentCount()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->lodingVideo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 5
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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v3, v3, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curCid:I

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshCommentCount()V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v1, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-void
.end method

.method processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 8
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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_5

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->newAdapter:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v3, v3, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 32
    .line 33
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curCid:I

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ge v4, v5, :cond_4

    .line 69
    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-ne v6, v7, :cond_2

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 104
    .line 105
    .line 106
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_5
    :goto_4
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v1, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :goto_5
    return-void
.end method

.method processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 1
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
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method processDeleteCommentReplySuccess(I)V
    .locals 0
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

    return-void
.end method

.method processMoreFuncFavoriteFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncHostImg()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method processPostsGame(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gameInfo:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gameInfo:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasks:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->downloadTasksMap:Ljava/util/Map;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method processPostsInfo(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->modifyPraiseView(ZI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncFavoriteImg()V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processPostsGame(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method processSendCommentResult(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    .locals 7
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
    if-nez p2, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteTempPic(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->isResult()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPid()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPid(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setUid(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setNickname(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAvatar_src(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setMessage(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    const-wide/16 v5, 0x3e8

    .line 93
    .line 94
    div-long/2addr v3, v5

    .line 95
    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAdd_time(J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPic_list()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPic_list(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getRaw_pic_list()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setRaw_pic_list(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getFloor()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setFloor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x3

    .line 126
    const/4 v5, 0x0

    .line 127
    if-ne v3, v4, :cond_2

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const/4 v3, 0x0

    .line 132
    :goto_0
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setForum_auth(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    :try_start_2
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v3}, Lcom/join/mgps/Util/b;->vl(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :catch_0
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setVip_level(I)V

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setSvip_level(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->is_moderator()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setIs_moderator(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMember_honor()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setMember_honor(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 190
    .line 191
    .line 192
    sget-object v1, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_money()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_exp()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-virtual {p0, v1, v2, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->processSendCommentResultRefreshCommenCount(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteTempPic(Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-ne v1, v0, :cond_6

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->showPrePostingHintDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 236
    .line 237
    if-eqz p2, :cond_5

    .line 238
    .line 239
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteTempPic(Ljava/util/List;)V

    .line 247
    .line 248
    .line 249
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_6
    :try_start_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_7

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .line 276
    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 278
    .line 279
    .line 280
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 281
    .line 282
    if-eqz p2, :cond_8

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :catchall_0
    move-exception p2

    .line 286
    goto :goto_3

    .line 287
    :catch_1
    move-exception p2

    .line 288
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 295
    .line 296
    .line 297
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 298
    .line 299
    if-eqz p2, :cond_8

    .line 300
    .line 301
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteTempPic(Ljava/util/List;)V

    .line 309
    .line 310
    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mSelectedImages:Ljava/util/List;

    .line 319
    .line 320
    if-eqz v0, :cond_9

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteTempPic(Ljava/util/List;)V

    .line 330
    .line 331
    .line 332
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 333
    .line 334
    .line 335
    throw p2
.end method

.method processSendCommentResultRefreshCommenCount(I)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr v1, p1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method refreshActive()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isActive:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method refreshMoreFuncBestImg()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBestImg:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBestImg:Landroid/widget/ImageView;

    .line 16
    .line 17
    const v1, 0x7f080d64

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBestImg:Landroid/widget/ImageView;

    .line 25
    .line 26
    const v1, 0x7f080d63

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method refreshMoreFuncFavoriteImg()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 15
    .line 16
    const v1, 0x7f0808f6

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 24
    .line 25
    const v1, 0x7f0808f7

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method refreshMoreFuncHostImg()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->see_lz:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncHost:Landroid/widget/TextView;

    .line 6
    .line 7
    const v1, -0xaaaaab

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncHost:Landroid/widget/TextView;

    .line 14
    .line 15
    const v1, 0x7f080f33

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncHost:Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncHost:Landroid/widget/TextView;

    .line 29
    .line 30
    const v1, 0x7f080f34

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method refreshMoreFuncSortImg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncBestImg:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->comment_order:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "asc"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncSortImg:Landroid/widget/ImageView;

    .line 17
    .line 18
    const v1, 0x7f080d61

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moreFuncSortImg:Landroid/widget/ImageView;

    .line 26
    .line 27
    const v1, 0x7f080d62

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method removePostTag(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagList"
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
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingRemoveTags:Z

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
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingRemoveTags:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    :try_start_0
    invoke-static {p0, v4}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 51
    .line 52
    move-object v6, p1

    .line 53
    invoke-interface/range {v3 .. v8}, Lcom/join/mgps/rpc/i;->m0(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->isResult()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 81
    :goto_0
    if-eqz v2, :cond_2

    .line 82
    .line 83
    const-string v0, "\u79fb\u9664\u8bdd\u9898\u6210\u529f"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyTagRemoved(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string p1, ""

    .line 112
    .line 113
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const-string p1, "\u79fb\u9664\u8bdd\u9898\u5931\u8d25"

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingRemoveTags:Z

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_4

    .line 140
    :catch_0
    move-exception p1

    .line 141
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->selectedItems:Ljava/util/List;

    .line 145
    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingRemoveTags:Z

    .line 153
    .line 154
    throw p1

    .line 155
    :cond_6
    const p1, 0x7f12031e

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingRemoveTags:Z

    .line 166
    .line 167
    :goto_5
    return-void
.end method

.method resetVideoContainerParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    .line 15
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setTop(I)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->play:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->playVideo()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method sendComment()V
    .locals 2
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
    if-eqz v1, :cond_2

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
    const-string v1, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->toggleSendOn:I

    .line 48
    .line 49
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lnet/bither/util/b;->x()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->toggleSendOn:I

    .line 64
    .line 65
    const v1, 0x7f12031e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    throw v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->toggleSendOn:I

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method sendCommentReply()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curMessage:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :try_start_2
    iget v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curRid:I

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendCommentReplyRequest()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendCommentReplyReplyRequest()V

    .line 65
    .line 66
    .line 67
    :goto_0
    monitor-exit v0

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    throw v1

    .line 72
    :cond_2
    const-string v0, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    const v0, 0x7f12031e

    .line 82
    .line 83
    .line 84
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method public setAllText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->headAdapter:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->v0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setFirstPost()V
    .locals 6
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
    if-eqz v0, :cond_8

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingSetFirstPost:Z

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
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingSetFirstPost:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :try_start_0
    iget-object v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 39
    .line 40
    invoke-interface {v5, v0, v3, v4}, Lcom/join/mgps/rpc/i;->D(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/join/mgps/dto/ForumData$ForumResult;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumResult;->isResult()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v3, 0x0

    .line 69
    :cond_2
    const/4 v4, 0x0

    .line 70
    :goto_0
    if-eqz v4, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eq v0, v2, :cond_3

    .line 79
    .line 80
    const-string v0, "\u5e16\u5b50\u7f6e\u9876\u6210\u529f"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const-string v0, "\u5e16\u5b50\u53d6\u6d88\u7f6e\u9876\u6210\u529f"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumResult;->isFirst()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v2, 0x0

    .line 101
    :goto_2
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setFirst(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumResult;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumResult;->getMsg()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    const-string v0, ""

    .line 125
    .line 126
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_7
    const-string v0, "\u5e16\u5b50\u7f6e\u9876\u5931\u8d25"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto :goto_5

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingSetFirstPost:Z

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingSetFirstPost:Z

    .line 152
    .line 153
    throw v0

    .line 154
    :cond_8
    const v0, 0x7f12031e

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->doingSetFirstPost:Z

    .line 165
    .line 166
    :goto_6
    return-void
.end method

.method setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V
    .locals 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posts",
            "isShowFooterDivider"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "newSpan"

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, ""

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    :cond_1
    new-instance v2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 45
    .line 46
    sget-object v6, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 47
    .line 48
    new-instance v15, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;

    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-lez v7, :cond_2

    .line 55
    .line 56
    const/4 v8, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v8, 0x0

    .line 59
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-lez v7, :cond_3

    .line 68
    .line 69
    const/4 v10, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v10, 0x0

    .line 72
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    move-object v7, v15

    .line 108
    move-object v4, v15

    .line 109
    move-object/from16 v15, v16

    .line 110
    .line 111
    invoke-direct/range {v7 .. v15}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_4
    new-instance v2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;

    .line 123
    .line 124
    const/16 v18, 0x1

    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 127
    .line 128
    .line 129
    move-result v19

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v20

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v21

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAdd_time()J

    .line 139
    .line 140
    .line 141
    move-result-wide v22

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-lez v4, :cond_5

    .line 147
    .line 148
    const/16 v24, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const/16 v24, 0x0

    .line 152
    .line 153
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 154
    .line 155
    .line 156
    move-result v25

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_auth()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-ne v4, v5, :cond_6

    .line 162
    .line 163
    const/16 v26, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    const/16 v26, 0x0

    .line 167
    .line 168
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isOfficialAccount()Z

    .line 169
    .line 170
    .line 171
    move-result v27

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 173
    .line 174
    .line 175
    move-result v28

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getVip_level()I

    .line 177
    .line 178
    .line 179
    move-result v29

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSvip_level()I

    .line 181
    .line 182
    .line 183
    move-result v30

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    if-eqz v4, :cond_7

    .line 189
    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    move-object/from16 v31, v4

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    move-object/from16 v31, v3

    .line 202
    .line 203
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-eqz v4, :cond_8

    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    move-object/from16 v32, v4

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_8
    move-object/from16 v32, v3

    .line 221
    .line 222
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_moderator()Z

    .line 223
    .line 224
    .line 225
    move-result v33

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMember_honor()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v34

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v35

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 235
    .line 236
    .line 237
    move-result v36

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-lez v4, :cond_9

    .line 243
    .line 244
    const/16 v37, 0x1

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_9
    const/16 v37, 0x0

    .line 248
    .line 249
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v38

    .line 268
    move-object/from16 v17, v2

    .line 269
    .line 270
    invoke-direct/range {v17 .. v38}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;-><init>(ZILjava/lang/String;Ljava/lang/String;JZIZZIIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->updatePostTitleView(Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;)V

    .line 274
    .line 275
    .line 276
    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 277
    .line 278
    sget-object v6, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 279
    .line 280
    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_a

    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    goto :goto_7

    .line 303
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_b

    .line 312
    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    goto :goto_7

    .line 318
    :cond_b
    move-object v2, v3

    .line 319
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_21

    .line 328
    .line 329
    new-instance v4, Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    const/4 v7, 0x0

    .line 347
    if-nez v6, :cond_1d

    .line 348
    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-static {v6}, Lcom/join/mgps/Util/HtmlDocUtil;->d(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_1d

    .line 358
    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    if-eqz v6, :cond_c

    .line 372
    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-lez v6, :cond_c

    .line 378
    .line 379
    const/4 v6, 0x1

    .line 380
    goto :goto_8

    .line 381
    :cond_c
    const/4 v6, 0x0

    .line 382
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-eqz v8, :cond_d

    .line 395
    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    if-lez v8, :cond_d

    .line 401
    .line 402
    const/4 v8, 0x1

    .line 403
    goto :goto_9

    .line 404
    :cond_d
    const/4 v8, 0x0

    .line 405
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    if-eqz v9, :cond_f

    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-static {v9}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    if-eqz v9, :cond_e

    .line 424
    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    if-eqz v9, :cond_f

    .line 430
    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 436
    .line 437
    .line 438
    move-result v9

    .line 439
    if-nez v9, :cond_e

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_e
    const/4 v9, 0x0

    .line 443
    goto :goto_b

    .line 444
    :cond_f
    :goto_a
    const/4 v9, 0x1

    .line 445
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    invoke-static {v10}, Lcom/join/mgps/Util/HtmlDocUtil;->c(Ljava/lang/String;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    new-instance v11, Landroid/text/SpannableStringBuilder;

    .line 454
    .line 455
    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 459
    .line 460
    .line 461
    const/4 v12, 0x0

    .line 462
    :goto_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 463
    .line 464
    .line 465
    move-result v13

    .line 466
    if-ge v12, v13, :cond_1c

    .line 467
    .line 468
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v13

    .line 472
    check-cast v13, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 473
    .line 474
    sget-object v14, Lcom/join/mgps/activity/ForumPostsActivity$r;->a:[I

    .line 475
    .line 476
    iget-object v15, v13, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 477
    .line 478
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 479
    .line 480
    .line 481
    move-result v15

    .line 482
    aget v14, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .line 484
    const-string v15, "\n"

    .line 485
    .line 486
    if-eq v14, v5, :cond_17

    .line 487
    .line 488
    const/4 v5, 0x2

    .line 489
    if-eq v14, v5, :cond_16

    .line 490
    .line 491
    const/4 v5, 0x3

    .line 492
    if-eq v14, v5, :cond_15

    .line 493
    .line 494
    const/4 v5, 0x4

    .line 495
    if-eq v14, v5, :cond_10

    .line 496
    .line 497
    move-object/from16 v17, v0

    .line 498
    .line 499
    :goto_d
    move-object v5, v7

    .line 500
    :goto_e
    const/4 v13, 0x1

    .line 501
    goto/16 :goto_15

    .line 502
    .line 503
    :cond_10
    :try_start_1
    invoke-virtual {v13}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    check-cast v5, Lcom/join/mgps/Util/HtmlDocUtil$e;

    .line 508
    .line 509
    invoke-virtual {v5}, Lcom/join/mgps/Util/HtmlDocUtil$e;->d()Landroid/text/SpannableStringBuilder;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result v13

    .line 525
    if-nez v13, :cond_11

    .line 526
    .line 527
    invoke-virtual {v11, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v11, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 531
    .line 532
    .line 533
    :cond_11
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    const-string v13, "span"

    .line 538
    .line 539
    invoke-virtual {v5, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    new-instance v13, Lcom/join/mgps/customview/text/a;

    .line 544
    .line 545
    invoke-direct {v13, v0, v1}, Lcom/join/mgps/customview/text/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 546
    .line 547
    .line 548
    invoke-static {v5, v7, v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    .line 549
    .line 550
    .line 551
    move-result-object v19

    .line 552
    new-instance v5, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 553
    .line 554
    sget-object v13, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_RICH_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 555
    .line 556
    new-instance v14, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$n;

    .line 557
    .line 558
    const/4 v15, 0x1

    .line 559
    if-ne v6, v15, :cond_12

    .line 560
    .line 561
    if-nez v12, :cond_12

    .line 562
    .line 563
    const/16 v18, 0x1

    .line 564
    .line 565
    goto :goto_f

    .line 566
    :cond_12
    const/16 v18, 0x0

    .line 567
    .line 568
    :goto_f
    if-ne v8, v15, :cond_13

    .line 569
    .line 570
    if-nez v12, :cond_13

    .line 571
    .line 572
    const/16 v20, 0x1

    .line 573
    .line 574
    goto :goto_10

    .line 575
    :cond_13
    const/16 v20, 0x0

    .line 576
    .line 577
    :goto_10
    new-instance v15, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v21

    .line 596
    const/4 v7, 0x1

    .line 597
    if-ne v9, v7, :cond_14

    .line 598
    .line 599
    if-nez v12, :cond_14

    .line 600
    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    move-object/from16 v22, v7

    .line 606
    .line 607
    goto :goto_11

    .line 608
    :cond_14
    const/16 v22, 0x0

    .line 609
    .line 610
    :goto_11
    move-object/from16 v17, v14

    .line 611
    .line 612
    invoke-direct/range {v17 .. v22}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$n;-><init>(ZLandroid/text/Spanned;ZLjava/lang/String;Ljava/util/List;)V

    .line 613
    .line 614
    .line 615
    invoke-direct {v5, v13, v14}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v17, v0

    .line 619
    .line 620
    goto :goto_e

    .line 621
    :cond_15
    invoke-virtual {v13}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    check-cast v5, Lcom/join/mgps/Util/HtmlDocUtil$d;

    .line 626
    .line 627
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 628
    .line 629
    sget-object v13, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 630
    .line 631
    new-instance v14, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;

    .line 632
    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v15

    .line 637
    move-object/from16 v17, v0

    .line 638
    .line 639
    invoke-virtual {v5}, Lcom/join/mgps/Util/HtmlDocUtil$d;->d()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v1, v15, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->getCdnUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    iget-object v5, v5, Lcom/join/mgps/Util/HtmlDocUtil$d;->d:Ljava/lang/String;

    .line 648
    .line 649
    invoke-direct {v14, v0, v5, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-direct {v7, v13, v14}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 653
    .line 654
    .line 655
    goto/16 :goto_d

    .line 656
    .line 657
    :cond_16
    move-object/from16 v17, v0

    .line 658
    .line 659
    invoke-virtual {v13}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    check-cast v0, Lcom/join/mgps/Util/HtmlDocUtil$b;

    .line 664
    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    invoke-virtual {v0}, Lcom/join/mgps/Util/HtmlDocUtil$b;->e()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v7

    .line 673
    invoke-virtual {v1, v5, v7}, Lcom/join/mgps/activity/ForumPostsActivity;->getCdnUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    new-instance v5, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 681
    .line 682
    sget-object v7, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 683
    .line 684
    new-instance v13, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;

    .line 685
    .line 686
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v14

    .line 690
    invoke-virtual {v0}, Lcom/join/mgps/Util/HtmlDocUtil$b;->d()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v1, v14, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->getCdnUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 699
    .line 700
    .line 701
    move-result v14

    .line 702
    const/4 v15, 0x1

    .line 703
    sub-int/2addr v14, v15

    .line 704
    invoke-direct {v13, v0, v14, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 705
    .line 706
    .line 707
    invoke-direct {v5, v7, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :cond_17
    move-object/from16 v17, v0

    .line 713
    .line 714
    invoke-virtual {v13}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    check-cast v0, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 719
    .line 720
    invoke-virtual {v0}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-nez v5, :cond_18

    .line 737
    .line 738
    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v11, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 742
    .line 743
    .line 744
    :cond_18
    new-instance v5, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 745
    .line 746
    sget-object v0, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 747
    .line 748
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;

    .line 749
    .line 750
    const/4 v14, 0x1

    .line 751
    if-ne v6, v14, :cond_19

    .line 752
    .line 753
    if-nez v12, :cond_19

    .line 754
    .line 755
    const/16 v25, 0x1

    .line 756
    .line 757
    goto :goto_12

    .line 758
    :cond_19
    const/16 v25, 0x0

    .line 759
    .line 760
    :goto_12
    invoke-virtual {v13}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v13

    .line 764
    check-cast v13, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 765
    .line 766
    invoke-virtual {v13}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    .line 767
    .line 768
    .line 769
    move-result-object v26

    .line 770
    const/4 v13, 0x1

    .line 771
    if-ne v8, v13, :cond_1a

    .line 772
    .line 773
    if-nez v12, :cond_1a

    .line 774
    .line 775
    const/16 v27, 0x1

    .line 776
    .line 777
    goto :goto_13

    .line 778
    :cond_1a
    const/16 v27, 0x0

    .line 779
    .line 780
    :goto_13
    new-instance v13, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .line 784
    .line 785
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 786
    .line 787
    .line 788
    move-result v14

    .line 789
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v28

    .line 799
    const/4 v13, 0x1

    .line 800
    if-ne v9, v13, :cond_1b

    .line 801
    .line 802
    if-nez v12, :cond_1b

    .line 803
    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 805
    .line 806
    .line 807
    move-result-object v14

    .line 808
    move-object/from16 v29, v14

    .line 809
    .line 810
    goto :goto_14

    .line 811
    :cond_1b
    const/16 v29, 0x0

    .line 812
    .line 813
    :goto_14
    move-object/from16 v24, v7

    .line 814
    .line 815
    invoke-direct/range {v24 .. v29}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;-><init>(ZLandroid/text/SpannableStringBuilder;ZLjava/lang/String;Ljava/util/List;)V

    .line 816
    .line 817
    .line 818
    invoke-direct {v5, v0, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    :goto_15
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 822
    .line 823
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    add-int/lit8 v12, v12, 0x1

    .line 827
    .line 828
    move-object/from16 v0, v17

    .line 829
    .line 830
    const/4 v5, 0x1

    .line 831
    const/4 v7, 0x0

    .line 832
    goto/16 :goto_c

    .line 833
    .line 834
    :cond_1c
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    if-nez v2, :cond_21

    .line 843
    .line 844
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->setAllText(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    goto :goto_19

    .line 848
    :cond_1d
    const/4 v13, 0x1

    .line 849
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 850
    .line 851
    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 852
    .line 853
    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;

    .line 854
    .line 855
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    if-eqz v5, :cond_1e

    .line 868
    .line 869
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    if-lez v5, :cond_1e

    .line 874
    .line 875
    goto :goto_16

    .line 876
    :cond_1e
    const/4 v13, 0x0

    .line 877
    :goto_16
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 878
    .line 879
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v6

    .line 886
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 887
    .line 888
    .line 889
    move-result-object v5

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v6

    .line 894
    if-nez v6, :cond_20

    .line 895
    .line 896
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v6

    .line 900
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v6

    .line 904
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 905
    .line 906
    .line 907
    move-result v6

    .line 908
    if-eqz v6, :cond_1f

    .line 909
    .line 910
    goto :goto_17

    .line 911
    :cond_1f
    const/4 v7, 0x0

    .line 912
    goto :goto_18

    .line 913
    :cond_20
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 914
    .line 915
    .line 916
    move-result-object v7

    .line 917
    :goto_18
    invoke-direct {v4, v13, v5, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;-><init>(ZLandroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 918
    .line 919
    .line 920
    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 921
    .line 922
    .line 923
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 924
    .line 925
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    .line 927
    .line 928
    goto :goto_19

    .line 929
    :catch_0
    move-exception v0

    .line 930
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 931
    .line 932
    .line 933
    :cond_21
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    if-eqz v0, :cond_23

    .line 938
    .line 939
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    if-nez v0, :cond_23

    .line 952
    .line 953
    sget-object v0, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 954
    .line 955
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    if-nez v2, :cond_22

    .line 964
    .line 965
    sget-object v0, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 966
    .line 967
    :cond_22
    new-instance v2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 968
    .line 969
    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;

    .line 970
    .line 971
    new-instance v5, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .line 975
    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 977
    .line 978
    .line 979
    move-result v6

    .line 980
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v6

    .line 998
    invoke-direct {v4, v3, v5, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    invoke-direct {v2, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 1005
    .line 1006
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    if-eqz v0, :cond_24

    .line 1014
    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1020
    .line 1021
    .line 1022
    move-result v0

    .line 1023
    if-eqz v0, :cond_24

    .line 1024
    .line 1025
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 1026
    .line 1027
    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 1028
    .line 1029
    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$f;

    .line 1030
    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 1036
    .line 1037
    .line 1038
    move-result v5

    .line 1039
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v6

    .line 1043
    invoke-direct {v3, v4, v5, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$f;-><init>(Ljava/util/List;ILjava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 1050
    .line 1051
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    :cond_24
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 1055
    .line 1056
    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 1057
    .line 1058
    new-instance v12, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;

    .line 1059
    .line 1060
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 1061
    .line 1062
    .line 1063
    move-result v4

    .line 1064
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 1065
    .line 1066
    .line 1067
    move-result v5

    .line 1068
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v6

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 1073
    .line 1074
    .line 1075
    move-result v7

    .line 1076
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 1077
    .line 1078
    .line 1079
    move-result v8

    .line 1080
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 1081
    .line 1082
    .line 1083
    move-result v9

    .line 1084
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v10

    .line 1088
    move-object v3, v12

    .line 1089
    move/from16 v11, p2

    .line 1090
    .line 1091
    invoke-direct/range {v3 .. v11}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;-><init>(IILjava/lang/String;IIIZZ)V

    .line 1092
    .line 1093
    .line 1094
    invoke-direct {v0, v2, v12}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 1095
    .line 1096
    .line 1097
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 1098
    .line 1099
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headAdapter:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 1103
    .line 1104
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->headData:Ljava/util/List;

    .line 1105
    .line 1106
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 1107
    .line 1108
    .line 1109
    return-void
.end method

.method setResult4Request()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "pid"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-string v2, "view"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, "comment"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const-string v2, "praise"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const-string v2, "isPraise"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const-string v2, "isFavorite"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x3

    .line 84
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method setVideoContainerParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->getVideoDefaultHeight(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f070ed4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f070ed0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const v4, 0x7f070ecf

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const/4 v4, -0x2

    .line 64
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method show(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x7f0a0215

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Lcom/join/mgps/customview/f;->z(Landroid/content/Context;)Lcom/join/mgps/customview/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->iForumExtFuncListener:Lcom/join/mgps/customview/e$d;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/e;->m(Lcom/join/mgps/customview/e$d;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object p1, v2, v3

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/customview/e;->p(Landroid/view/View;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 26
    .line 27
    return-void
.end method

.method showExtensionContentBoard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension:Landroid/view/View;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowInputExtensionBoard:Z

    .line 26
    .line 27
    return-void
.end method

.method public showKeyBoardHandler()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->showKeyBoardHandler()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionFunction(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionFunction(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
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
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method declared-synchronized showPostGagDialog(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gagUid"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumGagType:Ljava/util/List;

    .line 3
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
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumGagType:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 28
    .line 29
    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$e0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ""

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity$e0;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity$e0;->b(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 64
    .line 65
    .line 66
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mPostGagDialog:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :cond_3
    :goto_0
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0

    .line 82
    throw p1
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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u8bc4\u8bba\u5417\uff1f"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/join/mgps/dialog/x0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const-string v2, "\u786e\u5b9a"

    .line 3
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->b(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$y;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$y;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$z;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$z;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->curEventType:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    goto :goto_1

    :cond_1
    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const-string v1, "\u786e\u5b9a\u8981\u4e3e\u62a5\u8be5\u8bc4\u8bba\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    goto :goto_1

    :cond_3
    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x24

    if-ne v0, v1, :cond_6

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const-string v1, "\u786e\u5b9a\u8981\u4e3e\u62a5\u8be5\u56de\u590d\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    goto :goto_1

    .line 13
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u56de\u590d\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 14
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;II)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/y0;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public showSortPop(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 21
    .line 22
    const/4 v1, -0x2

    .line 23
    invoke-direct {v0, p0, p0, v1, v1}, Lcom/join/mgps/activity/ForumPostsActivity$g0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;II)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v1, 0x7f0713ac

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    neg-int v0, v0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const v3, 0x7f070393

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    sub-int/2addr v1, v2

    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 93
    .line 94
    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sortPopWindow:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 104
    .line 105
    .line 106
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
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isShowKeyboard:Z

    .line 15
    .line 16
    return-void
.end method

.method showToast(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charSequence"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public sortComment()V
    .locals 1

    .line 1
    const v0, 0x7f0a1a26

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showSortPop(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    const/16 v1, 0x3393

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gameInfo:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->gameInfo:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-lez v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v1, 0x5

    .line 74
    if-ne p1, v1, :cond_4

    .line 75
    .line 76
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {p0, v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_0
    return-void
.end method

.method stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoIndex:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->play:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->isActive:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->toggleFullScreen()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method stopXlistRefreshAndLoadMore()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->stopRefresh()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->stopLoadMore()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingPage:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setNoMore()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method submitForumPostsComment(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;)V
    .locals 4
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
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->validAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-eqz p1, :cond_4

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getParams1()Lorg/springframework/util/LinkedMultiValueMap;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/i;->z0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x2c2

    .line 56
    .line 57
    if-ne v2, v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f1204ed

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const/16 v1, 0x2bd

    .line 77
    .line 78
    if-ne v2, v1, :cond_3

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->reGetToken()V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->processSendCommentResult(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-void
.end method

.method toggleFullScreen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->mFullScreenFlag:Z

    .line 6
    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setFullScreen(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
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
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveUpdate()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x4

    .line 28
    if-eq p2, p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveUpdate()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method validAccount()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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

.method public videoConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method videoScroll(Landroidx/recyclerview/widget/RecyclerView;III)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyPlayViewOffset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method videoScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->j(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isPlayPositionVisible()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->playBackground(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public viewPoster()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncHost()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method wrapCommentItem(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Z)V
    .locals 31
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commentBean",
            "showDivider"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_e

    .line 4
    .line 5
    iget-object v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_d

    .line 10
    .line 11
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getForum_auth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v2, v4, :cond_1

    .line 25
    .line 26
    const/4 v15, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v15, 0x0

    .line 29
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->isOfficialAccount()Z

    .line 30
    .line 31
    .line 32
    move-result v16

    .line 33
    iget-object v2, v0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v2, v4, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_1
    iget-object v5, v0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v4, :cond_3

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v5, 0x0

    .line 55
    :goto_2
    iget-object v6, v0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v7, v0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-ne v6, v7, :cond_4

    .line 74
    .line 75
    const/16 v25, 0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v25, 0x0

    .line 79
    .line 80
    :goto_3
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ne v6, v1, :cond_5

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const/4 v1, 0x0

    .line 95
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iget-object v7, v0, Lcom/join/mgps/activity/ForumPostsActivity;->forumPostsBean:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-ne v6, v7, :cond_6

    .line 106
    .line 107
    const/4 v13, 0x1

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    const/4 v13, 0x0

    .line 110
    :goto_5
    new-instance v11, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 111
    .line 112
    sget-object v12, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_HEADER:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 113
    .line 114
    new-instance v10, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAvatar_src()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v17

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAdd_time()J

    .line 133
    .line 134
    .line 135
    move-result-wide v18

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getFloor()I

    .line 137
    .line 138
    .line 139
    move-result v20

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAnswer_flg()I

    .line 141
    .line 142
    .line 143
    move-result v26

    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    if-nez v5, :cond_7

    .line 147
    .line 148
    if-eqz v25, :cond_7

    .line 149
    .line 150
    if-nez v1, :cond_7

    .line 151
    .line 152
    const/4 v2, 0x1

    .line 153
    goto :goto_6

    .line 154
    :cond_7
    const/4 v2, 0x0

    .line 155
    :goto_6
    xor-int/lit8 v27, v1, 0x1

    .line 156
    .line 157
    const/16 v6, 0x63

    .line 158
    .line 159
    const/4 v5, 0x3

    .line 160
    if-eq v14, v5, :cond_9

    .line 161
    .line 162
    if-eq v14, v6, :cond_9

    .line 163
    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    if-eqz v25, :cond_8

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_8
    const/16 v28, 0x0

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_9
    :goto_7
    const/16 v28, 0x1

    .line 173
    .line 174
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getVip_level()I

    .line 175
    .line 176
    .line 177
    move-result v21

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getSvip_level()I

    .line 179
    .line 180
    .line 181
    move-result v22

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->is_moderator()Z

    .line 183
    .line 184
    .line 185
    move-result v23

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMember_honor()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v24

    .line 190
    const/4 v3, 0x3

    .line 191
    move-object v5, v10

    .line 192
    const/16 v4, 0x63

    .line 193
    .line 194
    move/from16 v6, p2

    .line 195
    .line 196
    move-object v4, v10

    .line 197
    move-object/from16 v10, v17

    .line 198
    .line 199
    move/from16 v29, v1

    .line 200
    .line 201
    move-object v3, v11

    .line 202
    move-object v1, v12

    .line 203
    move-wide/from16 v11, v18

    .line 204
    .line 205
    move/from16 v30, v14

    .line 206
    .line 207
    move/from16 v14, v20

    .line 208
    .line 209
    move/from16 v17, v26

    .line 210
    .line 211
    move/from16 v18, v2

    .line 212
    .line 213
    move/from16 v19, v27

    .line 214
    .line 215
    move/from16 v20, v28

    .line 216
    .line 217
    invoke-direct/range {v5 .. v24}, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;-><init>(ZIILjava/lang/String;Ljava/lang/String;JZIZZIZZZIIZLjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v3, v1, v4}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 229
    .line 230
    sget-object v2, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 231
    .line 232
    new-instance v10, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;

    .line 233
    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMessage()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    xor-int/lit8 v8, v29, 0x1

    .line 251
    .line 252
    move/from16 v11, v30

    .line 253
    .line 254
    const/4 v3, 0x3

    .line 255
    if-eq v11, v3, :cond_b

    .line 256
    .line 257
    const/16 v3, 0x63

    .line 258
    .line 259
    if-eq v11, v3, :cond_b

    .line 260
    .line 261
    if-eqz v29, :cond_a

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_a
    const/4 v9, 0x0

    .line 265
    goto :goto_a

    .line 266
    :cond_b
    :goto_9
    const/4 v9, 0x1

    .line 267
    :goto_a
    move-object v3, v10

    .line 268
    invoke-direct/range {v3 .. v9}, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;-><init>(ILjava/lang/String;Ljava/lang/String;IZZ)V

    .line 269
    .line 270
    .line 271
    invoke-direct {v1, v2, v10}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v2, v0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    const/4 v1, 0x0

    .line 280
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-eqz v2, :cond_c

    .line 285
    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-ge v1, v2, :cond_c

    .line 295
    .line 296
    new-instance v2, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 297
    .line 298
    sget-object v3, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 299
    .line 300
    new-instance v4, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;

    .line 301
    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    check-cast v5, Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getRaw_pic_list()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-direct {v4, v5, v1, v6}, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 317
    .line 318
    .line 319
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-object v3, v0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 323
    .line 324
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    add-int/lit8 v1, v1, 0x1

    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_c
    new-instance v7, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 331
    .line 332
    sget-object v8, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 333
    .line 334
    new-instance v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 335
    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    if-eqz v1, :cond_d

    .line 345
    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-lez v1, :cond_d

    .line 355
    .line 356
    const/4 v5, 0x1

    .line 357
    goto :goto_c

    .line 358
    :cond_d
    const/4 v5, 0x0

    .line 359
    :goto_c
    move-object v1, v9

    .line 360
    move-object/from16 v3, p1

    .line 361
    .line 362
    move v4, v11

    .line 363
    move/from16 v6, v25

    .line 364
    .line 365
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)V

    .line 366
    .line 367
    .line 368
    invoke-direct {v7, v8, v9}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->listData:Ljava/util/List;

    .line 372
    .line 373
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    :cond_e
    :goto_d
    return-void
.end method
