.class Lcom/papa91/activity/EmuBaseActivity$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$39;->this$0:Lcom/papa91/activity/EmuBaseActivity;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$39;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$39;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$39;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 19
    .line 20
    iget-wide v1, v0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 21
    .line 22
    const-wide/16 v3, 0x1

    .line 23
    .line 24
    add-long/2addr v1, v3

    .line 25
    iput-wide v1, v0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 26
    .line 27
    iget-wide v3, v0, Lcom/papa91/activity/EmuBaseActivity;->limitTime:J

    .line 28
    .line 29
    cmp-long v5, v1, v3

    .line 30
    .line 31
    if-ltz v5, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    iget-boolean v2, v0, Lcom/papa91/activity/EmuBaseActivity;->isArenaCheck:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->onHandleRealName(IZ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 41
    .line 42
    const-wide/16 v1, 0x3e8

    .line 43
    .line 44
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
