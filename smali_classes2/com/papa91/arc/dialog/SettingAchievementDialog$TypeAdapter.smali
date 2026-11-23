.class Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingAchievementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/TypeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

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
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;)V

    .line 6
    .line 7
    .line 8
    sget p4, Lorg/ppsspp/ppsspp/R$id;->ll_root:I

    .line 9
    .line 10
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    check-cast p4, Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_type:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_icon:I

    .line 29
    .line 30
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    check-cast p4, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

    .line 37
    .line 38
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_arrow:I

    .line 39
    .line 40
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    check-cast p4, Landroid/widget/ImageView;

    .line 45
    .line 46
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 47
    .line 48
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_dot:I

    .line 49
    .line 50
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    check-cast p4, Landroid/widget/ImageView;

    .line 55
    .line 56
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->iv_dot:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    move-object p3, p2

    .line 67
    check-cast p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;

    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/papa91/arc/bean/TypeBean;

    .line 74
    .line 75
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

    .line 76
    .line 77
    const/16 p4, 0x8

    .line 78
    .line 79
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->isSelected()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 98
    .line 99
    const/high16 p2, -0x1000000

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 105
    .line 106
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_h:I

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 119
    .line 120
    const p2, -0x6b2801

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 127
    .line 128
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_n:I

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_slot_type:I

    .line 2
    .line 3
    return v0
.end method
