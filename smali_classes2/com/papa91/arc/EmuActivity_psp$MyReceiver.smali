.class Lcom/papa91/arc/EmuActivity_psp$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "token"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sput-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "vipLevel"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "sVipLevel"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v1, "uid"

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    sput-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 44
    .line 45
    sput p1, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1202(Lcom/papa91/arc/EmuActivity_psp;I)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->onVipChanged()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
