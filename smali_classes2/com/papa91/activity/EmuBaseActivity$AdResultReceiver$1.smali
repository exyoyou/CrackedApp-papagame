.class Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
