.class Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

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
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 22
    .line 23
    iget v2, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    iput v0, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 34
    .line 35
    invoke-virtual {p1, v1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1, v1, v2, v0}, Lcom/papa91/arc/common/constants/StatIntents;->statUesVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method
