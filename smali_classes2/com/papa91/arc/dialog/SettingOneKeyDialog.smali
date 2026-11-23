.class public Lcom/papa91/arc/dialog/SettingOneKeyDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;,
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
    }
.end annotation


# static fields
.field static skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;


# instance fields
.field defIdx:I

.field gameDir:Ljava/lang/String;

.field gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

.field lv_hero:Landroid/widget/ListView;

.field private mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

.field mHandler:Landroid/os/Handler;

.field private mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

.field menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

.field oneKeyView:Landroid/view/View;

.field skillGifUrl:Ljava/lang/String;

.field skillIdx:I

.field skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

.field skillType:I

.field skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

.field spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

.field switchBtn:Landroid/widget/TextView;

.field tv_back_game:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 9
    .line 10
    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    sget v0, Lorg/ppsspp/ppsspp/R$id;->gv_list:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 28
    .line 29
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_hero:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ListView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->lv_hero:Landroid/widget/ListView;

    .line 38
    .line 39
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_back_game:Landroid/widget/TextView;

    .line 48
    .line 49
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_title:Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v1, "\u4e00\u952e\u6280\u80fd"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    new-array v0, v0, [Landroid/view/View;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_back_game:Landroid/widget/TextView;

    .line 68
    .line 69
    aput-object v1, v0, p1

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->initOneKeyView()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->initData()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/papa91/arc/widget/view/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->lv_hero:Landroid/widget/ListView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 34
    .line 35
    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 44
    .line 45
    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private initOneKeyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_onekey:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->oneKeyView:Landroid/view/View;

    .line 17
    .line 18
    sget v1, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Landroid/view/View;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gv_list:Lcom/papa91/arc/widget/view/HeaderGridView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->oneKeyView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/view/HeaderGridView;->addHeaderView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_onekey:I

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->tv_back_game:Landroid/widget/TextView;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    xor-int/lit8 v0, p1, 0x1

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setSPMenuVisible(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    .line 35
    .line 36
    xor-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string p1, "0"

    .line 48
    .line 49
    filled-new-array {p1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenKeyskill(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public onVipChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->onVipChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setSPMenuVisible(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenKeyskill(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "/"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->gameDir:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;

    .line 34
    .line 35
    :cond_0
    sget-object v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillConfigBean:Lcom/papa91/arc/bean/SkillConfigBean;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillConfigBean;->getGifHostUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillGifUrl:Ljava/lang/String;

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getCurrentChar()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_4

    .line 76
    .line 77
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->switchBtn:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean;->getType()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    .line 95
    .line 96
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mHeroAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->mAdapter:Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->lv_hero:Landroid/widget/ListView;

    .line 133
    .line 134
    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public showMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 21
    .line 22
    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSkillType(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSpBindsData(Lcom/papa91/arc/bean/SpBindsDataBean;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSkillTableData(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 42
    .line 43
    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setHeroIndex(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 49
    .line 50
    iget v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSkillIdx(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 56
    .line 57
    new-instance v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->setSpBindListener(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->show()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
