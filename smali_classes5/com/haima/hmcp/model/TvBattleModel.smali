.class public Lcom/haima/hmcp/model/TvBattleModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TvBattleModel"


# instance fields
.field private buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

.field private listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

.field private mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

.field private mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/beans/BattleMode;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/haima/hmcp/beans/BattleMode;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method

.method private getMappingContents(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getDpad2JoypadMappingData(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private hasUserinfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->hasUserInfo()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private initDpadBattleMappingData(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "tv_battle->init dpad battle mapping data fail, cause contents is empty or null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v0, "isDpad2JoypadInBattle"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "tv_battle->init dpad battle mapping data fail, not found isDpad2JoypadInBattle"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->initButtonMappings(Ljava/lang/String;)Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getVersion()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "tv_battle->init dpad battle mapping data fail, not found version"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isDpad2JoypadInBattle()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string v0, "tv_battle->init dpad battle mapping data fail, cause isDpad2JoypadInBattle is false"

    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "tv_battle->init dpad battle mapping data success"

    .line 88
    .line 89
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->setInputType(I)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private initJoinBattleData(Lcom/haima/hmcp/beans/JoinBattle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onInitData(Lcom/haima/hmcp/beans/JoinBattle;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "tv_battle->initJoinBattleData fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private isBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->isBackground()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private isKeyboardInputState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onKeyboardInputState()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "tv_battle->isKeyboardInputState fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x201

    .line 6
    .line 7
    and-int/2addr p2, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    if-eqz p2, :cond_5

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvBattleModel;->isKeyboardInputState()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_5

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/haima/hmcp/model/TvBattleModel;->getBattlePlayer()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p0, v0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->getMappingContents(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p0, v1, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->getMappingContents(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    array-length v3, v3

    .line 43
    if-lez v3, :cond_1

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    array-length v3, p2

    .line 48
    if-lez v3, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    :goto_1
    sget-object v4, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "tv_battle->mapping data validation is: "

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, "\uff0c when key down event"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    const-string v4, ""

    .line 83
    .line 84
    invoke-virtual {p0, v4}, Lcom/haima/hmcp/model/TvBattleModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    array-length v6, p2

    .line 89
    const/4 v7, 0x0

    .line 90
    :goto_2
    if-ge v7, v6, :cond_2

    .line 91
    .line 92
    aget-object v8, p2, v7

    .line 93
    .line 94
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 95
    .line 96
    new-array v10, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v5, v10, v2

    .line 99
    .line 100
    aput-object v8, v10, v1

    .line 101
    .line 102
    const-string v8, "gamePad%s:%s"

    .line 103
    .line 104
    invoke-static {v9, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-direct {p0, v8}, Lcom/haima/hmcp/model/TvBattleModel;->sendMappingEvent(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    array-length v0, p2

    .line 115
    if-ne v0, v1, :cond_3

    .line 116
    .line 117
    iget-object p1, p1, Lcom/haima/hmcp/beans/PointCoord;->joypad:Lcom/haima/hmcp/beans/Joypad;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/haima/hmcp/beans/Joypad;->keyCodeEvent:Ljava/lang/String;

    .line 120
    .line 121
    aget-object p2, p2, v2

    .line 122
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    const-string p1, "gamePadABS"

    .line 128
    .line 129
    invoke-direct {p0, p1, v4}, Lcom/haima/hmcp/model/TvBattleModel;->putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_3
    move v2, v3

    .line 133
    :cond_5
    return v2
.end method

.method private onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x201

    .line 6
    .line 7
    and-int/2addr p2, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    if-eqz p2, :cond_5

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvBattleModel;->isKeyboardInputState()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_5

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/haima/hmcp/model/TvBattleModel;->getBattlePlayer()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-direct {p0, v1, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->getMappingContents(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-direct {p0, v3, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->getMappingContents(ILcom/haima/hmcp/beans/PointCoord;I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    array-length v4, p2

    .line 43
    if-lez v4, :cond_1

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_1
    sget-object v4, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "tv_battle->mapping data validation is: "

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, "\uff0c when key up event"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const-string v4, ""

    .line 83
    .line 84
    invoke-virtual {p0, v4}, Lcom/haima/hmcp/model/TvBattleModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    array-length v6, p2

    .line 89
    const/4 v7, 0x0

    .line 90
    :goto_2
    if-ge v7, v6, :cond_2

    .line 91
    .line 92
    aget-object v8, p2, v7

    .line 93
    .line 94
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 95
    .line 96
    new-array v10, v3, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v5, v10, v2

    .line 99
    .line 100
    aput-object v8, v10, v1

    .line 101
    .line 102
    const-string v8, "gamePad%s:%s"

    .line 103
    .line 104
    invoke-static {v9, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-direct {p0, v8}, Lcom/haima/hmcp/model/TvBattleModel;->sendMappingEvent(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    array-length v3, p2

    .line 115
    if-ne v3, v1, :cond_3

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p1, Lcom/haima/hmcp/beans/PointCoord;->joypad:Lcom/haima/hmcp/beans/Joypad;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/haima/hmcp/beans/Joypad;->keyCodeEvent:Ljava/lang/String;

    .line 122
    .line 123
    aget-object p2, p2, v2

    .line 124
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->removeDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    const-string p1, "gamePadABS"

    .line 130
    .line 131
    invoke-direct {p0, p1, v4}, Lcom/haima/hmcp/model/TvBattleModel;->removeDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_3
    move v2, v0

    .line 135
    :cond_5
    return v2
.end method

.method private processBattleOperation(ILcom/haima/hmcp/beans/BattleMode;)I
    .locals 8

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x2e

    .line 7
    .line 8
    if-eq p1, v3, :cond_0

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "tv_battle->handle op, BattleMode is null"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    iget-object v4, p2, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 26
    .line 27
    const-string v5, "tv_battle->"

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "handle op, BattleMode.battle is null"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_2
    iget v4, v4, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    if-eq v4, v6, :cond_3

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v0, "handle op, battle is not NETWORK_BATTLE: "

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p2, p2, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 73
    .line 74
    iget p2, p2, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object p2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_3
    iget v4, p2, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 108
    .line 109
    const/4 v7, 0x2

    .line 110
    if-eq v4, v6, :cond_4

    .line 111
    .line 112
    if-eq v4, v7, :cond_4

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v0, "handle op, not battle player: "

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget p2, p2, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget-object p2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return v2

    .line 157
    :cond_4
    if-ne p1, v3, :cond_5

    .line 158
    .line 159
    if-ne v4, v6, :cond_5

    .line 160
    .line 161
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, "handle op, receive master out message when player is master"

    .line 172
    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return v2

    .line 187
    :cond_5
    if-ne v4, v7, :cond_7

    .line 188
    .line 189
    if-eq p1, v1, :cond_6

    .line 190
    .line 191
    if-ne p1, v0, :cond_7

    .line 192
    .line 193
    :cond_6
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 194
    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, "handle op, receive joiner out message when player is joiner"

    .line 204
    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return v2

    .line 219
    :cond_7
    packed-switch p1, :pswitch_data_0

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_8
    :pswitch_0
    const/4 v2, 0x2

    .line 224
    goto :goto_0

    .line 225
    :pswitch_1
    if-ne p1, v3, :cond_8

    .line 226
    .line 227
    const/4 v2, 0x1

    .line 228
    :goto_0
    return v2

    .line 229
    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "tv_battle->putDownEventMap fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private release(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onRelease(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "tv_battle->release fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private removeDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onRemoveDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "tv_battle->removeDownEventMap fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private sendGamePadStart(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onEvent(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "tv_battle->sendGamePadStart fail"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private sendMappingEvent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onEvent(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "tv_battle->sendMappingEvent fail"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->onSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "tv_battle->sendSceneChangedMessage fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->setInputType(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "tv_battle->configData fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private toJoinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/TvBattleModelListener;->requestJoinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "tv_battle->toJoinBattle fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public getBattleMode()Lcom/haima/hmcp/beans/BattleMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattlePlayer()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public getButtonMappingUtil()Lcom/haima/hmcp/utils/ButtonMappingUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGamePadForQRCode(Lcom/haima/hmcp/beans/BattleMode;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object p1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    return v0

    .line 19
    :cond_2
    iget v1, p1, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 20
    .line 21
    if-eq v1, v3, :cond_3

    .line 22
    .line 23
    return v0

    .line 24
    :cond_3
    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 25
    .line 26
    if-eq p1, v3, :cond_4

    .line 27
    .line 28
    if-eq p1, v2, :cond_4

    .line 29
    .line 30
    return v0

    .line 31
    :cond_4
    return p1
.end method

.method public getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "tv_battle->convert game pad number, gamePadNum="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "; BattleMode="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "2"

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    const-string v1, "tv_battle->convert game pad number, BattleMode is null"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_1
    iget-object v4, v2, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 61
    .line 62
    if-eqz v4, :cond_7

    .line 63
    .line 64
    iget v5, v4, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    if-eq v5, v6, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget v2, v2, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    if-eq v2, v6, :cond_3

    .line 74
    .line 75
    if-eq v2, v5, :cond_3

    .line 76
    .line 77
    const-string v1, "tv_battle->convert game pad number, player is not in battle"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_3
    iget v2, v4, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 84
    .line 85
    if-eq v2, v6, :cond_5

    .line 86
    .line 87
    if-eq v2, v5, :cond_5

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "tv_battle->convert game pad number, game pad is not validate: "

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 102
    .line 103
    iget v2, v2, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 116
    .line 117
    iget p1, p1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 118
    .line 119
    if-ne p1, v6, :cond_4

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-object v1, v3

    .line 123
    :goto_0
    return-object v1

    .line 124
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "tv_battle->after convert game pad number: gamePadNum="

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 147
    .line 148
    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 149
    .line 150
    if-ne p1, v6, :cond_6

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    move-object v1, v3

    .line 154
    :goto_1
    return-object v1

    .line 155
    :cond_7
    :goto_2
    const-string v1, "tv_battle->local battle do not convert game pad number"

    .line 156
    .line 157
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object p1
.end method

.method public getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 16
    .line 17
    return-object p1
.end method

.method public handBattleBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/BattleMode;->reset()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "tv_battle->the bundle is null"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "battle"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "tv_battle->do not have battle date"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    instance-of v0, p1, Lcom/haima/hmcp/beans/Battle;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "tv_battle->the BATTLE`s value is not match class type"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    check-cast p1, Lcom/haima/hmcp/beans/Battle;

    .line 49
    .line 50
    iget v0, p1, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    const/4 v2, 0x1

    .line 54
    if-eq v0, v2, :cond_3

    .line 55
    .line 56
    if-eq v0, v1, :cond_3

    .line 57
    .line 58
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "tv_battle->Battle.mode is not validate: "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    if-ne v0, v1, :cond_4

    .line 84
    .line 85
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "tv_battle->do not need handle local battle"

    .line 88
    .line 89
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 94
    .line 95
    iput-object p1, v0, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 96
    .line 97
    iput v2, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 98
    .line 99
    iget v0, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 100
    .line 101
    if-lt v0, v2, :cond_5

    .line 102
    .line 103
    if-le v0, v1, :cond_6

    .line 104
    .line 105
    :cond_5
    iput v2, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 106
    .line 107
    :cond_6
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v1, "tv_battle->play(bundle) init battle info: "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string p1, "12806"

    .line 132
    .line 133
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "tv_battle->handleKeyEvent called: keyCode = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", event = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public handleSaasOperation(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->processBattleOperation(ILcom/haima/hmcp/beans/BattleMode;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string p1, "handle battle op error, cause bad battle play: 0"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "tv_battle->"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    if-ne p2, v0, :cond_1

    .line 39
    .line 40
    const-string v0, "12810"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "12813"

    .line 44
    .line 45
    :goto_0
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_battle:I

    .line 49
    .line 50
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    const-string v2, "player"

    .line 60
    .line 61
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string p2, "action"

    .line 65
    .line 66
    const/16 v2, 0x30

    .line 67
    .line 68
    if-ne p1, v2, :cond_2

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v2, 0x4

    .line 73
    :goto_1
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    sget-object p2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string v2, "tv_battle->handle op, json data error"

    .line 80
    .line 81
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p0, v0, p2}, Lcom/haima/hmcp/model/TvBattleModel;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/16 p2, 0x2e

    .line 92
    .line 93
    if-ne p1, p2, :cond_3

    .line 94
    .line 95
    const-string p1, "master out of battle"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->release(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public handleSaasResponse(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    sget-object v2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "tv_battle->handle battle info: "

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x7

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne p1, v3, :cond_8

    .line 31
    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string p1, "tv_battle->can`t handle battle info, cause errorInfo is null or empty"

    .line 39
    .line 40
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    const-string p1, ","

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    aget-object p2, p1, v0

    .line 51
    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    const-string p1, "tv_battle->can`t handle battle info, cause player data is empty"

    .line 59
    .line 60
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 65
    .line 66
    aget-object v2, p1, v0

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, p2, Lcom/haima/hmcp/beans/BattleMode;->player:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .line 74
    array-length p2, p1

    .line 75
    if-le p2, v4, :cond_3

    .line 76
    .line 77
    aget-object p2, p1, v4

    .line 78
    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_3

    .line 84
    .line 85
    :try_start_1
    aget-object p2, p1, v4

    .line 86
    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    sget-object p2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "tv_battle->battle`s game pad is not number: "

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    aget-object p1, p1, v4

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 118
    .line 119
    iget v2, p2, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 120
    .line 121
    if-eq v2, v4, :cond_4

    .line 122
    .line 123
    if-eq v2, v1, :cond_4

    .line 124
    .line 125
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "tv_battle->handle battle info, player type is not validate: "

    .line 133
    .line 134
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 138
    .line 139
    iget v1, v1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 140
    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/BattleMode;->reset()V

    .line 154
    .line 155
    .line 156
    return v0

    .line 157
    :cond_4
    iget-object p2, p2, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 158
    .line 159
    iput v4, p2, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 160
    .line 161
    iget v0, p2, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 162
    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    iput p1, p2, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 168
    .line 169
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 170
    .line 171
    const-string p2, "tv_battle->handle battle info, game pad is from server set"

    .line 172
    .line 173
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    if-nez v0, :cond_7

    .line 178
    .line 179
    if-ne v2, v4, :cond_6

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    :cond_6
    iput v1, p2, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 183
    .line 184
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 185
    .line 186
    const-string p2, "tv_battle->handle battle info, game pad is default set"

    .line 187
    .line 188
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 193
    .line 194
    const-string p2, "tv_battle->handle battle info, game pad is already set"

    .line 195
    .line 196
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_1
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 200
    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v0, "tv_battle->after handle battle info: "

    .line 207
    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 212
    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return v4

    .line 224
    :catch_1
    sget-object p2, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v2, "tv_battle->battle`s type is not number: "

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    aget-object p1, p1, v0

    .line 237
    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return v0

    .line 249
    :cond_8
    const/4 v3, 0x6

    .line 250
    if-ne p1, v3, :cond_e

    .line 251
    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_9

    .line 257
    .line 258
    const-string p1, "tv_battle->handle instance apply status, data is empty"

    .line 259
    .line 260
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return v0

    .line 264
    :cond_9
    const-string p1, "0"

    .line 265
    .line 266
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iget-object p2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 271
    .line 272
    if-eqz p2, :cond_d

    .line 273
    .line 274
    iget p2, p2, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 275
    .line 276
    if-nez p2, :cond_a

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_a
    if-eqz p1, :cond_b

    .line 280
    .line 281
    if-ne p2, v4, :cond_c

    .line 282
    .line 283
    const/4 v1, 0x1

    .line 284
    goto :goto_2

    .line 285
    :cond_b
    const/4 v1, 0x3

    .line 286
    :cond_c
    :goto_2
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_battle:I

    .line 287
    .line 288
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    new-instance p2, Lorg/json/JSONObject;

    .line 293
    .line 294
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .line 296
    .line 297
    :try_start_2
    const-string v0, "player"

    .line 298
    .line 299
    iget-object v2, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 300
    .line 301
    iget v2, v2, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 302
    .line 303
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    .line 305
    .line 306
    const-string v0, "action"

    .line 307
    .line 308
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :catch_2
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 313
    .line 314
    const-string v1, "tv_battle->handle instance apply status data, json data error"

    .line 315
    .line 316
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 324
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v2, "tv_battle->handle instance apply status data, battle scene: "

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return v4

    .line 349
    :cond_d
    :goto_4
    const-string p1, "tv_battle->handle instance apply status data, is not in battle"

    .line 350
    .line 351
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_e
    return v0
.end method

.method public isBattle()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    return v2
.end method

.method public joinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "tv_battle->join battle api called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "12809"

    .line 9
    .line 10
    const-string v2, "tv_battle->"

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, "OnJoinBattleListener is null when api called"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvBattleModel;->isBackground()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "join battle fail, cause in background when api called"

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_in_background:I

    .line 69
    .line 70
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p2, v4, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    sget-boolean v3, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 79
    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, "join battle fail, cause not init when api called"

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget p1, Lcom/haima/hmcp/R$string;->Error_000003:I

    .line 106
    .line 107
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p2, v4, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    if-eqz p1, :cond_6

    .line 116
    .line 117
    iget-object v3, p1, Lcom/haima/hmcp/beans/InternalJoinBattle;->joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

    .line 118
    .line 119
    if-nez v3, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvBattleModel;->hasUserinfo()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_4

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, "join battle fail, cause UserInfo is null when api called"

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 152
    .line 153
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p2, v4, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    iget-object v0, p1, Lcom/haima/hmcp/beans/InternalJoinBattle;->joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

    .line 162
    .line 163
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/TvBattleModel;->initJoinBattleData(Lcom/haima/hmcp/beans/JoinBattle;)V

    .line 164
    .line 165
    .line 166
    iget v1, v0, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    .line 167
    .line 168
    const/4 v2, 0x1

    .line 169
    const/4 v3, 0x2

    .line 170
    if-eq v1, v2, :cond_5

    .line 171
    .line 172
    if-eq v1, v3, :cond_5

    .line 173
    .line 174
    iput v3, v0, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    .line 175
    .line 176
    :cond_5
    new-instance v1, Lcom/haima/hmcp/beans/Battle;

    .line 177
    .line 178
    invoke-direct {v1}, Lcom/haima/hmcp/beans/Battle;-><init>()V

    .line 179
    .line 180
    .line 181
    iput v2, v1, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 182
    .line 183
    iget v0, v0, Lcom/haima/hmcp/beans/JoinBattle;->gamePad:I

    .line 184
    .line 185
    iput v0, v1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 186
    .line 187
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 188
    .line 189
    iput v3, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 190
    .line 191
    iput-object v1, v0, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 192
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->toJoinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, "join battle fail, cause JoinBattle is null when api called"

    .line 206
    .line 207
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_sdk_params_error:I

    .line 221
    .line 222
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p2, v4, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public needStopWhenRelease()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public needStopWhenRemoved()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public sendBattleGamePadStart(Lcom/haima/hmcp/beans/BattleMode;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "tv_battle->send battle game pad start fail, cause BattleMode is null"

    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget v1, p1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "tv_battle->send battle game pad start fail, cause play is not validate: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget p1, p1, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    iget-object v1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    const-string p1, "tv_battle->send battle game pad start fail, cause BattleMode.battle is null"

    .line 50
    .line 51
    sget-object v1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    iget v1, v1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_3

    .line 60
    .line 61
    if-eq v1, v2, :cond_3

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "tv_battle->send battle game pad start fail, cause game pad is not validate: "

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 74
    .line 75
    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 93
    .line 94
    iget p1, p1, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 95
    .line 96
    if-ne p1, v3, :cond_4

    .line 97
    .line 98
    const-string p1, ""

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object p1, v1, v0

    .line 108
    .line 109
    const-string p1, "startGamePad%s:"

    .line 110
    .line 111
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->sendGamePadStart(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    const-string p1, "tv_battle->battle game pad start send"

    .line 122
    .line 123
    sget-object v0, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    return v3
.end method

.method public setBattleMode(Lcom/haima/hmcp/beans/BattleMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 2
    .line 3
    return-void
.end method

.method public setConfig(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dpad_battle_map_content"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->initDpadBattleMappingData(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/TvBattleModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/TvBattleModel;->listener:Lcom/haima/hmcp/listeners/TvBattleModelListener;

    .line 2
    .line 3
    return-void
.end method

.method public specialPlayRequest(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 5
    .line 6
    iget v1, v0, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v3, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v0, v0, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget v4, v0, Lcom/haima/hmcp/beans/Battle;->mode:I

    .line 20
    .line 21
    if-ne v4, v3, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :cond_2
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    const-string v1, "battle"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "tv_battle->playRequest battle info: "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/haima/hmcp/model/TvBattleModel;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-object p1, Lcom/haima/hmcp/model/TvBattleModel;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "tv_battle->playRequest battle info fail"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method
