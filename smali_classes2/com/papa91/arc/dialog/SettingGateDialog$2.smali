.class Lcom/papa91/arc/dialog/SettingGateDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingGateDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingGateDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->isNetAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingGateDialog;->access$100(Lcom/papa91/arc/dialog/SettingGateDialog;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "\u7f51\u7edc\u83b7\u53d6\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5..."

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingGateDialog;->showPrompt(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 40
    .line 41
    const-string v0, "3"

    .line 42
    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statSelectLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
