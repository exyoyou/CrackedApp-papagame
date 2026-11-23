.class public final Lcom/join/mgps/activity/ForumPostsActivity_;
.super Lcom/join/mgps/activity/ForumPostsActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsActivity_$m1;
    }
.end annotation


# static fields
.field public static final EXT_BEAN_EXTRA:Ljava/lang/String; = "extBean"


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ForumPostsActivity_;ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->modifyPraiseView(ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionBoard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ForumPostsActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyAdapter(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/ForumPostsActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->changeCommentUI(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentList(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->lodingVideo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showPrePostingHintDialog(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processSendCommentResultRefreshCommenCount(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentDeleteSuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentHelpSolveSuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->clearCommentMessage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->processDeleteCommentReplySuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMoreLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2501(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncHostImg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2601(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncFavoriteImg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2701(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->show(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2801(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->refreshMoreFuncBestImg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2901(Lcom/join/mgps/activity/ForumPostsActivity_;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->videoScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3001(Lcom/join/mgps/activity/ForumPostsActivity_;Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->videoScroll(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->stopXlistRefreshAndLoadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3101(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3201(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3301(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3401(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyTagAdded(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3501(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->notifyTagRemoved(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3601(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->praisePosts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3701(Lcom/join/mgps/activity/ForumPostsActivity_;ZZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->loadForumPostsData(ZZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3801(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendComment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3901(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->touristLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4001(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteComment(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4101(Lcom/join/mgps/activity/ForumPostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->helpSolvePosts(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4201(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->sendCommentReply()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4301(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->deleteCommentReply(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4401(Lcom/join/mgps/activity/ForumPostsActivity_;Landroid/widget/ListView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->preLoadImages(Landroid/widget/ListView;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4501(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostFavorite()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4601(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostReport()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4701(Lcom/join/mgps/activity/ForumPostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostReport(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4801(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->deletePosts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4901(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostBest()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5001(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->downloadGameById(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/ForumPostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSendPromptDialog(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5101(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->addPostTag(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5201(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->removePostTag(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5301(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->setFirstPost()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5401(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->postGag(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/ForumPostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissSendPromptDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/ForumPostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->showPromptDialog(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/customview/RewardType;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f12031f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->netExcption:Ljava/lang/String;

    .line 16
    .line 17
    const v0, 0x7f1200cd

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->netConnectException:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity_;->injectExtras_()V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0xa

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 42
    .line 43
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "extBean"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumPostsActivity_$m1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$m1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$m1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumPostsActivity_$m1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$m1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$m1;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method addPostTag(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tagList"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$e1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$e1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public changeCommentUI(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "showEmpty"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$n;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method changeLoadingState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$f;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method clearCommentMessage()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method deleteComment(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$s0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$s0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method deleteCommentReply(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$v0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$v0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method deletePosts()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$a1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$a1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method dismissSendPromptDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$h;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method doForumPostBest()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$c1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$c1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method doForumPostFavorite()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$x0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$x0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method doForumPostReport()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$y0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$y0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method doForumPostReport(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cid",
            "rid"
        }
    .end annotation

    .line 2
    new-instance v8, Lcom/join/mgps/activity/ForumPostsActivity_$z0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumPostsActivity_$z0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;II)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method downloadGameById(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$d1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$d1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$r;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method helpSolvePosts(II)V
    .locals 9
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

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumPostsActivity_$t0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumPostsActivity_$t0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method hideExtensionBoard()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$l;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method loadForumPostsData(ZZI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "isReload",
            "clearComment",
            "page"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/ForumPostsActivity_$o0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity_$o0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method lodingVideo()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$p;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method modifyPraiseView(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "like",
            "count"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;ZI)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method notifyAdapter(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isReload"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method notifyTagAdded(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tagList"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$l0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$l0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method notifyTagRemoved(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tagList"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$m0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$m0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d06ab

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onPayGameSuccessReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a008a

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const v0, 0x7f0a014e

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->back_image:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a0e37

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->layout_title:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a06a8

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_nickname:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a0f68

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/mgps/customview/CustomLoadingView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingView:Lcom/join/mgps/customview/CustomLoadingView;

    .line 55
    .line 56
    const v0, 0x7f0a127c

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFunction:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a127a

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncHost:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a127b

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncMore:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const v0, 0x7f0a0e1f

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->layout_chat_cell_container:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const v0, 0x7f0a0568

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/join/android/app/common/view/ClearEditText;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 110
    .line 111
    const v0, 0x7f0a028a

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/Button;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 121
    .line 122
    const v0, 0x7f0a028c

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/Button;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 132
    .line 133
    const v0, 0x7f0a028b

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/Button;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_send:Landroid/widget/Button;

    .line 143
    .line 144
    const v0, 0x7f0a0565

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/TextView;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 154
    .line 155
    const v0, 0x7f0a13d3

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rl_comment_count:Landroid/widget/RelativeLayout;

    .line 165
    .line 166
    const v0, 0x7f0a08bf

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/ImageView;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->image_add:Landroid/widget/ImageView;

    .line 176
    .line 177
    const v0, 0x7f0a067c

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->footer_tip:Landroid/widget/TextView;

    .line 187
    .line 188
    const v0, 0x7f0a0289

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/Button;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 198
    .line 199
    const v0, 0x7f0a0340

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/LinearLayout;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    const v0, 0x7f0a033e

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension:Landroid/view/View;

    .line 218
    .line 219
    const v0, 0x7f0a033f

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/LinearLayout;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 229
    .line 230
    const v0, 0x7f0a1006

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 238
    .line 239
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->matchListView:Lit/sephiroth/android/library/widget/HListView;

    .line 240
    .line 241
    const v0, 0x7f0a149e

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 249
    .line 250
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 251
    .line 252
    const v0, 0x7f0a1ba6

    .line 253
    .line 254
    .line 255
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 260
    .line 261
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->vipFlag:Lcom/join/mgps/customview/VipView;

    .line 262
    .line 263
    const v0, 0x7f0a043d

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroid/widget/TextView;

    .line 271
    .line 272
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->copperTitleTv:Landroid/widget/TextView;

    .line 273
    .line 274
    const v0, 0x7f0a1071

    .line 275
    .line 276
    .line 277
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Landroid/widget/TextView;

    .line 282
    .line 283
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->moderator:Landroid/widget/TextView;

    .line 284
    .line 285
    const v0, 0x7f0a102a

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/widget/TextView;

    .line 293
    .line 294
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->member_honor:Landroid/widget/TextView;

    .line 295
    .line 296
    const v0, 0x7f0a06a3

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Landroid/widget/Button;

    .line 304
    .line 305
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_host:Landroid/widget/Button;

    .line 306
    .line 307
    const v0, 0x7f0a1186

    .line 308
    .line 309
    .line 310
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Landroid/widget/ImageView;

    .line 315
    .line 316
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->officialIcon:Landroid/widget/ImageView;

    .line 317
    .line 318
    const v0, 0x7f0a06a7

    .line 319
    .line 320
    .line 321
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroid/widget/ImageView;

    .line 326
    .line 327
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_moderator:Landroid/widget/ImageView;

    .line 328
    .line 329
    const v0, 0x7f0a06ae

    .line 330
    .line 331
    .line 332
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Landroid/widget/TextView;

    .line 337
    .line 338
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->forum_post_stickie:Landroid/widget/TextView;

    .line 339
    .line 340
    const v0, 0x7f0a1459

    .line 341
    .line 342
    .line 343
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 348
    .line 349
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 350
    .line 351
    const v0, 0x7f0a0457

    .line 352
    .line 353
    .line 354
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;

    .line 359
    .line 360
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->csl_view:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;

    .line 361
    .line 362
    const v0, 0x7f0a06d1

    .line 363
    .line 364
    .line 365
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Lcom/join/mgps/customview/ForumStickView;

    .line 370
    .line 371
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->fsv_stick:Lcom/join/mgps/customview/ForumStickView;

    .line 372
    .line 373
    const v0, 0x7f0a0a62

    .line 374
    .line 375
    .line 376
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Landroid/widget/ImageView;

    .line 381
    .line 382
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->iv_more:Landroid/widget/ImageView;

    .line 383
    .line 384
    const v0, 0x7f0a145b

    .line 385
    .line 386
    .line 387
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 392
    .line 393
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rv_head:Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    .line 395
    const v0, 0x7f0a1b8c

    .line 396
    .line 397
    .line 398
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->view_empty:Landroid/view/View;

    .line 403
    .line 404
    const v0, 0x7f0a1b62

    .line 405
    .line 406
    .line 407
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Landroid/widget/FrameLayout;

    .line 412
    .line 413
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 414
    .line 415
    const v0, 0x7f0a1b64

    .line 416
    .line 417
    .line 418
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 423
    .line 424
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 425
    .line 426
    const v0, 0x7f0a1b5f

    .line 427
    .line 428
    .line 429
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Lcom/join/android/app/component/video/MyVideoView;

    .line 434
    .line 435
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 436
    .line 437
    const v0, 0x7f0a044e

    .line 438
    .line 439
    .line 440
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 445
    .line 446
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 447
    .line 448
    const v0, 0x7f0a125a

    .line 449
    .line 450
    .line 451
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Landroid/widget/ImageView;

    .line 456
    .line 457
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->play:Landroid/widget/ImageView;

    .line 458
    .line 459
    const v0, 0x7f0a0f65

    .line 460
    .line 461
    .line 462
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    check-cast p1, Landroid/widget/LinearLayout;

    .line 467
    .line 468
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 469
    .line 470
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->rl_comment_count:Landroid/widget/RelativeLayout;

    .line 471
    .line 472
    if-eqz p1, :cond_0

    .line 473
    .line 474
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$u;

    .line 475
    .line 476
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$u;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    .line 481
    .line 482
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 483
    .line 484
    if-eqz p1, :cond_1

    .line 485
    .line 486
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$f0;

    .line 487
    .line 488
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$f0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    .line 493
    .line 494
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 495
    .line 496
    if-eqz p1, :cond_2

    .line 497
    .line 498
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$q0;

    .line 499
    .line 500
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$q0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->back_image:Landroid/widget/ImageView;

    .line 507
    .line 508
    if-eqz p1, :cond_3

    .line 509
    .line 510
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$b1;

    .line 511
    .line 512
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$b1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    .line 517
    .line 518
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_send:Landroid/widget/Button;

    .line 519
    .line 520
    if-eqz p1, :cond_4

    .line 521
    .line 522
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$i1;

    .line 523
    .line 524
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$i1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    .line 529
    .line 530
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 531
    .line 532
    if-eqz p1, :cond_5

    .line 533
    .line 534
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j1;

    .line 535
    .line 536
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$j1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    .line 541
    .line 542
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->image_add:Landroid/widget/ImageView;

    .line 543
    .line 544
    if-eqz p1, :cond_6

    .line 545
    .line 546
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$k1;

    .line 547
    .line 548
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$k1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    .line 553
    .line 554
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncMore:Landroid/widget/LinearLayout;

    .line 555
    .line 556
    if-eqz p1, :cond_7

    .line 557
    .line 558
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$l1;

    .line 559
    .line 560
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$l1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    .line 565
    .line 566
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->iv_more:Landroid/widget/ImageView;

    .line 567
    .line 568
    if-eqz p1, :cond_8

    .line 569
    .line 570
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$a;

    .line 571
    .line 572
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    .line 577
    .line 578
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->afterViews()V

    .line 579
    .line 580
    .line 581
    return-void
.end method

.method postGag(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "guid",
            "timeType",
            "remarks"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/ForumPostsActivity_$h1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    move-object v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity_$h1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method praisePosts()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$n0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$n0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method preLoadImages(Landroid/widget/ListView;III)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "firstVisibleItem",
            "lastVisiblePos",
            "totalItemCount"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/join/mgps/activity/ForumPostsActivity_$w0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v10

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    move v9, p4

    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/activity/ForumPostsActivity_$w0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/widget/ListView;III)V

    .line 16
    .line 17
    .line 18
    invoke-static {v10}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method processCommentDeleteSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$v;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processCommentHelpSolveSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$w;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processCommentList(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$o;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/util/List;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$x;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$y;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$t;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processDeleteCommentReplySuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$z;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method processSendCommentResultRefreshCommenCount(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "diff"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$s;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method refreshMoreFuncBestImg()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$e0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method refreshMoreFuncFavoriteImg()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$c0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method refreshMoreFuncHostImg()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$b0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method removePostTag(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tagList"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity_$f1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumPostsActivity_$f1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method sendComment()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$p0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$p0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method sendCommentReply()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$u0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$u0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method setFirstPost()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$g1;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$g1;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "posts",
            "isShowFooterDivider"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$m;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method show(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$d0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$i0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$j0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMoreLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$a0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showPrePostingHintDialog(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$q;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showPromptDialog(II)V
    .locals 2
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

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$i;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;II)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showRewardToast(Lcom/join/mgps/customview/RewardType;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "money",
            "exp"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumPostsActivity_$k;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/customview/RewardType;II)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string p3, ""

    .line 9
    .line 10
    invoke-static {p3, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showSendPromptDialog(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$g;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$j;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$k0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity_$k0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method stopXlistRefreshAndLoadMore()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity_$e;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$r0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$r0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method videoScroll(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumPostsActivity_$h0;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumPostsActivity_$h0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method videoScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity_$g0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity_$g0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity_;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
