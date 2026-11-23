.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/Slot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

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
    .locals 2

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;)V

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 17
    .line 18
    sget p4, Lorg/ppsspp/ppsspp/R$id;->cover:I

    .line 19
    .line 20
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->date:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 37
    .line 38
    sget p4, Lorg/ppsspp/ppsspp/R$id;->load:I

    .line 39
    .line 40
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    .line 45
    .line 46
    sget p4, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 47
    .line 48
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 53
    .line 54
    sget p4, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 55
    .line 56
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    move-object p3, p2

    .line 71
    check-cast p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/papa91/arc/bean/Slot;

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getDate()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    new-instance p4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v0, "file://"

    .line 105
    .line 106
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    new-instance v0, Ljava/io/File;

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 134
    .line 135
    invoke-virtual {v0, p4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 136
    .line 137
    .line 138
    :cond_1
    new-instance p4, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;

    .line 139
    .line 140
    invoke-direct {p4, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    .line 154
    .line 155
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_2

    .line 163
    .line 164
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 165
    .line 166
    const/16 p2, 0x8

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 178
    .line 179
    const/4 p2, 0x0

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_slot:I

    .line 2
    .line 3
    return v0
.end method
