.class Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

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
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/papa91/arc/bean/EndGameAllowBean;->isUnlimited()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/papa91/arc/bean/EndGameAllowBean;->getCards()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "\u5e7f\u544a\u83b7\u53d6\u5931\u8d25"

    .line 29
    .line 30
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->scenario:I

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;->this$1:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1, v1}, Lcom/papa91/activity/EmuBaseActivity;->endGameAllow(ZI)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method
