.class Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statUesVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method
