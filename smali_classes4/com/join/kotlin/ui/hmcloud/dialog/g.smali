.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/core/util/Consumer;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/g;->b:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/g;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/g;->b:Landroidx/core/util/Consumer;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/g;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1;->e(Landroidx/core/util/Consumer;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
