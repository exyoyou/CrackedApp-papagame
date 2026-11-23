.class public Lcom/papa91/arc/dialog/SettingVipDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"

# interfaces
.implements Lya/b;


# instance fields
.field banner:Lcom/youth/banner/Banner;

.field bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

.field close:Landroid/view/View;

.field from:I

.field group:Landroidx/constraintlayout/widget/Group;

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vipBattle:Landroid/widget/ImageView;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipCheating:Landroid/widget/ImageView;

.field vipSelectScene:Landroid/widget/ImageView;

.field vipSlot:Landroid/widget/ImageView;

.field vipSp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipDialog;->initVipViews()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipDialog;->initData()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initVipViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->banner:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/youth/banner/Banner;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->banner:Lcom/youth/banner/Banner;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->bannerViewPager:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/youth/banner/view/BannerViewPager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 20
    .line 21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSp:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipCheating:Landroid/widget/ImageView;

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSlot:Landroid/widget/ImageView;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSelectScene:Landroid/widget/ImageView;

    .line 60
    .line 61
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBattle:Landroid/widget/ImageView;

    .line 70
    .line 71
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->close:Landroid/view/View;

    .line 78
    .line 79
    sget v0, Lorg/ppsspp/ppsspp/R$id;->group:I

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->group:Landroidx/constraintlayout/widget/Group;

    .line 88
    .line 89
    const/4 v0, 0x6

    .line 90
    new-array v0, v0, [Landroid/view/View;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->close:Landroid/view/View;

    .line 94
    .line 95
    aput-object v2, v0, v1

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSp:Landroid/widget/ImageView;

    .line 99
    .line 100
    aput-object v2, v0, v1

    .line 101
    .line 102
    const/4 v1, 0x2

    .line 103
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipCheating:Landroid/widget/ImageView;

    .line 104
    .line 105
    aput-object v2, v0, v1

    .line 106
    .line 107
    const/4 v1, 0x3

    .line 108
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSlot:Landroid/widget/ImageView;

    .line 109
    .line 110
    aput-object v2, v0, v1

    .line 111
    .line 112
    const/4 v1, 0x4

    .line 113
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSelectScene:Landroid/widget/ImageView;

    .line 114
    .line 115
    aput-object v2, v0, v1

    .line 116
    .line 117
    const/4 v1, 0x5

    .line 118
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBattle:Landroid/widget/ImageView;

    .line 119
    .line 120
    aput-object v2, v0, v1

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->banner:Lcom/youth/banner/Banner;

    .line 126
    .line 127
    new-instance v1, Lcom/papa91/arc/dialog/SettingVipDialog$1;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingVipDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingVipDialog;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_vip:I

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
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    .line 39
    .line 40
    if-ne p1, v0, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    .line 50
    .line 51
    if-ne p1, v0, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 54
    .line 55
    const/4 v0, 0x4

    .line 56
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    .line 61
    .line 62
    if-ne p1, v0, :cond_5

    .line 63
    .line 64
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_0
    return-void
.end method

.method resetButtonState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSp:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_sp_selected:I

    .line 13
    .line 14
    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_sp_default:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipCheating:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_1
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_cheating_selected:I

    .line 29
    .line 30
    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_cheating_default:I

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSlot:Landroid/widget/ImageView;

    .line 36
    .line 37
    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    if-ne v1, v4, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_2
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_slot_selected:I

    .line 46
    .line 47
    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_slot_default:I

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSelectScene:Landroid/widget/ImageView;

    .line 53
    .line 54
    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    if-ne v1, v4, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_3
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_select_sence_selected:I

    .line 63
    .line 64
    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_select_sence_default:I

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBattle:Landroid/widget/ImageView;

    .line 70
    .line 71
    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 72
    .line 73
    const/4 v4, 0x4

    .line 74
    if-ne v1, v4, :cond_4

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    :cond_4
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_battle_selected:I

    .line 78
    .line 79
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_battle_default:I

    .line 80
    .line 81
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method select(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingVipDialog;->resetButtonState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setVipTabSelect(Landroid/widget/ImageView;ZII)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vip_btn_selected:I

    .line 21
    .line 22
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    return-void
.end method

.method public varargs show([Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public updateVipDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    const/4 v1, 0x5

    .line 21
    if-ge v0, v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/papa91/arc/bean/VipBean;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    .line 50
    .line 51
    const-string v2, ""

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->banner:Lcom/youth/banner/Banner;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lcom/papa91/arc/view/GlideImageLoader;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p0}, Lcom/youth/banner/Banner;->D(Lya/b;)Lcom/youth/banner/Banner;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 84
    .line 85
    iget v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
