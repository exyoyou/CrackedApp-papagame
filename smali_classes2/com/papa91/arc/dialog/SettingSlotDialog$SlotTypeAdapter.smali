.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;
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
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

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
    new-instance p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;)V

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_dot:Landroid/widget/ImageView;

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
    check-cast p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;

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
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->isSelected()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const/4 p4, 0x0

    .line 89
    const/16 v0, 0x8

    .line 90
    .line 91
    const/4 v1, -0x1

    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 95
    .line 96
    const/high16 v2, -0x1000000

    .line 97
    .line 98
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_h:I

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eq p2, v1, :cond_2

    .line 118
    .line 119
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 130
    .line 131
    const v2, -0x6b2801

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_n:I

    .line 140
    .line 141
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eq p2, v1, :cond_2

    .line 154
    .line 155
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    .line 163
    .line 164
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eq p2, v1, :cond_4

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-ne p2, v1, :cond_3

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_4
    :goto_2
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_slot_store:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    :goto_3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->isShowDot()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_5

    .line 193
    .line 194
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_dot:Landroid/widget/ImageView;

    .line 195
    .line 196
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter$ViewHolder;->iv_dot:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    :goto_4
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

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
