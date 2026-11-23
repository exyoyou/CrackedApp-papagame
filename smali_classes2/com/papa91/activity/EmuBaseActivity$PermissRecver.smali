.class Lcom/papa91/activity/EmuBaseActivity$PermissRecver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissRecver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 5
    .line 6
    iget-boolean p1, p1, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const-string p1, "permission"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 18
    .line 19
    invoke-static {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->access$1200(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
