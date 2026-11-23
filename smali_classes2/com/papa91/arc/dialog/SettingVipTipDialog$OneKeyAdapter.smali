.class Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneKeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;)V

    .line 6
    .line 7
    .line 8
    sget p4, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 9
    .line 10
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    check-cast p4, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 17
    .line 18
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_desc:I

    .line 19
    .line 20
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    check-cast p4, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 29
    .line 30
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    check-cast p4, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    move-object p3, p2

    .line 47
    check-cast p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 54
    .line 55
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_set()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_one_key_tip:I

    .line 2
    .line 3
    return v0
.end method
