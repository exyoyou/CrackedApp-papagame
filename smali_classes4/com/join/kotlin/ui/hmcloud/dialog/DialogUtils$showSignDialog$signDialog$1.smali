.class public final Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;
.super Lcom/kongzue/dialogx/interfaces/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->showSignDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/s<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/se;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1",
        "Lcom/kongzue/dialogx/interfaces/OnBindingView;",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/DialogCloudSignSuccessBinding;",
        "onBind",
        "",
        "dialog",
        "v",
        "Landroid/view/View;",
        "binding",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $closeCall:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $confirmCall:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $freeTime:Ljava/lang/String;

.field final synthetic $totalTime:Ljava/lang/String;

.field final synthetic $vipTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$totalTime:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$freeTime:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$vipTime:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$ctx:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$confirmCall:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$closeCall:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/s;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic h(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function1;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->onBind$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function1;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->onBind$lambda$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->onBind$lambda$2(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function1;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final onBind$lambda$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onBind$lambda$2(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/se;)V
    .locals 8

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binding"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$totalTime:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->L(Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u514d\u8d39\u65f6\u957f+"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\'#FF6200\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$freeTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->G(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f1a\u5458\u65f6\u957f+"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$vipTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->M(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$ctx:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string p2, "\u5e74\u5361"

    .line 10
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->N(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p2, "\u5b63\u5361"

    .line 12
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->N(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    move-result p2

    if-ne p2, v2, :cond_2

    const-string p2, "\u6708\u5361"

    .line 14
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->N(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, ""

    .line 15
    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->N(Ljava/lang/String;)V

    .line 16
    :goto_0
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$ctx:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 18
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v4, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v4, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/join/android/app/mgsim/wufun/databinding/se;->H(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/join/android/app/mgsim/wufun/databinding/se;->I(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/join/kotlin/utils/DlTaskManager;->getCloudArchiveTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_3

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#999999\'>\u4e0a\u6b21\u8fdb\u5ea6\u65f6\u95f4\uff1a</font>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28
    invoke-static {v6, v7}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 30
    invoke-virtual {p3, v1}, Lcom/join/android/app/mgsim/wufun/databinding/se;->J(Landroid/text/Spanned;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 31
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->K(Ljava/lang/Boolean;)V

    .line 32
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$confirmCall:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/join/kotlin/ui/hmcloud/dialog/j;

    invoke-direct {v2, p1, v1, v0}, Lcom/join/kotlin/ui/hmcloud/dialog/j;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function1;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 33
    :cond_5
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 35
    :cond_6
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_2
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/dialog/k;

    invoke-direct {v0, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/k;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->$closeCall:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/dialog/l;

    invoke-direct {v0, p1, p3}, Lcom/join/kotlin/ui/hmcloud/dialog/l;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/se;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/se;)V

    return-void
.end method
