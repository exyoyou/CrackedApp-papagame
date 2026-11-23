.class Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lorg/ppsspp/ppsspp/CheatInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 17
    .line 18
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 43
    .line 44
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 52
    .line 53
    iget v1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;

    .line 64
    .line 65
    invoke-direct {v0, p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 74
    .line 75
    .line 76
    return-object p2
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_tip:I

    .line 2
    .line 3
    return v0
.end method
