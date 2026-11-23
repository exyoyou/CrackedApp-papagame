.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;
.super Lcom/kongzue/dialogx/interfaces/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onVipDaysUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/s<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

.field final synthetic val$info:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;->val$info:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/s;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic h(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;->lambda$onBind$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;->lambda$onBind$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onBind$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onBind$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/ue;)V
    .locals 1
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
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;->val$info:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeVipDaysInfo;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ue;->n(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeVipDaysInfo;)V

    .line 3
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/ue;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/k0;

    invoke-direct {v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/k0;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/ue;->c:Landroid/widget/ImageView;

    new-instance p3, Lcom/join/kotlin/ui/hmcloud/fragment/l0;

    invoke-direct {p3, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/l0;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/ue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/ue;)V

    return-void
.end method
