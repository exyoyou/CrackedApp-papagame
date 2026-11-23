.class Lcom/papa91/activity/EmuMenuBaseActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->showUploadRecordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->access$300(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onConfirm(II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->gameCompleted()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v2, "com.join.android.app.mgsim.rank_record_upload"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "_params_rank_coin"

    .line 13
    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x3c

    .line 18
    .line 19
    mul-int/lit16 v0, v0, 0x3e8

    .line 20
    .line 21
    const-string p1, "_params_rank_play_time"

    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string p1, "_params_rank_role_id"

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$16;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
