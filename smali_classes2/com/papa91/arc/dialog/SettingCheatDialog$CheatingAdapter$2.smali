.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->val$i:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 20
    .line 21
    iget p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 31
    .line 32
    iget v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->val$i:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/papa91/arc/dialog/SettingDialog;->cheatInfoEnable(II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 38
    .line 39
    iput p1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 45
    .line 46
    const-string v0, "1"

    .line 47
    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method
