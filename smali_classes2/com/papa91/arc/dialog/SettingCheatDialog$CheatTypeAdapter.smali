.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;
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
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

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
    .locals 3

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;)V

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object p3, p2

    .line 57
    check-cast p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;

    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/papa91/arc/bean/TypeBean;

    .line 64
    .line 65
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->isSelected()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    const/4 p4, 0x0

    .line 79
    const/16 v0, 0x8

    .line 80
    .line 81
    const/4 v1, -0x1

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 85
    .line 86
    const/high16 v2, -0x1000000

    .line 87
    .line 88
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_h:I

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eq p2, v1, :cond_1

    .line 103
    .line 104
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 114
    .line 115
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 120
    .line 121
    const v2, -0x6b2801

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_n:I

    .line 130
    .line 131
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eq p2, v1, :cond_3

    .line 139
    .line 140
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    :cond_3
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eq p2, v1, :cond_5

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-ne p1, v1, :cond_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 168
    .line 169
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    :goto_2
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    :goto_3
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_type:I

    .line 2
    .line 3
    return v0
.end method
