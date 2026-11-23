.class Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmuReceiveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.emu.ad.result"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const-string p1, "adAction"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    const-string p1, "exit"

    .line 25
    .line 26
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    if-ne p1, p2, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->access$102(Lcom/papa91/arc/EmuActivity_psp;Z)Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->access$202(Lcom/papa91/arc/EmuActivity_psp;I)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$300(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$400(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-void
.end method
