.class Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingAchievementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AchievementAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;->this$0:Lcom/papa91/arc/dialog/SettingAchievementDialog;

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
    new-instance p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;)V

    .line 6
    .line 7
    .line 8
    sget p4, Lorg/ppsspp/ppsspp/R$id;->ivAchievement:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tvAchievementName:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvAchievementName:Landroid/widget/TextView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tvAchievementDesc:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvAchievementDesc:Landroid/widget/TextView;

    .line 37
    .line 38
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tvAchievementUnlockPercent:I

    .line 39
    .line 40
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    check-cast p4, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvAchievementUnlockPercent:Landroid/widget/TextView;

    .line 47
    .line 48
    sget p4, Lorg/ppsspp/ppsspp/R$id;->llProgress:I

    .line 49
    .line 50
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    check-cast p4, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->llProgress:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tvProgress:I

    .line 59
    .line 60
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    check-cast p4, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvProgress:Landroid/widget/TextView;

    .line 67
    .line 68
    sget p4, Lorg/ppsspp/ppsspp/R$id;->progressBar:I

    .line 69
    .line 70
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    check-cast p4, Landroid/widget/ProgressBar;

    .line 75
    .line 76
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    move-object p3, p2

    .line 87
    check-cast p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;

    .line 94
    .line 95
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Lcom/facebook/drawee/generic/a;

    .line 102
    .line 103
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->shape_placeholder:I

    .line 104
    .line 105
    invoke-virtual {p2, p4}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/facebook/drawee/generic/a;

    .line 115
    .line 116
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->wifi:I

    .line 117
    .line 118
    invoke-virtual {p2, p4}, Lcom/facebook/drawee/generic/a;->C(I)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getIcon()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    invoke-virtual {p2, p4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvAchievementDesc:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getCondition()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvAchievementName:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvAchievementUnlockPercent:Landroid/widget/TextView;

    .line 153
    .line 154
    new-instance p4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getUnlock_rate()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, "%\u73a9\u5bb6\u5df2\u89e3\u9501"

    .line 167
    .line 168
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->llProgress:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getTarget()I

    .line 181
    .line 182
    .line 183
    move-result p4

    .line 184
    const/4 v0, 0x1

    .line 185
    if-le p4, v0, :cond_1

    .line 186
    .line 187
    const/4 p4, 0x0

    .line 188
    goto :goto_1

    .line 189
    :cond_1
    const/16 p4, 0x8

    .line 190
    .line 191
    :goto_1
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->tvProgress:Landroid/widget/TextView;

    .line 195
    .line 196
    new-instance p4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getDone()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v0, "/"

    .line 209
    .line 210
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getTarget()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p4

    .line 224
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getTarget()I

    .line 230
    .line 231
    .line 232
    move-result p4

    .line 233
    invoke-virtual {p2, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 234
    .line 235
    .line 236
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getDone()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_achievement:I

    .line 2
    .line 3
    return v0
.end method
