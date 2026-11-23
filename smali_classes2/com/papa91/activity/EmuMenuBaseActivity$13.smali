.class Lcom/papa91/activity/EmuMenuBaseActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->onVipChanged()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

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
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

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
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isSPVisible()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->setSPMenuVisible(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
