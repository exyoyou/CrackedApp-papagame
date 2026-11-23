.class Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$1:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

.field final synthetic val$achieves:Ljava/util/ArrayList;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;Ljava/util/ArrayList;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->val$achieves:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->val$timer:Ljava/util/Timer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->count:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->count:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->val$achieves:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->val$timer:Ljava/util/Timer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->val$achieves:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->count:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    sget-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->access$800(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->count:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;->count:I

    .line 37
    .line 38
    :goto_0
    return-void
.end method
