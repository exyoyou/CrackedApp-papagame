.class Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/OneKeyMenuBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

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
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;)V

    .line 6
    .line 7
    .line 8
    sget p4, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    .line 9
    .line 10
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    .line 16
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_name:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_bind:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

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
    check-cast p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/papa91/arc/bean/OneKeyMenuBean;

    .line 54
    .line 55
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getText()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->isCurrent()Z

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-eqz p4, :cond_1

    .line 78
    .line 79
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getIconRes()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 89
    .line 90
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->bg_btn_onekey_choose_unable:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string p2, "#FF9A9A9A"

    .line 98
    .line 99
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getIconResNormal()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p4, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 117
    .line 118
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->bg_btn_onekey_choose:I

    .line 119
    .line 120
    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 124
    .line 125
    const-string p4, "#FF8CC6E5"

    .line 126
    .line 127
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 135
    .line 136
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;

    .line 137
    .line 138
    invoke-direct {p3, p0, p1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_onekey_bind:I

    .line 2
    .line 3
    return v0
.end method
