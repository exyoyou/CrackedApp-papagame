.class public Lcom/papa91/arc/dialog/SettingGateDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;
    }
.end annotation


# instance fields
.field private gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

.field gv_list:Landroid/widget/GridView;

.field private loding_layout:Landroid/widget/LinearLayout;

.field mid:I

.field tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

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
    sget p1, Lorg/ppsspp/ppsspp/R$id;->gv_list:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/GridView;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gv_list:Landroid/widget/GridView;

    .line 13
    .line 14
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_back_game:Landroid/widget/TextView;

    .line 23
    .line 24
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_title:Landroid/widget/TextView;

    .line 33
    .line 34
    sget p1, Lorg/ppsspp/ppsspp/R$id;->loding_layout:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_title:Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v0, "\u9009\u62e9\u5173\u5361"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    new-array p1, p1, [Landroid/view/View;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_back_game:Landroid/widget/TextView;

    .line 66
    .line 67
    aput-object v1, p1, v0

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingGateDialog;->initData()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingGateDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingGateDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/arc/dialog/SettingGateDialog;)Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/dialog/SettingGateDialog;->numberToChinese(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gv_list:Landroid/widget/GridView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 18
    .line 19
    new-instance v1, Lcom/papa91/arc/dialog/SettingGateDialog$2;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 25
    .line 26
    .line 27
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


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_gate:I

    .line 2
    .line 3
    return v0
.end method

.method public hideLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tv_back_game:Landroid/widget/TextView;

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
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->gateAdapter:Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGateData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public showPrompt(I)V
    .locals 1

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
    iput p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->mid:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 18
    .line 19
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog$3;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;->setListener(Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 28
    .line 29
    const-string v0, "\u662f\u5426\u8bfb\u53d6\u6b64\u5173\u5361\uff1f"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
