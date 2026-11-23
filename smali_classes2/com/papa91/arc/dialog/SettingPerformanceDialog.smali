.class public Lcom/papa91/arc/dialog/SettingPerformanceDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# instance fields
.field advanced:Landroid/view/View;

.field close:Landroid/view/View;

.field performance:I

.field performanceLevel:I

.field tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

.field tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

.field tmpPerformance:I


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
    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performanceLevel:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    .line 9
    .line 10
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->initPerformanceViews()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->initData()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initPerformanceViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->close:Landroid/view/View;

    .line 8
    .line 9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 16
    .line 17
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tlPerformance:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/papa91/arc/view/SegmentTabLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 26
    .line 27
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tlCustom:I

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/papa91/arc/view/SegmentTabLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "\u5173"

    .line 44
    .line 45
    const-string v2, "\u5f00"

    .line 46
    .line 47
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 57
    .line 58
    new-instance v2, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingPerformanceDialog;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 67
    .line 68
    new-instance v2, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingPerformanceDialog;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->close:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->setPerformanceTotalLevel(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->isCustomPerformance()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v2, 0x0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 102
    .line 103
    const/4 v1, -0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 120
    .line 121
    iget v1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_performance:I

    .line 2
    .line 3
    return v0
.end method

.method isCustomPerformance()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public needScreenAdapter()Z
    .locals 1

    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enterGameSettings(I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    sput p1, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method selectPerformance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa91/arc/util/GameSettings;->setGameSettingLevel(I)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method setPerformanceTotalLevel(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performanceLevel:I

    .line 2
    .line 3
    const-string v0, "\u4f4e\u753b\u8d28"

    .line 4
    .line 5
    const-string v1, "\u6d41\u7545\u753b\u8d28"

    .line 6
    .line 7
    const-string v2, "\u9ad8\u753b\u8d28"

    .line 8
    .line 9
    const-string v3, "\u8d85\u9ad8\u753b\u8d28"

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "\u6700\u4f73\u753b\u8d28"

    .line 16
    .line 17
    filled-new-array {v0, v1, v2, v3, v5}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x4

    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public varargs show([Ljava/lang/String;)V
    .locals 3

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
    :try_start_0
    aget-object v1, p1, v0

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->setPerformanceTotalLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    array-length v1, p1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-le v1, v2, :cond_0

    .line 24
    .line 25
    aget-object p1, p1, v2

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->performance:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->selectPerformance(I)V

    .line 54
    .line 55
    .line 56
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
