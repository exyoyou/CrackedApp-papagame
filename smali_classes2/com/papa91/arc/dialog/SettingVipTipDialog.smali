.class public Lcom/papa91/arc/dialog/SettingVipTipDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;,
        Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;,
        Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;,
        Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;
    }
.end annotation


# instance fields
.field private cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

.field private gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

.field gv_list:Landroid/widget/GridView;

.field iv_close:Landroid/widget/ImageView;

.field lv_list:Landroid/widget/ListView;

.field private mCharid:I

.field private mType:I

.field noTipListener:Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;

.field private oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

.field private skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

.field tv_nomore_tip:Landroid/widget/TextView;

.field tv_open_vip:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;


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
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->numberToChinese(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private initCheatView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getCheatListData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 24
    .line 25
    const/high16 v1, 0x40c00000    # 6.0f

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->dp2px(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->cheatingAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private initGateView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGateData()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$GateAdapter;

    .line 11
    .line 12
    new-instance v1, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private initOneKeyView(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->oneKeyAdapter:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->iv_close:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_nomore_tip:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_nomore_tip:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_list:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ListView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 30
    .line 31
    sget v0, Lorg/ppsspp/ppsspp/R$id;->gv_list:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/GridView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_open_vip:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_open_vip:Landroid/widget/TextView;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    new-array v1, v1, [Landroid/view/View;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->iv_close:Landroid/widget/ImageView;

    .line 66
    .line 67
    aput-object v3, v1, v2

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    aput-object v0, v1, v2

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_nomore_tip:Landroid/widget/TextView;

    .line 74
    .line 75
    aput-object v2, v1, v0

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private static numberToChinese(I)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "\u96f6"

    .line 2
    .line 3
    const-string v1, "\u4e00"

    .line 4
    .line 5
    const-string v2, "\u4e8c"

    .line 6
    .line 7
    const-string v3, "\u4e09"

    .line 8
    .line 9
    const-string v4, "\u56db"

    .line 10
    .line 11
    const-string v5, "\u4e94"

    .line 12
    .line 13
    const-string v6, "\u516d"

    .line 14
    .line 15
    const-string v7, "\u4e03"

    .line 16
    .line 17
    const-string v8, "\u516b"

    .line 18
    .line 19
    const-string v9, "\u4e5d"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, ""

    .line 26
    .line 27
    const-string v2, "\u5341"

    .line 28
    .line 29
    const-string v3, "\u767e"

    .line 30
    .line 31
    const-string v4, "\u5343"

    .line 32
    .line 33
    const-string v5, "\u4e07"

    .line 34
    .line 35
    const-string v6, "\u5341"

    .line 36
    .line 37
    const-string v7, "\u767e"

    .line 38
    .line 39
    const-string v8, "\u5343"

    .line 40
    .line 41
    const-string v9, "\u4ebf"

    .line 42
    .line 43
    const-string v10, "\u5341"

    .line 44
    .line 45
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-gez p0, :cond_0

    .line 50
    .line 51
    const-string v2, "\u8d1f"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v2, ""

    .line 55
    .line 56
    :goto_0
    if-gez p0, :cond_1

    .line 57
    .line 58
    neg-int p0, p0

    .line 59
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    :goto_1
    if-ge v5, v2, :cond_5

    .line 79
    .line 80
    sub-int v6, v2, v5

    .line 81
    .line 82
    aget-char v7, p0, v5

    .line 83
    .line 84
    add-int/lit8 v7, v7, -0x30

    .line 85
    .line 86
    if-eqz v7, :cond_2

    .line 87
    .line 88
    aget-object v7, v0, v7

    .line 89
    .line 90
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v6, v6, -0x1

    .line 94
    .line 95
    aget-object v6, v1, v6

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    aget-object v8, v0, v4

    .line 106
    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    rem-int/lit8 v7, v6, 0x4

    .line 114
    .line 115
    const/4 v8, 0x1

    .line 116
    if-ne v7, v8, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    sub-int/2addr v7, v8

    .line 123
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    add-int/lit8 v6, v6, -0x1

    .line 127
    .line 128
    aget-object v6, v1, v6

    .line 129
    .line 130
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    aget-object v6, v0, v4

    .line 135
    .line 136
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0
.end method

.method private showView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    mul-float p1, p1, v0

    .line 14
    .line 15
    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_vip_tip:I

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->iv_close:Landroid/widget/ImageView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_0
    if-ne p1, v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v0, v1, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_1
    if-ne p1, v2, :cond_a

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statExitVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_nomore_tip:Landroid/widget/TextView;

    .line 86
    .line 87
    if-ne p1, v0, :cond_7

    .line 88
    .line 89
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->noTipListener:Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    iget v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    .line 94
    .line 95
    iget v4, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mCharid:I

    .line 96
    .line 97
    invoke-interface {p1, v0, v4}, Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;->onNoTipClick(II)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    .line 101
    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    if-ne p1, v3, :cond_5

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1, v0, v1, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    if-ne p1, v2, :cond_6

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statNotpromptVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_open_vip:Landroid/widget/TextView;

    .line 172
    .line 173
    if-ne p1, v0, :cond_a

    .line 174
    .line 175
    iget p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    .line 176
    .line 177
    if-nez p1, :cond_8

    .line 178
    .line 179
    invoke-virtual {p0, v3, v3}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_8
    if-ne p1, v3, :cond_9

    .line 203
    .line 204
    invoke-virtual {p0, v1, v3}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p1, v0, v1, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_9
    if-ne p1, v2, :cond_a

    .line 228
    .line 229
    const/4 p1, 0x3

    .line 230
    invoke-virtual {p0, p1, v3}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    :cond_a
    :goto_1
    return-void
.end method

.method public setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->noTipListener:Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;

    .line 2
    .line 3
    return-void
.end method

.method public show(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mType:I

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->mCharid:I

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string p2, "\u8bd5\u8bd5\u4e0b\u5217\u91d1\u624b\u6307"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->showView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initCheatView()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    .line 27
    .line 28
    const-string v0, "\u4e00\u952e\u51fa\u5fc5\u6740\u6280"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->lv_list:Landroid/widget/ListView;

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->showView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initOneKeyView(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x2

    .line 43
    if-ne p1, p2, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->tv_title:Landroid/widget/TextView;

    .line 46
    .line 47
    const-string p2, "\u8df3\u5230\u4efb\u610f\u5173\u5361"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog;->gv_list:Landroid/widget/GridView;

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->showView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->initGateView()V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
