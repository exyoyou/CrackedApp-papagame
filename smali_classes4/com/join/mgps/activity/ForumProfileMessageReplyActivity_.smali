.class public final Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;
.super Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;
    }
.end annotation


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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->checkKeyboard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->dismissSendPromptDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->updateMessageData(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentDeleteSuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processSendCommentResultRefreshCommenCount(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentReplyDirectSendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processCommentReplySendSuccess(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->processDeleteCommentReplySuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->clearCommentMessage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSendPromptDialog(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->hideExtensionBoard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPopupwindow(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->changeLoadingState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->setPopupWindowAttr(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2201(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->modifyPraiseView(ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2301(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPromptDialog(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2401(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2501(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2601(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showPrePostingHintDialog(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2701(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadSrvData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2801(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->getForumProfileMessageReplyData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2901(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendComment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3001(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->touristLogin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3101(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteComment(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3201(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->praisePosts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3301(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->sendCommentReply()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3401(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deleteCommentReply(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3501(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doForumPostReport()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3601(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->doForumPostReport(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3701(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->deletePosts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyAdapter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/customview/RewardType;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showRewardToast(Lcom/join/mgps/customview/RewardType;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showMoreLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->notifyLoginSuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->error(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->netExcption:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->netConnectException:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;
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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;
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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$n0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$n0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V

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

.method checkKeyboard()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$l0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$l0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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

.method clearCommentMessage()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$n;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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
    new-instance v7, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$c0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$c0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;I)V

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
    new-instance v7, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$f0;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$f0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;I)V

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
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$j0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$j0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$f;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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

.method doForumPostReport()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$h0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$h0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    new-instance v8, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$i0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$i0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;II)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$e;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->beans_:Ljava/util/Map;

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

.method getForumProfileMessageReplyData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$z;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$z;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method hideExtensionBoard()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$p;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method loadSrvData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$y;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$y;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZI)V

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

.method notifyAdapter()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$p0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$p0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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

.method notifyLoginSuccess()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$d;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d06ce

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
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
    const v0, 0x7f0a0e28

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_forum_posts_title:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->back_image:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_title:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0e38

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_title_right:Landroid/widget/TextView;

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
    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 55
    .line 56
    const v0, 0x7f0a0568

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/android/app/common/view/ClearEditText;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 66
    .line 67
    const v0, 0x7f0a028a

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/Button;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 77
    .line 78
    const v0, 0x7f0a028b

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/Button;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_send:Landroid/widget/Button;

    .line 88
    .line 89
    const v0, 0x7f0a0565

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a08bf

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->image_add:Landroid/widget/ImageView;

    .line 110
    .line 111
    const v0, 0x7f0a067c

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->footer_tip:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0a0289

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 132
    .line 133
    const v0, 0x7f0a0340

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_more:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const v0, 0x7f0a033e

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension:Landroid/view/View;

    .line 152
    .line 153
    const v0, 0x7f0a033f

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/LinearLayout;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->chat_layout_extension_container:Landroid/widget/LinearLayout;

    .line 163
    .line 164
    const v0, 0x7f0a1006

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->matchListView:Lit/sephiroth/android/library/widget/HListView;

    .line 174
    .line 175
    const v0, 0x7f0a1055

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/join/mgps/customview/XListView;

    .line 183
    .line 184
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 185
    .line 186
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->back_image:Landroid/widget/ImageView;

    .line 187
    .line 188
    if-eqz p1, :cond_0

    .line 189
    .line 190
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$k;

    .line 191
    .line 192
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$k;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->layout_title_right:Landroid/widget/TextView;

    .line 199
    .line 200
    if-eqz p1, :cond_1

    .line 201
    .line 202
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$v;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$v;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 211
    .line 212
    if-eqz p1, :cond_2

    .line 213
    .line 214
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g0;

    .line 215
    .line 216
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->btn_chat_send:Landroid/widget/Button;

    .line 223
    .line 224
    if-eqz p1, :cond_3

    .line 225
    .line 226
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$k0;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$k0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->afterViews()V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method praisePosts()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$d0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$d0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$h;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$j;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$l;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$m;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$i;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method sendComment()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$a0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$a0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$e0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$e0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method setPopupWindowAttr(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "deleteVisible",
            "commentVisible"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZZ)V

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

.method showDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$u;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$w;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$c;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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

.method showPopupwindow(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "anchor",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$q;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Landroid/view/View;I)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$x;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$t;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;II)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$b;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/customview/RewardType;II)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$o;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;I)V

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

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$a;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;)V

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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$o0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$o0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;)V

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
    new-instance v6, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$b0;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$b0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateMessageData(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
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
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$m0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$m0;-><init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

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
