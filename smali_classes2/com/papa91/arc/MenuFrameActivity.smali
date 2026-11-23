.class public Lcom/papa91/arc/MenuFrameActivity;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Lya/b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/MenuFrameActivity$MenuType;,
        Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;,
        Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;
    }
.end annotation


# static fields
.field static cheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field static editCheatInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field MAX_SLOT_COUNT:I

.field SLOT_COUNT:I

.field addCheat:Landroid/view/View;

.field advanced:Landroid/view/View;

.field banner:Lcom/youth/banner/Banner;

.field bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

.field cheatAddDialog:Landroid/app/Dialog;

.field cheatCode:Landroid/widget/EditText;

.field cheatName:Landroid/widget/EditText;

.field cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

.field cheatingCustom:Landroid/view/View;

.field cheatingVip:Landroid/view/View;

.field close:Landroid/view/View;

.field constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field context:Landroid/content/Context;

.field dialogExit:Landroid/app/Dialog;

.field from:I

.field goCheatingVip:Landroid/view/View;

.field goSlotVip:Landroid/view/View;

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

.field listView:Landroid/widget/ListView;

.field mHandler:Landroid/os/Handler;

.field menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field newSlot:Landroid/view/View;

.field newSlotNo:Landroid/view/View;

.field noCheatTip:Landroid/view/View;

.field paste:Landroid/view/View;

.field performance:I

.field performanceLevel:I

.field prefs:Lcom/papa91/wrapper/UserPrefs;

.field qa:Landroid/view/View;

.field qaClose:Landroid/view/View;

.field qaSlot:Landroid/view/View;

.field save:Landroid/view/View;

.field slotActionTip:Landroid/widget/TextView;

.field slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

.field slotFullTip:Landroid/view/View;

.field slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field textView7:Landroid/widget/TextView;

.field tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

.field tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

.field tmpPerformance:I

.field usedSlot:[Ljava/lang/Integer;

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
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x4

    .line 3
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->performanceLevel:I

    const/4 p2, 0x1

    .line 4
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 5
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    const/16 p2, 0xa

    .line 7
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    const/16 v0, 0x14

    .line 8
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->MAX_SLOT_COUNT:I

    new-array p2, p2, [Ljava/lang/Integer;

    .line 9
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    .line 10
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setWidth(I)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setHeight(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/papa91/arc/MenuFrameActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getUgcPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/arc/MenuFrameActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getUgcPathInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private findEmptySlot()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

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

.method private getLayoutResId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$11;->$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_performance1:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_cheating:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_slot:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_vip:I

    .line 35
    .line 36
    :goto_0
    return v0
.end method

.method private getSlotPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getUgcPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getUgcPath()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "/"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "/papa91/psp/"

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    new-instance v1, Ljava/io/File;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 122
    .line 123
    .line 124
    :cond_2
    return-object v0
.end method

.method private getUgcPathInternal()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "/emus/"

    .line 8
    .line 9
    const-string v3, "/"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_2

    .line 119
    .line 120
    new-instance v1, Ljava/io/File;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 130
    .line 131
    .line 132
    :cond_2
    return-object v0
.end method

.method private goForumPost()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "8"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "3256971"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private initCheatingViews()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->textView7:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->textView7:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cheatingVip:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 18
    .line 19
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cheatingCustom:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    .line 26
    .line 27
    sget v0, Lorg/ppsspp/ppsspp/R$id;->constraintLayout:I

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 44
    .line 45
    sget v0, Lorg/ppsspp/ppsspp/R$id;->goCheatingVip:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip:Landroid/view/View;

    .line 52
    .line 53
    sget v0, Lorg/ppsspp/ppsspp/R$id;->listView:I

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/ListView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 62
    .line 63
    sget v0, Lorg/ppsspp/ppsspp/R$id;->addCheat:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    .line 70
    .line 71
    sget v0, Lorg/ppsspp/ppsspp/R$id;->noCheatTip:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->textView7:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/16 v1, 0x8

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->textView7:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    .line 109
    .line 110
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 111
    .line 112
    const/4 v3, 0x3

    .line 113
    if-lez v0, :cond_0

    .line 114
    .line 115
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    float-to-int v0, v0

    .line 140
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 141
    .line 142
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v1, v2, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGoneMargin(III)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const/high16 v1, 0x41400000    # 12.0f

    .line 186
    .line 187
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    float-to-int v0, v0

    .line 192
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 193
    .line 194
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v1, v2, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGoneMargin(III)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 212
    .line 213
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 214
    .line 215
    .line 216
    :goto_0
    :try_start_0
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 217
    .line 218
    if-eqz v0, :cond_1

    .line 219
    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_2

    .line 225
    .line 226
    :cond_1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 227
    .line 228
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getCheatList()Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    .line 234
    .line 235
    :cond_2
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 236
    .line 237
    if-eqz v0, :cond_3

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_4

    .line 244
    .line 245
    :cond_3
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 246
    .line 247
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getEditCheatList()Ljava/util/ArrayList;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    :cond_4
    :goto_1
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 260
    .line 261
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 262
    .line 263
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 264
    .line 265
    invoke-direct {v0, p0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;-><init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;Ljava/util/List;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 281
    .line 282
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 286
    .line 287
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    .line 291
    .line 292
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    .line 296
    .line 297
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 303
    .line 304
    .line 305
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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

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
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 57
    .line 58
    new-instance v2, Lcom/papa91/arc/MenuFrameActivity$1;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/papa91/arc/MenuFrameActivity$1;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 67
    .line 68
    new-instance v2, Lcom/papa91/arc/MenuFrameActivity$2;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/papa91/arc/MenuFrameActivity$2;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setOnTabSelectListener(Lcom/papa91/arc/view/OnTabSelectListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/papa91/arc/MenuFrameActivity;->setPerformanceTotalLevel(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->isCustomPerformance()Z

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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 102
    .line 103
    const/4 v1, -0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 120
    .line 121
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method

.method private initSlotViews()V
    .locals 5

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 8
    .line 9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qa:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    .line 16
    .line 17
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaSlot:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qaSlot:Landroid/view/View;

    .line 24
    .line 25
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaClose:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qaClose:Landroid/view/View;

    .line 32
    .line 33
    sget v0, Lorg/ppsspp/ppsspp/R$id;->newSlotNo:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlotNo:Landroid/view/View;

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$id;->group:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->listView:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ListView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->activity_menu_frame_slot_header:I

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget v1, Lorg/ppsspp/ppsspp/R$id;->newSlot:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 81
    .line 82
    sget v1, Lorg/ppsspp/ppsspp/R$id;->goSlotVip:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 89
    .line 90
    sget v1, Lorg/ppsspp/ppsspp/R$id;->slotFullTip:I

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x6

    .line 104
    new-array v0, v0, [Landroid/view/View;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->qaSlot:Landroid/view/View;

    .line 113
    .line 114
    aput-object v3, v0, v1

    .line 115
    .line 116
    const/4 v1, 0x2

    .line 117
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->qaClose:Landroid/view/View;

    .line 118
    .line 119
    aput-object v3, v0, v1

    .line 120
    .line 121
    const/4 v1, 0x3

    .line 122
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlotNo:Landroid/view/View;

    .line 123
    .line 124
    aput-object v3, v0, v1

    .line 125
    .line 126
    const/4 v1, 0x4

    .line 127
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 128
    .line 129
    aput-object v3, v0, v1

    .line 130
    .line 131
    const/4 v1, 0x5

    .line 132
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 133
    .line 134
    aput-object v3, v0, v1

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/papa91/arc/MenuFrameActivity;->setOnListener([Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 140
    .line 141
    if-lez v0, :cond_0

    .line 142
    .line 143
    const/16 v0, 0x14

    .line 144
    .line 145
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 146
    .line 147
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 154
    .line 155
    new-array v1, v1, [Ljava/lang/Integer;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-ge v1, v3, :cond_0

    .line 165
    .line 166
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/Integer;

    .line 173
    .line 174
    aput-object v4, v3, v1

    .line 175
    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 182
    .line 183
    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->prefs:Lcom/papa91/wrapper/UserPrefs;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/papa91/wrapper/UserPrefs;->getSlotTipShow()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    .line 194
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    .line 201
    .line 202
    const/16 v1, 0x8

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 213
    .line 214
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getSlotPath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p0, v1}, Lcom/papa91/arc/MenuFrameActivity;->getRecordInfo(Ljava/lang/String;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->notifySlotChanged()V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$11;->$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initPerformanceViews()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initCheatingViews()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initSlotViews()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initVipViews()V

    .line 37
    .line 38
    .line 39
    :goto_0
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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSp:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipCheating:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSlot:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSelectScene:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBattle:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    const/4 v1, 0x5

    .line 86
    if-ge v0, v1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-ge v0, v1, :cond_0

    .line 95
    .line 96
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/papa91/arc/bean/VipBean;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 119
    .line 120
    const-string v2, ""

    .line 121
    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Lcom/papa91/arc/view/GlideImageLoader;

    .line 137
    .line 138
    invoke-direct {v1}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, p0}, Lcom/youth/banner/Banner;->D(Lya/b;)Lcom/youth/banner/Banner;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->close:Landroid/view/View;

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSp:Landroid/widget/ImageView;

    .line 158
    .line 159
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipCheating:Landroid/widget/ImageView;

    .line 163
    .line 164
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSlot:Landroid/widget/ImageView;

    .line 168
    .line 169
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSelectScene:Landroid/widget/ImageView;

    .line 173
    .line 174
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBattle:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    .line 183
    .line 184
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$10;

    .line 185
    .line 186
    invoke-direct {v1, p0}, Lcom/papa91/arc/MenuFrameActivity$10;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 193
    .line 194
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    .line 195
    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method private onCheatingClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cheatingCustom:I

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    :cond_0
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getEditCheatList()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 58
    .line 59
    iput v3, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cheatingVip:I

    .line 67
    .line 68
    if-ne v0, v1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingCustom:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->addCheat:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :try_start_1
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    :cond_3
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getCheatList()Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_1
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->noCheatTip:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 129
    .line 130
    iput v4, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->tab:I

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_5

    .line 136
    .line 137
    :cond_6
    sget v1, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 138
    .line 139
    if-ne v0, v1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_7
    sget v1, Lorg/ppsspp/ppsspp/R$id;->goCheatingVip:I

    .line 147
    .line 148
    if-ne v0, v1, :cond_8

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_8
    sget v1, Lorg/ppsspp/ppsspp/R$id;->addCheat:I

    .line 156
    .line 157
    if-ne v0, v1, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->showAddCheatDialog()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_9
    sget v1, Lorg/ppsspp/ppsspp/R$id;->paste:I

    .line 165
    .line 166
    if-ne v0, v1, :cond_a

    .line 167
    .line 168
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 169
    .line 170
    if-eqz v0, :cond_d

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->getTextFromClip(Landroid/content/Context;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_a
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cancel:I

    .line 196
    .line 197
    if-ne v0, v1, :cond_b

    .line 198
    .line 199
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 200
    .line 201
    if-eqz p1, :cond_d

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_d

    .line 208
    .line 209
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_b
    sget v1, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 216
    .line 217
    if-ne v0, v1, :cond_d

    .line 218
    .line 219
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Lcom/papa91/arc/MenuFrameActivity;->validateCode(Landroid/content/Context;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_c

    .line 226
    .line 227
    return-void

    .line 228
    :cond_c
    :try_start_2
    new-instance v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 229
    .line 230
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-direct {v0, v4, v4, v1, v2}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 254
    .line 255
    .line 256
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :catchall_0
    move-exception p1

    .line 268
    goto :goto_4

    .line 269
    :catch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    .line 274
    .line 275
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .line 277
    .line 278
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :goto_4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_d
    :goto_5
    return-void
.end method

.method private onPerformanceClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->advanced:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enterGameSettings(I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    sput p1, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private onSlotClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaSlot:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->goForumPost()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->qaClose:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->prefs:Lcom/papa91/wrapper/UserPrefs;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/papa91/wrapper/UserPrefs;->setSlotTipShow(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->qa:Landroid/view/View;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->newSlot:I

    .line 40
    .line 41
    const-string v2, "2"

    .line 42
    .line 43
    if-eq p1, v0, :cond_4

    .line 44
    .line 45
    sget v0, Lorg/ppsspp/ppsspp/R$id;->newSlotNo:I

    .line 46
    .line 47
    if-ne p1, v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->goSlotVip:I

    .line 51
    .line 52
    if-ne p1, v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 58
    .line 59
    filled-new-array {v2}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-lez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/papa91/arc/bean/Slot;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    add-int/lit8 p1, p1, -0x1

    .line 96
    .line 97
    :cond_5
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 98
    .line 99
    if-ge p1, v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->saveSlot()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    const/16 p1, 0xa

    .line 106
    .line 107
    if-ne v0, p1, :cond_7

    .line 108
    .line 109
    sget-object p1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 110
    .line 111
    filled-new-array {v2}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_1
    return-void
.end method

.method private onVipClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    .line 47
    .line 48
    if-ne p1, v0, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    .line 58
    .line 59
    if-ne p1, v0, :cond_5

    .line 60
    .line 61
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 65
    .line 66
    .line 67
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public cheatReset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->cheatInfos:Ljava/util/List;

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
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method delSlot(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$6;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/MenuFrameActivity$6;-><init>(Lcom/papa91/arc/MenuFrameActivity;I)V

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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 5
    .line 6
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->getCurrentTab()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-ne v0, v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 28
    .line 29
    if-ne v0, v1, :cond_4

    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->getCurrentTab()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, v2, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {v2}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x5

    .line 51
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->applyGameSettingConfig(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 55
    .line 56
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 57
    .line 58
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 61
    .line 62
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setGameSettingLevel(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 77
    .line 78
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 79
    .line 80
    if-ne v0, v1, :cond_3

    .line 81
    .line 82
    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeApp;->applyGameSettingConfig(I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 86
    .line 87
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 88
    .line 89
    if-eq v0, v1, :cond_4

    .line 90
    .line 91
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 92
    .line 93
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->applyGameSettingConfig(I)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 97
    .line 98
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setGameSettingLevel(I)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    .line 102
    .line 103
    .line 104
    return-void
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
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->resetUsedSlot()V

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
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->getSlotFilter()Ljava/io/FilenameFilter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-lez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$8;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/papa91/arc/MenuFrameActivity$8;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v2, v3, :cond_6

    .line 66
    .line 67
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "."

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/4 v5, 0x1

    .line 84
    add-int/2addr v4, v5

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    new-instance v4, Lcom/papa91/arc/bean/Slot;

    .line 90
    .line 91
    invoke-direct {v4}, Lcom/papa91/arc/bean/Slot;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setPath(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    invoke-virtual {v4, v6, v7}, Lcom/papa91/arc/bean/Slot;->setTimestamp(J)V

    .line 118
    .line 119
    .line 120
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_0
    move-exception v6

    .line 129
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    iget v7, p0, Lcom/papa91/arc/MenuFrameActivity;->MAX_SLOT_COUNT:I

    .line 137
    .line 138
    if-le v6, v7, :cond_2

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_2
    new-instance v6, Ljava/util/Date;

    .line 143
    .line 144
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Ljava/io/File;

    .line 149
    .line 150
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 151
    .line 152
    .line 153
    move-result-wide v7

    .line 154
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 158
    .line 159
    const-string v8, "yyyy-MM-dd HH:mm"

    .line 160
    .line 161
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setDate(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Ljava/io/File;

    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v7, ".png"

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v4, v6}, Lcom/papa91/arc/bean/Slot;->setThumb(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    const/4 v7, -0x1

    .line 206
    if-ne v6, v7, :cond_3

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_4

    .line 214
    .line 215
    const-string v3, "\u5feb\u901f\u5b58\u6863"

    .line 216
    .line 217
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_4
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    sub-int/2addr v6, v5

    .line 229
    iget-object v7, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

    .line 230
    .line 231
    array-length v8, v7

    .line 232
    if-ge v6, v8, :cond_5

    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    sub-int/2addr v6, v5

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    aput-object v5, v7, v6

    .line 244
    .line 245
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v6, "\u5b58\u6863"

    .line 251
    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v4, v3}, Lcom/papa91/arc/bean/Slot;->setName(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_6
    return-object v0
.end method

.method getSlotFilter()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/MenuFrameActivity$9;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method goCheatingVip()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 5
    .line 6
    const-string v1, "1"

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/MenuFrameActivity;->setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
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
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

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

.method notifySlotChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-lez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    if-le v0, v3, :cond_0

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->findEmptySlot()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v3, -0x1

    .line 38
    if-ne v0, v3, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 68
    .line 69
    if-lez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->newSlot:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->goSlotVip:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotFullTip:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 115
    .line 116
    invoke-direct {v0, p0, v1}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;-><init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 120
    .line 121
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->listView:Landroid/widget/ListView;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotAdapter:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$11;->$SwitchMap$com$papa91$arc$MenuFrameActivity$MenuType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onPerformanceClick(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onCheatingClick(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onSlotClick(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-direct {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->onVipClick(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method resetButtonState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSp:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

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
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipCheating:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

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
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSlot:Landroid/widget/ImageView;

    .line 36
    .line 37
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

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
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipSelectScene:Landroid/widget/ImageView;

    .line 53
    .line 54
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

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
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBattle:Landroid/widget/ImageView;

    .line 70
    .line 71
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

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
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/papa91/arc/MenuFrameActivity;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 82
    .line 83
    .line 84
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
    iget v2, p0, Lcom/papa91/arc/MenuFrameActivity;->SLOT_COUNT:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity;->usedSlot:[Ljava/lang/Integer;

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
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->findEmptySlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/arc/MenuFrameActivity;->saveSlot(I)V

    return-void
.end method

.method saveSlot(I)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/MenuFrameActivity$7;-><init>(Lcom/papa91/arc/MenuFrameActivity;I)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method select(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->resetButtonState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method selectPerformance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tmpPerformance:I

    .line 2
    .line 3
    return-void
.end method

.method public varargs setMenuType(Lcom/papa91/arc/MenuFrameActivity$MenuType;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->getLayoutResId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initViews()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p1, v0, :cond_0

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    array-length v2, p2

    .line 36
    if-lez v2, :cond_0

    .line 37
    .line 38
    aget-object v2, p2, v1

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->show()V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 50
    .line 51
    if-ne p1, v2, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatingVip:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v2, 0x1

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget p2, p0, Lcom/papa91/arc/MenuFrameActivity;->from:I

    .line 67
    .line 68
    add-int/2addr p2, v2

    .line 69
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 74
    .line 75
    if-ne p1, v0, :cond_4

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    array-length p1, p2

    .line 80
    if-lez p1, :cond_3

    .line 81
    .line 82
    :try_start_0
    aget-object p1, p2, v1

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->setPerformanceTotalLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_0
    array-length p1, p2

    .line 97
    if-le p1, v2, :cond_3

    .line 98
    .line 99
    aget-object p1, p2, v2

    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ne p1, v2, :cond_3

    .line 106
    .line 107
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlCustom:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->advanced:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 120
    .line 121
    const/4 p2, -0x1

    .line 122
    invoke-virtual {p1, p2}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity;->performance:I

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity;->selectPerformance(I)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_1
    return-void
.end method

.method varargs setOnListener([Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return-void
.end method

.method setPerformanceTotalLevel(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/papa91/arc/MenuFrameActivity;->performanceLevel:I

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
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
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
    iget-object p4, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vip_btn_selected:I

    .line 19
    .line 20
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p3, 0x0

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public showAddCheatDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/view/BaseDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    sget v2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 15
    .line 16
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->dialog_add_cheat:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 22
    .line 23
    sget v1, Lorg/ppsspp/ppsspp/R$id;->editText:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/EditText;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 34
    .line 35
    sget v1, Lorg/ppsspp/ppsspp/R$id;->editText2:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/EditText;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 46
    .line 47
    sget v1, Lorg/ppsspp/ppsspp/R$id;->paste:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->paste:Landroid/view/View;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 56
    .line 57
    sget v1, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->save:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/16 v1, 0x10

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->paste:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->save:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 85
    .line 86
    const-string v1, ""

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public showModifyCheatDialog(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/MenuFrameActivity;->showAddCheatDialog()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gt v0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 24
    .line 25
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 31
    .line 32
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 38
    .line 39
    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->save:Landroid/view/View;

    .line 49
    .line 50
    new-instance v2, Lcom/papa91/arc/MenuFrameActivity$3;

    .line 51
    .line 52
    invoke-direct {v2, p0, v0, p1}, Lcom/papa91/arc/MenuFrameActivity$3;-><init>(Lcom/papa91/arc/MenuFrameActivity;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public showSlotPrompt(ILcom/papa91/arc/bean/Slot;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    new-instance v1, Lcom/papa91/arc/view/BaseDialog;

    .line 11
    .line 12
    sget v2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 18
    .line 19
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_exit:I

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 31
    .line 32
    sget v1, Lorg/ppsspp/ppsspp/R$id;->textView2:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 43
    .line 44
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cancel:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$4;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/papa91/arc/MenuFrameActivity$4;-><init>(Lcom/papa91/arc/MenuFrameActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 59
    .line 60
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ok:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$5;

    .line 67
    .line 68
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/papa91/arc/MenuFrameActivity$5;-><init>(Lcom/papa91/arc/MenuFrameActivity;IILcom/papa91/arc/bean/Slot;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    sget p2, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 75
    .line 76
    if-ne p1, p2, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    .line 79
    .line 80
    const-string p2, "\u662f\u5426\u5220\u9664\u5b58\u6863\uff1f"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    sget p2, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 87
    .line 88
    if-ne p1, p2, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    .line 91
    .line 92
    const-string p2, "\u662f\u5426\u8986\u76d6\u5b58\u6863\uff1f"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    sget p2, Lorg/ppsspp/ppsspp/R$id;->load:I

    .line 99
    .line 100
    if-ne p1, p2, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->slotActionTip:Landroid/widget/TextView;

    .line 103
    .line 104
    const-string p2, "\u662f\u5426\u8bfb\u53d6\u6b64\u5b58\u6863\uff1f"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method

.method public updateVip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->menuType:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/MenuFrameActivity;->initSlotViews()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->group:Landroidx/constraintlayout/widget/Group;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 21
    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_0
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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->vipBeans:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

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
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

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
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

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
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity;->banner:Lcom/youth/banner/Banner;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->images:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->update(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method validateCode(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v0, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->checkCheatCode(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    const-string v0, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_2
    const/4 p1, 0x1

    .line 69
    return p1
.end method
