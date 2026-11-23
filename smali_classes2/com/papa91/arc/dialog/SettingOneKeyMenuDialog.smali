.class public Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;,
        Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;
    }
.end annotation


# instance fields
.field heroIndex:I

.field images_h:[I

.field images_n:[I

.field iv_close:Landroid/widget/ImageView;

.field private ll_root:Landroid/view/View;

.field lv_list:Landroid/widget/ListView;

.field private mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

.field private menus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/bean/OneKeyMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private skillIdx:I

.field private skillType:I

.field skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

.field private spBindListener:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

.field spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    .line 13
    .line 14
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_list:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ListView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->lv_list:Landroid/widget/ListView;

    .line 23
    .line 24
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->iv_close:Landroid/widget/ImageView;

    .line 33
    .line 34
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_root:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->ll_root:Landroid/view/View;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    new-array v1, v1, [Landroid/view/View;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->iv_close:Landroid/widget/ImageView;

    .line 46
    .line 47
    aput-object v2, v1, p1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    aput-object v0, v1, p1

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->initData()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindListener:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->lv_list:Landroid/widget/ListView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private initMenus()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillType:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_h:[I

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_h:[I

    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    :goto_1
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    .line 41
    .line 42
    array-length v3, v3

    .line 43
    if-ge v0, v3, :cond_8

    .line 44
    .line 45
    new-instance v3, Lcom/papa91/arc/bean/OneKeyMenuBean;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/papa91/arc/bean/OneKeyMenuBean;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_h:[I

    .line 51
    .line 52
    aget v4, v4, v0

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setIconRes(I)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->images_n:[I

    .line 58
    .line 59
    aget v4, v4, v0

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setIconResNormal(I)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 65
    .line 66
    const-string v5, "\u9009\u62e9"

    .line 67
    .line 68
    const-string v6, "\u7a7a"

    .line 69
    .line 70
    if-eqz v4, :cond_7

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-lt v0, v4, :cond_1

    .line 81
    .line 82
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_1
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget v7, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    .line 112
    .line 113
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const/4 v7, -0x1

    .line 124
    if-ne v4, v7, :cond_2

    .line 125
    .line 126
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setSkillBean(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_2
    iget-object v8, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-lt v4, v8, :cond_3

    .line 148
    .line 149
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_3
    iget-object v8, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 162
    .line 163
    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 172
    .line 173
    if-ne v4, v7, :cond_4

    .line 174
    .line 175
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    if-eqz v8, :cond_6

    .line 183
    .line 184
    iget v5, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillIdx:I

    .line 185
    .line 186
    if-ne v5, v4, :cond_5

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setCurrent(Z)V

    .line 196
    .line 197
    .line 198
    const-string v4, "\u5f53\u524d"

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    invoke-virtual {v8}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setCurrent(Z)V

    .line 212
    .line 213
    .line 214
    const-string v4, "\u66ff\u6362"

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :goto_2
    invoke-virtual {v3, v8}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setSkillBean(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_7
    invoke-virtual {v3, v6}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setName(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v5}, Lcom/papa91/arc/bean/OneKeyMenuBean;->setText(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_3
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->menus:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_onekey_menu:I

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->iv_close:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->ll_root:Landroid/view/View;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setHeroIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public setSkillIdx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillIdx:I

    .line 2
    .line 3
    return-void
.end method

.method public setSkillTableData(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSkillType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->skillType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSpBindListener(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindListener:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSpBindsData(Lcom/papa91/arc/bean/SpBindsDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->initMenus()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
