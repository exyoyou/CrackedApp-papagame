.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic c:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/e;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/e;->c:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/e;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/e;->c:Landroidx/core/util/Consumer;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterDialog$1;->d(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/core/util/Consumer;Landroid/view/View;)V

    return-void
.end method
