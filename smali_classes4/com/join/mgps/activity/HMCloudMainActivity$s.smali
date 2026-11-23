.class Lcom/join/mgps/activity/HMCloudMainActivity$s;
.super Lcom/kongzue/dialogx/interfaces/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->showSignDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/join/mgps/activity/HMCloudMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$totalTime",
            "val$freeTime",
            "val$vipTime",
            "val$parent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->e:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->d:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/s;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/activity/HMCloudMainActivity$s;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/HMCloudMainActivity$s;->j(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/activity/HMCloudMainActivity$s;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/HMCloudMainActivity$s;->k(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private synthetic j(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->e:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showCloudNewUser()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic k(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->e:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showCloudNewUser()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/se;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "v",
            "binding"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->a:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->G(Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f1a\u5458\u65f6\u957f+"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/se;->M(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->e:Lcom/join/mgps/activity/HMCloudMainActivity;

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p2

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lcom/join/android/app/mgsim/wufun/databinding/se;->K(Ljava/lang/Boolean;)V

    .line 7
    iget-object v0, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    move-result v0

    const/4 v1, 0x3

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

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

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
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->d:Landroid/app/Activity;

    new-instance v1, Lcom/join/mgps/activity/l4;

    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/activity/l4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity$s;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/se;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/join/mgps/activity/HMCloudMainActivity$s;->d:Landroid/app/Activity;

    new-instance v0, Lcom/join/mgps/activity/m4;

    invoke-direct {v0, p0, p1, p3}, Lcom/join/mgps/activity/m4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity$s;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "v",
            "binding"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/se;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/HMCloudMainActivity$s;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/se;)V

    return-void
.end method
