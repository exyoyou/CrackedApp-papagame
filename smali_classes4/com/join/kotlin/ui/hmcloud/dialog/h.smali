.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/join/mgps/dto/ExtBean;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->e:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->c:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/h;->e:Lcom/join/mgps/dto/ExtBean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1;->h(Lcom/kongzue/dialogx/dialogs/CustomDialog;Ljava/lang/Runnable;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V

    return-void
.end method
