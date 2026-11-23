.class public Lcom/papa91/arc/dialog/SettingSlotDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;,
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;,
        Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;
    }
.end annotation


# instance fields
.field MAX_SLOT_COUNT:I

.field SLOT_COUNT:I

.field private addView:Landroid/view/View;

.field private autoSlotStatus:Z

.field private autoView:Landroid/view/View;

.field private fullView:Landroid/view/View;

.field private hasShowDot:Z

.field private lv_auto_slot:Landroid/widget/ListView;

.field private lv_slot:Landroid/widget/ListView;

.field private lv_type:Landroid/widget/ListView;

.field mHandler:Landroid/os/Handler;

.field mid:I

.field mslot:Lcom/papa91/arc/bean/Slot;

.field oldSelIndex:I

.field prefs:Lcom/papa91/wrapper/UserPrefs;

.field slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

.field slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

.field slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

.field slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field slotsQuick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field private time:I

.field tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

.field tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

.field private tv_auto_desc:Landroid/widget/TextView;

.field private tv_back_game:Landroid/widget/TextView;

.field tv_max_slot_tip:Landroid/widget/TextView;

.field private tv_status:Landroid/widget/TextView;

.field private tv_switchBtn:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field usedSlot:[Ljava/lang/Integer;

.field private vipFootView:Landroid/view/View;

.field private vipQuickFootView:Landroid/view/View;

.field private vipQuickView:Landroid/view/View;

.field private vipView:Landroid/view/View;


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
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 10
    .line 11
    const/16 p1, 0xa

    .line 12
    .line 13
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 14
    .line 15
    const/16 v0, 0x14

    .line 16
    .line 17
    iput v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->MAX_SLOT_COUNT:I

    .line 18
    .line 19
    new-array p1, p1, [Ljava/lang/Integer;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->hasShowDot:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 29
    .line 30
    new-instance v0, Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

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
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_back_game:Landroid/widget/TextView;

    .line 60
    .line 61
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_type:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/ListView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_type:Landroid/widget/ListView;

    .line 70
    .line 71
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_slot:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/ListView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 80
    .line 81
    sget v0, Lorg/ppsspp/ppsspp/R$id;->lv_auto_slot:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/ListView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 90
    .line 91
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_title:Landroid/widget/TextView;

    .line 100
    .line 101
    const-string v1, "\u5b58\u6863"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipFootView:Landroid/view/View;

    .line 116
    .line 117
    new-instance v0, Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickFootView:Landroid/view/View;

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [Landroid/view/View;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_back_game:Landroid/widget/TextView;

    .line 132
    .line 133
    aput-object v1, v0, p1

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->initSlotViews()V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->initSlotQuickViews()V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->initData()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingSlotDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getUgcPathInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$102(Lcom/papa91/arc/dialog/SettingSlotDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->hasShowDot:Z

    .line 2
    .line 3
    return p1
.end method

.method private findEmptySlot()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, -0x1

    .line 23
    return v0
.end method

.method private getUgcPathInternal()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "/emus/"

    .line 10
    .line 11
    const-string v3, "/"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->romPath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_2

    .line 141
    .line 142
    new-instance v1, Ljava/io/File;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 152
    .line 153
    .line 154
    :cond_2
    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 13
    .line 14
    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$4;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$4;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_type:Landroid/widget/ListView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private initSlotQuickViews()V
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
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_slot_vip:I

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
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa91/arc/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_slot_auto:I

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 31
    .line 32
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_time:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 43
    .line 44
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_status:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 55
    .line 56
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_switchBtn:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 67
    .line 68
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_auto_desc:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_auto_desc:Landroid/widget/TextView;

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [Landroid/view/View;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 83
    .line 84
    aput-object v2, v0, v1

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    .line 88
    .line 89
    aput-object v2, v0, v1

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private initSlotViews()V
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
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->layout_slot_vip:I

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
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_slot_new:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_slot_limit:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 49
    .line 50
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_max_slot_tip:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_max_slot_tip:Landroid/widget/TextView;

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    new-array v0, v0, [Landroid/view/View;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 65
    .line 66
    aput-object v2, v0, v1

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 70
    .line 71
    aput-object v2, v0, v1

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 75
    .line 76
    aput-object v2, v0, v1

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private refreshQuickState()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getAutoStateTimeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "s"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_auto_desc:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "\u6bcf20s\u4fdd\u5b58\u4e00\u6b21\u5b58\u6863\uff0c\u6700\u591a"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getAutoStateMax()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "\u4e2a"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->time:I

    .line 67
    .line 68
    if-gtz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->notifySlotChanged()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/papa91/arc/view/IEmulator;->getAutoSlotStatus()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateAutoSlotStatus()V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method

.method private updateAutoSlotStatus()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "\u540e\u81ea\u52a8\u5b58\u6863"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    .line 13
    .line 14
    const-string v1, "#FF000000"

    .line 15
    .line 16
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    .line 31
    .line 32
    const-string v1, "\u672a\u5f00\u542f"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_status:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v1, "#0D5B80"

    .line 40
    .line 41
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_time:Landroid/widget/TextView;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method


# virtual methods
.method delSlot(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$2;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public dismissOnly()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method evictCache(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "file://"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method getAutoSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$10;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$10;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_slot:I

    .line 2
    .line 3
    return v0
.end method

.method getQuickSlots()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getAutoSlotFilter()Ljava/io/FilenameFilter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    array-length v2, v0

    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/papa91/arc/dialog/SettingSlotDialog$9;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$9;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-lez v2, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ge v2, v3, :cond_1

    .line 64
    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "."

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v4, Lcom/papa91/arc/bean/Slot;

    .line 88
    .line 89
    invoke-direct {v4}, Lcom/papa91/arc/bean/Slot;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/io/File;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Lcom/papa91/arc/bean/Slot;->setPath(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Ljava/io/File;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    invoke-virtual {v4, v5, v6}, Lcom/papa91/arc/bean/Slot;->setTimestamp(J)V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v5, "\u81ea\u52a8\u5b58\u6863"

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    add-int/lit8 v5, v2, 0x1

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v3, Ljava/util/Date;

    .line 153
    .line 154
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Ljava/io/File;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 161
    .line 162
    .line 163
    move-result-wide v6

    .line 164
    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 165
    .line 166
    .line 167
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 168
    .line 169
    const-string v7, "yyyy-MM-dd HH:mm"

    .line 170
    .line 171
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setDate(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/io/File;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v2, ".png"

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v4, v2}, Lcom/papa91/arc/bean/Slot;->setThumb(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move v2, v5

    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_1
    return-object v0
.end method

.method public getRecordInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->resetUsedSlot()V

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getSlotFilter()Ljava/io/FilenameFilter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getSlotFilter()Ljava/io/FilenameFilter;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-lez v1, :cond_1

    .line 60
    .line 61
    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$5;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$5;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ge v2, v3, :cond_6

    .line 76
    .line 77
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/io/File;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "."

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/4 v5, 0x1

    .line 94
    add-int/2addr v4, v5

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Lcom/papa91/arc/bean/Slot;

    .line 100
    .line 101
    invoke-direct {v4}, Lcom/papa91/arc/bean/Slot;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/io/File;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setPath(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Ljava/io/File;

    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    invoke-virtual {v4, v6, v7}, Lcom/papa91/arc/bean/Slot;->setTimestamp(J)V

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception v6

    .line 139
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget v7, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->MAX_SLOT_COUNT:I

    .line 147
    .line 148
    if-le v6, v7, :cond_2

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_2
    new-instance v6, Ljava/util/Date;

    .line 153
    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Ljava/io/File;

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 161
    .line 162
    .line 163
    move-result-wide v7

    .line 164
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 165
    .line 166
    .line 167
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 168
    .line 169
    const-string v8, "yyyy-MM-dd HH:mm"

    .line 170
    .line 171
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setDate(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Ljava/io/File;

    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v7, ".png"

    .line 200
    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setThumb(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    const/4 v7, -0x1

    .line 216
    if-ne v6, v7, :cond_3

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_4

    .line 224
    .line 225
    const-string v3, "\u5feb\u901f\u5b58\u6863"

    .line 226
    .line 227
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_4
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    sub-int/2addr v6, v5

    .line 239
    iget-object v7, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 240
    .line 241
    array-length v8, v7

    .line 242
    if-ge v6, v8, :cond_5

    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    sub-int/2addr v6, v5

    .line 249
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    aput-object v5, v7, v6

    .line 254
    .line 255
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v6, "\u5b58\u6863"

    .line 261
    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_6
    return-object v0
.end method

.method getSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$6;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method notifySlotChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipFootView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickFootView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipFootView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickFootView:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    const/16 v3, 0x8

    .line 102
    .line 103
    if-ge v0, v1, :cond_2

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->findEmptySlot()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v1, -0x1

    .line 110
    if-ne v0, v1, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-lez v0, :cond_3

    .line 161
    .line 162
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_max_slot_tip:Landroid/widget/TextView;

    .line 163
    .line 164
    const-string v1, "\u5b58\u6863\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 170
    .line 171
    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_max_slot_tip:Landroid/widget/TextView;

    .line 182
    .line 183
    const-string v1, "\u5b58\u6863\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650,\u8bf7\u5f00\u901a\u4f1a\u5458"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 189
    .line 190
    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    :goto_2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-lez v0, :cond_4

    .line 204
    .line 205
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 206
    .line 207
    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 227
    .line 228
    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_add_space:I

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoView:Landroid/view/View;

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    :goto_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 247
    .line 248
    if-nez v0, :cond_5

    .line 249
    .line 250
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 251
    .line 252
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 253
    .line 254
    .line 255
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 256
    .line 257
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 258
    .line 259
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    .line 261
    .line 262
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 263
    .line 264
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 275
    .line 276
    if-nez v0, :cond_6

    .line 277
    .line 278
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 279
    .line 280
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 281
    .line 282
    .line 283
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 286
    .line 287
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    .line 289
    .line 290
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 291
    .line 292
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotAdapterQuick:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->addView:Landroid/view/View;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eq p1, v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->fullView:Landroid/view/View;

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipView:Landroid/view/View;

    .line 30
    .line 31
    if-eq p1, v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->vipQuickView:Landroid/view/View;

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tv_switchBtn:Landroid/widget/TextView;

    .line 39
    .line 40
    if-ne p1, v0, :cond_7

    .line 41
    .line 42
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 43
    .line 44
    if-eqz p1, :cond_7

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 47
    .line 48
    xor-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateAutoSlotStatus()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->autoSlotStatus:Z

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lcom/papa91/arc/view/IEmulator;->setAutoSlotStatus(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 67
    invoke-virtual {p0, p1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lez v0, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/papa91/arc/bean/Slot;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    add-int/lit8 p1, p1, -0x1

    .line 100
    .line 101
    :cond_5
    iget v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 102
    .line 103
    if-ge p1, v0, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    const/16 p1, 0xa

    .line 110
    .line 111
    if-ne v0, p1, :cond_7

    .line 112
    .line 113
    const-string p1, "2"

    .line 114
    .line 115
    filled-new-array {p1}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    :goto_2
    return-void
.end method

.method public onVipChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->onVipChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateData()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->refreshQuickState()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method resetUsedSlot()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v2, v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method saveSlot()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->findEmptySlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot(I)V

    return-void
.end method

.method saveSlot(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/dialog/SettingSlotDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog$3;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;I)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTab(I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_slot:Landroid/widget/ListView;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->lv_auto_slot:Landroid/widget/ListView;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->refreshQuickState()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->updateData()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->refreshQuickState()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->loadAdVideo()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public showQuickSlotVip()V
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
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    new-instance v1, Lcom/papa91/arc/dialog/TipOneDialog;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/papa91/arc/dialog/TipOneDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

    .line 16
    .line 17
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$8;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$8;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/TipOneDialog;->setListener(Lcom/papa91/arc/dialog/TipOneDialog$OnOptionsListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipOneDialog:Lcom/papa91/arc/dialog/TipOneDialog;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V
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
    iput p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mid:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    new-instance p2, Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 15
    .line 16
    invoke-direct {p2, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog$7;-><init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/papa91/arc/dialog/TipTwoDialog;->setListener(Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget p2, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 30
    .line 31
    if-ne p1, p2, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 34
    .line 35
    const-string p2, "\u662f\u5426\u5220\u9664\u5b58\u6863\uff1f"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget p2, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 42
    .line 43
    if-ne p1, p2, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 46
    .line 47
    const-string p2, "\u662f\u5426\u8986\u76d6\u5b58\u6863\uff1f"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    sget p2, Lorg/ppsspp/ppsspp/R$id;->load:I

    .line 54
    .line 55
    if-ne p1, p2, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 58
    .line 59
    const-string p2, "\u662f\u5426\u8bfb\u53d6\u6b64\u5b58\u6863\uff1f"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/TipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->tipTwoDialog:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public updateData()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getQuickSlots()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getMenuTypes(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-ge v4, v5, :cond_4

    .line 17
    .line 18
    iget v5, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    .line 27
    .line 28
    invoke-virtual {v5, v1}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    :goto_1
    iget-boolean v5, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->hasShowDot:Z

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-ne v5, v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-lez v6, :cond_1

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const/4 v6, 0x0

    .line 72
    :goto_2
    invoke-virtual {v5, v6}, Lcom/papa91/arc/bean/TypeBean;->setShowDot(Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/papa91/arc/bean/TypeBean;

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Lcom/papa91/arc/bean/TypeBean;->setShowDot(Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-lez v1, :cond_5

    .line 98
    .line 99
    const/16 v1, 0x14

    .line 100
    .line 101
    iput v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->SLOT_COUNT:I

    .line 110
    .line 111
    new-array v2, v2, [Ljava/lang/Integer;

    .line 112
    .line 113
    iput-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 114
    .line 115
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ge v3, v2, :cond_5

    .line 120
    .line 121
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->usedSlot:[Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/Integer;

    .line 128
    .line 129
    aput-object v4, v2, v3

    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    new-instance v1, Lcom/papa91/wrapper/UserPrefs;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-direct {v1, v2}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->prefs:Lcom/papa91/wrapper/UserPrefs;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getModSubfix()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p0, v2}, Lcom/papa91/arc/dialog/SettingSlotDialog;->getRecordInfo(Ljava/lang/String;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotsQuick:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->notifySlotChanged()V

    .line 193
    .line 194
    .line 195
    return-void
.end method
