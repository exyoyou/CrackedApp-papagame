.class public Lcom/haima/hmcp/business/GamePadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;
    }
.end annotation


# static fields
.field public static final GAMEPAD_CONNECTED:Ljava/lang/String; = "startGamePad%s:"

.field public static final GAMEPAD_DISCONNECTED:Ljava/lang/String; = "stopGamePad%s:"

.field public static final GAMEPAD_STATUS_CONNECTED:Ljava/lang/String; = "1"

.field public static final GAMEPAD_STATUS_DISCONNECTED:Ljava/lang/String; = "0"

.field private static final NOT_SUPPORT:I = -0x1

.field public static final SUPPORT_MAX_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GamePadManager"

.field private static volatile sGamePadManager:Lcom/haima/hmcp/business/GamePadManager;


# instance fields
.field protected gamepadEventDetected:[Z

.field inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private isInited:Z

.field private mExternalDevice:Landroid/view/InputDevice;

.field private mGamePadDevices:[Landroid/view/InputDevice;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private shareDefaultIndexGamePadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [Landroid/view/InputDevice;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 8
    .line 9
    new-array v0, v0, [Z

    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->gamepadEventDetected:[Z

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 19
    .line 20
    new-instance v0, Lcom/haima/hmcp/business/GamePadManager$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/GamePadManager$1;-><init>(Lcom/haima/hmcp/business/GamePadManager;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/GamePadManager;Landroid/view/InputDevice;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/GamePadManager;Landroid/view/InputDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->addGamePadDevice(Landroid/view/InputDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/GamePadManager;I)Landroid/view/InputDevice;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->findGamePadDevice(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/GamePadManager;I)Landroid/view/InputDevice;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->findDeviceFromShareDefaultIndexList(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/business/GamePadManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->removeGamePadDevice(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized addGamePadDevice(Landroid/view/InputDevice;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/GamePadManager;->isContainsDevice(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/haima/hmcp/business/GamePadManager;->isJiaJiaDevice(Landroid/view/InputDevice;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mExternalDevice:Landroid/view/InputDevice;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mExternalDevice:Landroid/view/InputDevice;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p1, "GamePadManager"

    .line 28
    .line 29
    const-string v0, "addGamePadDevice:isConnectedJiaJiaDevice return"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 37
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-ge v0, v2, :cond_6

    .line 41
    .line 42
    aget-object v2, v1, v0

    .line 43
    .line 44
    if-nez v2, :cond_5

    .line 45
    .line 46
    aput-object p1, v1, v0

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->notifyDeviceAdd(Landroid/view/InputDevice;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/business/GamePadManager;->getShareDefaultIndexListSize()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->notifyDeviceAdd(Landroid/view/InputDevice;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_2
    const-string v2, "GamePadManager"

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "addJoyDevice === setValueAt "

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, "  "

    .line 83
    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " id:"

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    const/4 v1, 0x0

    .line 118
    :goto_3
    if-nez v1, :cond_7

    .line 119
    .line 120
    const-string v0, "GamePadManager"

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "addJoyDevice === "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " id:"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, " add to share index list"

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->addToShareDefaultIndexList(Landroid/view/InputDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_7
    monitor-exit p0

    .line 167
    return-void

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0

    .line 170
    throw p1
.end method

.method private addToShareDefaultIndexList(Landroid/view/InputDevice;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/view/InputDevice;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eq v2, v3, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method private checkInited()V
    .locals 0

    return-void
.end method

.method private convertNum2Index(Ljava/lang/String;)I
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
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    :goto_0
    return p1
.end method

.method private findDeviceFromShareDefaultIndexList(I)Landroid/view/InputDevice;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/InputDevice;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, p1, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private findGamePadDevice(I)Landroid/view/InputDevice;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->isContainsDeviceAtIndex(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 14
    .line 15
    aget-object p1, p1, v0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public static getInstance()Lcom/haima/hmcp/business/GamePadManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/GamePadManager;->sGamePadManager:Lcom/haima/hmcp/business/GamePadManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/business/GamePadManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/business/GamePadManager;->sGamePadManager:Lcom/haima/hmcp/business/GamePadManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/business/GamePadManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/business/GamePadManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/business/GamePadManager;->sGamePadManager:Lcom/haima/hmcp/business/GamePadManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/business/GamePadManager;->sGamePadManager:Lcom/haima/hmcp/business/GamePadManager;

    .line 25
    .line 26
    return-object v0
.end method

.method private getShareDefaultIndexListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private handleRemoveDevice(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->findGamePadDevice(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadIndex(Landroid/view/InputDevice;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v1, "GamePadManager"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/business/GamePadManager;->getShareDefaultIndexListSize()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_3

    .line 20
    .line 21
    const-string p1, "removeGamePadDevice, remove 0 index"

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/GamePadManager;->notifyDeviceRemove(Landroid/view/InputDevice;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "removeGamePadDevice, remove other index device"

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/GamePadManager;->notifyDeviceRemove(Landroid/view/InputDevice;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->findDeviceFromShareDefaultIndexList(I)Landroid/view/InputDevice;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/haima/hmcp/business/GamePadManager;->getShareDefaultIndexListSize()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    aget-object v0, v0, v1

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->notifyDeviceRemove(Landroid/view/InputDevice;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->removeFromShareDefaultIndexList(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method private initGamePad()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "initGamePad: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    array-length v2, v0

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "GamePadManager"

    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    array-length v3, v0

    .line 38
    if-ge v1, v3, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 41
    .line 42
    aget v4, v0, v1

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {p0, v3}, Lcom/haima/hmcp/business/GamePadManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-direct {p0, v3}, Lcom/haima/hmcp/business/GamePadManager;->addGamePadDevice(Landroid/view/InputDevice;)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v5, "getInputDevices === "

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, " id:"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private isContainsDevice(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/business/GamePadManager;->isContainsDeviceAtIndex(II)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v0
.end method

.method private isContainsDeviceAtIndex(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    add-int/lit8 v3, p2, 0x1

    .line 8
    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    aget-object p2, v0, p2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/InputDevice;->getId()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-ne p2, p1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_1
    :goto_0
    return v1
.end method

.method private static isJiaJiaDevice(Landroid/view/InputDevice;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x1000

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x610

    .line 18
    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x1033

    .line 26
    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/16 v1, 0x613

    .line 34
    .line 35
    if-ne p0, v1, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catch_0
    :cond_3
    return v0
.end method

.method private isJoyStick(Landroid/view/InputDevice;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private notifyDeviceAdd(Landroid/view/InputDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;->onDeviceAdded(Landroid/view/InputDevice;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method private notifyDeviceRemove(Landroid/view/InputDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;->onDeviceRemoved(Landroid/view/InputDevice;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method private removeFromShareDefaultIndexList(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/InputDevice;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v2, p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 v1, 0x0

    .line 39
    :goto_1
    if-eqz v1, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_4
    return-void
.end method

.method private declared-synchronized removeGamePadDevice(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->handleRemoveDevice(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->isContainsDeviceAtIndex(II)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string p1, "GamePadManager"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "removeJoyDevice === removeAt "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "  "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 38
    .line 39
    aget-object v2, v2, v0

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 56
    .line 57
    aget-object p1, p1, v0

    .line 58
    .line 59
    invoke-static {p1}, Lcom/haima/hmcp/business/GamePadManager;->isJiaJiaDevice(Landroid/view/InputDevice;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    iput-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->mExternalDevice:Landroid/view/InputDevice;

    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 69
    .line 70
    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method private sendStartAllGamepad(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p0, p1, v3}, Lcom/haima/hmcp/business/GamePadManager;->sendStartGamepad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public findIndexFromShareDefaultIndexList(Landroid/view/InputDevice;)Ljava/lang/Integer;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    iget-object v2, p0, Lcom/haima/hmcp/business/GamePadManager;->shareDefaultIndexGamePadList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/view/InputDevice;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-object v0
.end method

.method public getGamePadIndex(Landroid/view/InputDevice;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/business/GamePadManager;->isContainsDeviceAtIndex(II)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, -0x1

    .line 22
    return p1
.end method

.method public getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/GamePadManager;->checkInited()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadIndex(Landroid/view/InputDevice;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "getGamePadNum index: "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, " getDescriptor:"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v4, "GamePadManager"

    .line 43
    .line 44
    invoke-static {v4, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    if-gtz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "gamePadNum: "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v4, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public getmExternalDevice()Landroid/view/InputDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mExternalDevice:Landroid/view/InputDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Context;)Lcom/haima/hmcp/business/GamePadManager;
    .locals 2

    .line 1
    const-string v0, "init called"

    .line 2
    .line 3
    const-string v1, "GamePadManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/haima/hmcp/business/GamePadManager;->isInited:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "init already called"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string v0, "input"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/haima/hmcp/business/GamePadManager;->initGamePad()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->registerDeviceChangeListener(Landroid/content/Context;Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/haima/hmcp/business/GamePadManager;->isInited:Z

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "context must not be null!"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public registerDeviceChangeListener(Landroid/content/Context;Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "input"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "new mInputManager is failed when registerDeviceChangeListener, cause Context is null"

    .line 19
    .line 20
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 33
    .line 34
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object p2, p0, Lcom/haima/hmcp/business/GamePadManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const-string p1, "Register device listener is failed, case mInputManager is null"

    .line 53
    .line 54
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method

.method public sendMessageToInstance(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public sendStartAllGamepad(Lcom/haima/hmcp/business/IWebSocket;Landroid/content/Context;)V
    .locals 2

    const-string v0, "GamePadManager"

    const-string v1, "sendStartAllGamepad called"

    .line 3
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/haima/hmcp/business/GamePadManager;->isInited:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/GamePadManager;->init(Landroid/content/Context;)Lcom/haima/hmcp/business/GamePadManager;

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->sendStartAllGamepad(Lcom/haima/hmcp/business/IWebSocket;)V

    return-void
.end method

.method public sendStartGamepad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->convertNum2Index(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->gamepadEventDetected:[Z

    .line 10
    .line 11
    aget-boolean v0, v0, p2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p1, v1, v2

    .line 20
    .line 21
    const-string p1, "startGamePad%s:"

    .line 22
    .line 23
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "sendStartGamepad: "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "GamePadManager"

    .line 45
    .line 46
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "1,msg:"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ",sendResult:"

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v2, "13001"

    .line 83
    .line 84
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->gamepadEventDetected:[Z

    .line 90
    .line 91
    aput-boolean v0, p1, p2

    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method public sendStopAllGamePad(Lcom/haima/hmcp/business/IWebSocket;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mGamePadDevices:[Landroid/view/InputDevice;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v4, p2}, Lcom/haima/hmcp/business/GamePadManager;->sendStopGamePad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iput-boolean v2, p0, Lcom/haima/hmcp/business/GamePadManager;->isInited:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/haima/hmcp/business/GamePadManager;->unregisterAllDeviceChangeListener()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mExternalDevice:Landroid/view/InputDevice;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 27
    .line 28
    return-void
.end method

.method public sendStopGamePad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/GamePadManager;->convertNum2Index(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string v0, "GamePadManager"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    iget-object p3, p0, Lcom/haima/hmcp/business/GamePadManager;->gamepadEventDetected:[Z

    .line 15
    .line 16
    aput-boolean v1, p3, p2

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "tv_battle->do not send stop GamePad"

    .line 24
    .line 25
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p3, 0x1

    .line 39
    new-array p3, p3, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p1, p3, v1

    .line 42
    .line 43
    const-string p1, "stopGamePad%s:"

    .line 44
    .line 45
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p3, p0, Lcom/haima/hmcp/business/GamePadManager;->gamepadEventDetected:[Z

    .line 50
    .line 51
    aget-boolean p3, p3, p2

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "sendStopGamePad: "

    .line 61
    .line 62
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, v1}, Lcom/haima/hmcp/business/GamePadManager;->sendMessageToInstance(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "0,msg:"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ",sendResult:"

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "13001"

    .line 105
    .line 106
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    if-eqz p3, :cond_1

    .line 110
    .line 111
    iget-object p1, p0, Lcom/haima/hmcp/business/GamePadManager;->gamepadEventDetected:[Z

    .line 112
    .line 113
    aput-boolean v1, p1, p2

    .line 114
    .line 115
    :cond_1
    return-void
.end method

.method public unregisterAllDeviceChangeListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/GamePadManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method public unregisterDeviceChangeListener(Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GamePadManager;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
