.class public final synthetic Lcom/join/kotlin/ui/hmcloud/fragment/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/g0;->b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/g0;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/g0;->b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/g0;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;->i(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/View;)V

    return-void
.end method
