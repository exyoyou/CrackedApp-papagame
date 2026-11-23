.class Lcom/papa91/activity/EmuBaseActivity$40;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$40;->val$type:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 7
    .line 8
    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$40;->val$type:I

    .line 9
    .line 10
    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$2100(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 5
    .line 6
    const-string v1, "closedRealNameWindow"

    .line 7
    .line 8
    const-string v2, "0"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 16
    .line 17
    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$40;->val$type:I

    .line 18
    .line 19
    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$2100(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
