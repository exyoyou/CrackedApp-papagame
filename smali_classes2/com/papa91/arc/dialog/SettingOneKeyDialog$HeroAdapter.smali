.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeroAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

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
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;)V

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_mask:I

    .line 19
    .line 20
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    check-cast p4, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->iv_mask:Landroid/widget/ImageView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_name:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

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
    check-cast p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;

    .line 48
    .line 49
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p4, "file://"

    .line 55
    .line 56
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance p4, Ljava/io/File;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gameDir:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "/img/c_"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ".jpg"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    .line 110
    invoke-virtual {p4, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 118
    .line 119
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    new-instance p2, Landroid/graphics/ColorMatrix;

    .line 129
    .line 130
    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object p4, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 134
    .line 135
    iget p4, p4, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 136
    .line 137
    if-ne p1, p4, :cond_1

    .line 138
    .line 139
    const p1, 0x3eb33333    # 0.35f

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->iv_mask:Landroid/widget/ImageView;

    .line 146
    .line 147
    const/4 p4, 0x0

    .line 148
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 153
    .line 154
    invoke-virtual {p2, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->iv_mask:Landroid/widget/ImageView;

    .line 158
    .line 159
    const/16 p4, 0x8

    .line 160
    .line 161
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    :goto_1
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    .line 165
    .line 166
    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_onekey_hero:I

    .line 2
    .line 3
    return v0
.end method
