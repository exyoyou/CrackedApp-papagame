.class Lcom/papa91/activity/EmuMenuBaseActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->onLoadStageCompleted(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->val$status:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->val$message:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->hideLoading()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->val$status:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->val$message:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$5;->val$message:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
