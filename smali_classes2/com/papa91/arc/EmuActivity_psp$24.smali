.class Lcom/papa91/arc/EmuActivity_psp$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

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
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

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
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$000(Lcom/papa91/arc/EmuActivity_psp;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1800(Lcom/papa91/arc/EmuActivity_psp;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$24;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 27
    .line 28
    iget-wide v1, v0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 29
    .line 30
    const-wide/16 v3, 0x1

    .line 31
    .line 32
    add-long/2addr v1, v3

    .line 33
    iput-wide v1, v0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 34
    .line 35
    iget-wide v3, v0, Lcom/papa91/arc/EmuActivity_psp;->limitTime:J

    .line 36
    .line 37
    cmp-long v5, v1, v3

    .line 38
    .line 39
    if-ltz v5, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->onHandleRealName(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    const-wide/16 v1, 0x3e8

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method
