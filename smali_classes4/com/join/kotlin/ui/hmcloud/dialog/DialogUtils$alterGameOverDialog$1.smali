.class public final Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;
.super Lcom/kongzue/dialogx/interfaces/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterGameOverDialog(ILandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/r<",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1",
        "Lcom/kongzue/dialogx/interfaces/OnBindView;",
        "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
        "onBind",
        "",
        "dialog",
        "v",
        "Landroid/view/View;",
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
.field final synthetic $iconId:I

.field final synthetic $onCharge:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onClose:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/core/util/Consumer<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->$iconId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->$onClose:Landroidx/core/util/Consumer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->$onCharge:Landroidx/core/util/Consumer;

    .line 6
    .line 7
    const p1, 0x7f0d01ef

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/interfaces/r;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic d(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/core/util/Consumer;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->onBind$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/core/util/Consumer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroidx/core/util/Consumer;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->onBind$lambda$1(Landroidx/core/util/Consumer;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/core/util/Consumer;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final onBind$lambda$1(Landroidx/core/util/Consumer;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const v1, 0x7f0a09fe

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const v2, 0x7f0a1a3b

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :cond_1
    if-eqz p2, :cond_2

    const v2, 0x7f0a1a3c

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :cond_2
    if-eqz p2, :cond_3

    const v2, 0x7f0a192f

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz p2, :cond_4

    const v0, 0x7f0a1930

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :cond_4
    if-eqz v1, :cond_5

    .line 7
    iget p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->$iconId:I

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    if-eqz v2, :cond_6

    .line 8
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->$onClose:Landroidx/core/util/Consumer;

    new-instance v1, Lcom/join/kotlin/ui/hmcloud/dialog/f;

    invoke-direct {v1, p1, p2}, Lcom/join/kotlin/ui/hmcloud/dialog/f;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/core/util/Consumer;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 9
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->$onCharge:Landroidx/core/util/Consumer;

    new-instance v1, Lcom/join/kotlin/ui/hmcloud/dialog/g;

    invoke-direct {v1, p2, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/g;-><init>(Landroidx/core/util/Consumer;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->onBind(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
