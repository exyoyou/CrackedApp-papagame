.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/join/mgps/dto/ExtBean;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/i;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/i;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/i;->d:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/i;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/i;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/i;->d:Lcom/join/mgps/dto/ExtBean;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->i(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V

    return-void
.end method
