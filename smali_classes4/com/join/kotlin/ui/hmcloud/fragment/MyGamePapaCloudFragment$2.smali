.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;
.super Lcom/kongzue/dialogx/interfaces/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showSetBirthday()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/s<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/s;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic h(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->lambda$onBind$2(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->lambda$onBind$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;Lcom/join/android/app/mgsim/wufun/databinding/ge;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->lambda$onBind$0(Lcom/join/android/app/mgsim/wufun/databinding/ge;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBind$0(Lcom/join/android/app/mgsim/wufun/databinding/ge;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2$1;

    .line 4
    .line 5
    const v1, 0x7f0d01ce

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2$1;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;ILcom/join/android/app/mgsim/wufun/databinding/ge;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Lcom/kongzue/dialogx/dialogs/a;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "#90000000"

    .line 15
    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/a;->i3(I)Lcom/kongzue/dialogx/dialogs/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Lcom/kongzue/dialogx/dialogs/a;->L2(Z)Lcom/kongzue/dialogx/dialogs/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private synthetic lambda$onBind$1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 5
    .line 6
    iget v0, p2, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->month:I

    .line 7
    .line 8
    iget v1, p2, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->day:I

    .line 9
    .line 10
    invoke-virtual {p2, p1, v0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->setBirthdayClick(Lcom/kongzue/dialogx/dialogs/CustomDialog;II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameSetVipBtnPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lcom/papa/sim/statistic/EventP$TypeCode;->btnOk:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private static synthetic lambda$onBind$2(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/ge;)V
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
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/ge;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/f0;

    invoke-direct {v0, p0, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/f0;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;Lcom/join/android/app/mgsim/wufun/databinding/ge;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/ge;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/g0;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/g0;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/ge;->c:Landroid/widget/ImageView;

    new-instance p3, Lcom/join/kotlin/ui/hmcloud/fragment/h0;

    invoke-direct {p3, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/h0;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

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

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/ge;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;Lcom/join/android/app/mgsim/wufun/databinding/ge;)V

    return-void
.end method
