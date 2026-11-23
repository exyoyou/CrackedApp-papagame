.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneKeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;
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
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

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
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;)V

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 27
    .line 28
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_key:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key:Landroid/widget/TextView;

    .line 37
    .line 38
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_key_add:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    .line 47
    .line 48
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_key_code:I

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
    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

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
    check-cast p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;

    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 74
    .line 75
    iget-object p4, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 76
    .line 77
    invoke-virtual {p4}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-static {p4}, Lcom/papa91/arc/SnkConfig;->isSnkGame(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-eqz p4, :cond_1

    .line 86
    .line 87
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 88
    .line 89
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->img_snk_default_image:I

    .line 90
    .line 91
    invoke-virtual {p4, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setActualImageResource(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillGifUrl:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, "/s_"

    .line 108
    .line 109
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 113
    .line 114
    iget v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 115
    .line 116
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, "_"

    .line 120
    .line 121
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, ".gif"

    .line 128
    .line 129
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, p4}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p4, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object p4

    .line 153
    check-cast p4, Lcom/facebook/drawee/backends/pipeline/e;

    .line 154
    .line 155
    invoke-virtual {p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 156
    .line 157
    .line 158
    move-result-object p4

    .line 159
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 160
    .line 161
    invoke-virtual {v0, p4}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key:Landroid/widget/TextView;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_set()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 183
    .line 184
    iget-object p2, p2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 185
    .line 186
    const/4 p4, 0x0

    .line 187
    const/16 v0, 0x8

    .line 188
    .line 189
    if-eqz p2, :cond_4

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->getImageIndex(I)I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    const/4 p2, -0x1

    .line 196
    if-ne p1, p2, :cond_2

    .line 197
    .line 198
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_2
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 220
    .line 221
    iget v1, p2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    .line 222
    .line 223
    if-nez v1, :cond_3

    .line 224
    .line 225
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {p2, p4}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    aget p1, p2, p1

    .line 232
    .line 233
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_3
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 238
    .line 239
    const/4 v1, 0x2

    .line 240
    invoke-virtual {p2, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    aget p1, p2, p1

    .line 245
    .line 246
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_4
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-nez p1, :cond_5

    .line 267
    .line 268
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    :cond_5
    return-void
.end method

.method getImageIndex(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 35
    .line 36
    iget v2, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v1, p1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, -0x1

    .line 55
    :goto_1
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_onekey:I

    .line 2
    .line 3
    return v0
.end method
