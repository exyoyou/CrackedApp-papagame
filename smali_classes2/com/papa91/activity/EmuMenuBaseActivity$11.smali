.class Lcom/papa91/activity/EmuMenuBaseActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->loadRomFinish()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

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
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isSPVisible()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuMenuBaseActivity;->setSPMenuVisible(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showVipTip()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
