.class public Lcom/papa91/arc/dialog/SettingCheatDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;,
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;,
        Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;
    }
.end annotation


# instance fields
.field addCheat:Landroid/view/View;

.field addCheatView:Landroid/view/View;

.field cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field cheatAddDialog:Landroid/app/Dialog;

.field cheatCode:Landroid/widget/EditText;

.field cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

.field cheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field cheatName:Landroid/widget/EditText;

.field cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

.field constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private elv_cheat:Landroid/widget/ExpandableListView;

.field private etv_view:Lcom/papa91/arc/widget/view/EmptyTipView;

.field footerView:Landroid/view/View;

.field private isGG:Z

.field iv_close:Landroid/widget/ImageView;

.field private lv_cheat_custom:Landroid/widget/ListView;

.field private lv_type:Landroid/widget/ListView;

.field oldSelIndex:I

.field openVip:Landroid/view/View;

.field openVipCustom:Landroid/view/View;

.field paste:Landroid/view/View;

.field rbt_type_cheat:Landroid/widget/RadioButton;

.field rbt_type_gg:Landroid/widget/RadioButton;

.field rg_type:Landroid/widget/RadioGroup;

.field save:Landroid/view/View;

.field textView10:Landroid/widget/TextView;

.field private tv_back_game:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field viewFooter:Landroid/view/View;

.field vipView:Landroid/view/View;

.field vipViewCustom:Landroid/view/View;


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
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 15
    .line 16
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_back_game:Landroid/widget/TextView;

    .line 25
    .line 26
    sget v1, Lorg/ppsspp/ppsspp/R$id;->lv_type:I

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/ListView;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_type:Landroid/widget/ListView;

    .line 35
    .line 36
    sget v1, Lorg/ppsspp/ppsspp/R$id;->lv_cheat_custom:I

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/ListView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 45
    .line 46
    sget v1, Lorg/ppsspp/ppsspp/R$id;->elv_cheat:I

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 55
    .line 56
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_title:Landroid/widget/TextView;

    .line 65
    .line 66
    sget v1, Lorg/ppsspp/ppsspp/R$id;->etv_view:I

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/papa91/arc/widget/view/EmptyTipView;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->etv_view:Lcom/papa91/arc/widget/view/EmptyTipView;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_title:Landroid/widget/TextView;

    .line 77
    .line 78
    const-string v2, "\u91d1\u624b\u6307"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Landroid/view/View;

    .line 84
    .line 85
    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->footerView:Landroid/view/View;

    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    new-array p1, p1, [Landroid/view/View;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_back_game:Landroid/widget/TextView;

    .line 94
    .line 95
    aput-object v1, p1, v0

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->initCheatingViews()V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->initData()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/papa91/arc/dialog/SettingCheatDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private initCheatingViews()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->constraintLayout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_cheat_add:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    .line 25
    .line 26
    sget v1, Lorg/ppsspp/ppsspp/R$id;->addCheat:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheat:Landroid/view/View;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_cheat_vip:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    .line 47
    .line 48
    sget v3, Lorg/ppsspp/ppsspp/R$id;->tv_open_vip:I

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVip:Landroid/view/View;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVipCustom:Landroid/view/View;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_footer_nomore:I

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->viewFooter:Landroid/view/View;

    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    new-array v0, v0, [Landroid/view/View;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheat:Landroid/view/View;

    .line 93
    .line 94
    aput-object v2, v0, v1

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVip:Landroid/view/View;

    .line 98
    .line 99
    aput-object v2, v0, v1

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVipCustom:Landroid/view/View;

    .line 103
    .line 104
    aput-object v2, v0, v1

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 115
    .line 116
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    .line 123
    .line 124
    invoke-direct {v0, p0, v1, v2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Landroid/content/Context;Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 13
    .line 14
    new-instance v1, Lcom/papa91/arc/dialog/SettingCheatDialog$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_type:Landroid/widget/ListView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private showListView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public cheatReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_cheat:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextFromClip(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/content/ClipboardManager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->tv_back_game:Landroid/widget/TextView;

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
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheat:Landroid/view/View;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showAddCheatDialog()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->paste:Landroid/view/View;

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 30
    .line 31
    if-eqz p1, :cond_9

    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->getTextFromClip(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    if-ne p1, v0, :cond_6

    .line 59
    .line 60
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-string v0, "\u8bf7\u586b\u5199\u4f5c\u5f0a\u7801\u540d\u79f0\uff01"

    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    const-string v0, "\u8bf7\u586b\u5199\u4f5c\u5f0a\u7801\uff01"

    .line 103
    .line 104
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 119
    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->checkCheatCodeInfo(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u4e0d\u5339\u914d\uff01"

    .line 129
    .line 130
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    :try_start_0
    new-instance p1, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 137
    .line 138
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-direct {p1, v1, v0, v2, v3}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->addData(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    goto :goto_1

    .line 177
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    .line 180
    .line 181
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->iv_close:Landroid/widget/ImageView;

    .line 197
    .line 198
    if-ne p1, v0, :cond_7

    .line 199
    .line 200
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 201
    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_9

    .line 209
    .line 210
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVip:Landroid/view/View;

    .line 217
    .line 218
    if-eq p1, v0, :cond_8

    .line 219
    .line 220
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->openVipCustom:Landroid/view/View;

    .line 221
    .line 222
    if-ne p1, v0, :cond_9

    .line 223
    .line 224
    :cond_8
    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 226
    .line 227
    .line 228
    :cond_9
    :goto_2
    return-void
.end method

.method public onVipChanged()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->setTab(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public pauseGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->pauseGame()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public resumeGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->resumeGame()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTab(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatInfos:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getCheatListData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getEditCheatListData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-lez v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->footerView:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    sget v2, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    if-nez p1, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipView:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    if-ne p1, v1, :cond_5

    .line 129
    .line 130
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->footerView:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->vipViewCustom:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    sget v2, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/16 v2, 0x8

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    :cond_6
    :goto_2
    if-nez p1, :cond_8

    .line 167
    .line 168
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->viewFooter:Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroupCount()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-lez p1, :cond_7

    .line 182
    .line 183
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 184
    .line 185
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showListView(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->elv_cheat:Landroid/widget/ExpandableListView;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->viewFooter:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->etv_view:Lcom/papa91/arc/widget/view/EmptyTipView;

    .line 197
    .line 198
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showListView(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    if-ne p1, v1, :cond_9

    .line 208
    .line 209
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 210
    .line 211
    iput v1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->viewType:I

    .line 212
    .line 213
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 214
    .line 215
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 221
    .line 222
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->addCheatView:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->lv_cheat_custom:Landroid/widget/ListView;

    .line 228
    .line 229
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showListView(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 235
    .line 236
    .line 237
    :cond_9
    :goto_4
    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getMenuTypes(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/papa91/arc/bean/TypeBean;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/papa91/arc/bean/TypeBean;

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->setTab(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public showAddCheatDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Lcom/papa91/arc/view/BaseDialog;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v0, v2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 16
    .line 17
    sget v2, Lorg/ppsspp/ppsspp/R$layout;->dialog_add_cheat:I

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 23
    .line 24
    sget v2, Lorg/ppsspp/ppsspp/R$id;->editText:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/EditText;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 35
    .line 36
    sget v2, Lorg/ppsspp/ppsspp/R$id;->editText2:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/EditText;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 47
    .line 48
    sget v2, Lorg/ppsspp/ppsspp/R$id;->paste:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->paste:Landroid/view/View;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 57
    .line 58
    sget v2, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 67
    .line 68
    sget v2, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->iv_close:Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 79
    .line 80
    sget v2, Lorg/ppsspp/ppsspp/R$id;->rg_type:I

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/RadioGroup;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 91
    .line 92
    sget v2, Lorg/ppsspp/ppsspp/R$id;->rbt_type_cheat:I

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/RadioButton;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_cheat:Landroid/widget/RadioButton;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 103
    .line 104
    sget v2, Lorg/ppsspp/ppsspp/R$id;->rbt_type_gg:I

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/RadioButton;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 115
    .line 116
    sget v2, Lorg/ppsspp/ppsspp/R$id;->textView10:I

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->textView10:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showGGCodeButton()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    .line 132
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    .line 139
    .line 140
    const/16 v2, 0x8

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    .line 146
    .line 147
    new-instance v2, Lcom/papa91/arc/dialog/SettingCheatDialog$3;

    .line 148
    .line 149
    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/16 v2, 0x10

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 162
    .line 163
    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 165
    .line 166
    if-eqz v0, :cond_2

    .line 167
    .line 168
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rg_type:Landroid/widget/RadioGroup;

    .line 181
    .line 182
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_cheat:Landroid/widget/RadioButton;

    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 189
    .line 190
    .line 191
    :goto_1
    const/4 v0, 0x3

    .line 192
    new-array v0, v0, [Landroid/view/View;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->paste:Landroid/view/View;

    .line 195
    .line 196
    aput-object v2, v0, v1

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    .line 200
    .line 201
    aput-object v2, v0, v1

    .line 202
    .line 203
    const/4 v1, 0x2

    .line 204
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->iv_close:Landroid/widget/ImageView;

    .line 205
    .line 206
    aput-object v2, v0, v1

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 212
    .line 213
    const-string v1, ""

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->textView10:Landroid/widget/TextView;

    .line 224
    .line 225
    iget-boolean v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 226
    .line 227
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getCustomCheatTip(Z)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_3

    .line 241
    .line 242
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 245
    .line 246
    .line 247
    :cond_3
    return-void
.end method

.method public showModifyCheatDialog(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt v0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 19
    .line 20
    iget-boolean v1, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->isGG:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showAddCheatDialog()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 28
    .line 29
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 35
    .line 36
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 42
    .line 43
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->save:Landroid/view/View;

    .line 53
    .line 54
    new-instance v2, Lcom/papa91/arc/dialog/SettingCheatDialog$2;

    .line 55
    .line 56
    invoke-direct {v2, p0, v0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public updateSwitchState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 18
    .line 19
    xor-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iput-boolean p1, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
