.class public Lcom/haima/hmcp/device/input/send/DeviceInputSend;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHE_EVENT_MORE_POINT_MOVE:Ljava/lang/String; = "morePointMove"

.field public static final CACHE_EVENT_TRACKBALL_RIGHT_MOVE:Ljava/lang/String; = "trackBallRMove"

.field private static final TAG:Ljava/lang/String; = "DeviceInputSend"

.field private static deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;


# instance fields
.field public final CACHE_EVENT_DPAD_DIRECTION:Ljava/lang/String;

.field public final CACHE_EVENT_TRACKBALL_LEFT:Ljava/lang/String;

.field public final CACHE_EVENT_TRACKBALL_RIGHT:Ljava/lang/String;

.field public downEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAxisStatus:I

.field private mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

.field private mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

.field private mSendWebSocket:Lcom/haima/hmcp/business/IWebSocket;

.field public mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dpadDirection"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->CACHE_EVENT_DPAD_DIRECTION:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "trackBallL"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->CACHE_EVENT_TRACKBALL_LEFT:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "trackBallR"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->CACHE_EVENT_TRACKBALL_RIGHT:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mAxisStatus:I

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 13
    .line 14
    return-object v0
.end method

.method private sendStopAllGamePad()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mSendWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/GamePadManager;->sendStopAllGamePad(Lcom/haima/hmcp/business/IWebSocket;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mSendWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "trackBallR"

    .line 22
    .line 23
    const-string v2, "trackBallL"

    .line 24
    .line 25
    const-string v3, "dpadDirection"

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne p3, v5, :cond_3

    .line 30
    .line 31
    if-nez p6, :cond_0

    .line 32
    .line 33
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    new-array p2, p2, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p6

    .line 43
    aput-object p6, p2, p3

    .line 44
    .line 45
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    aput-object p3, p2, v5

    .line 50
    .line 51
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    aput-object p3, p2, v4

    .line 56
    .line 57
    const-string p3, "mouse:%d:%.4f,%.4f"

    .line 58
    .line 59
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    iget-object p3, p3, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 74
    .line 75
    if-ne p6, p3, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    if-ne p6, p1, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    if-ne p6, p2, :cond_7

    .line 92
    .line 93
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    if-ne p3, v4, :cond_7

    .line 100
    .line 101
    if-nez p6, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    iget-object p3, p3, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 114
    .line 115
    if-ne p6, p3, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    if-ne p6, p1, :cond_6

    .line 124
    .line 125
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    if-ne p6, p2, :cond_7

    .line 132
    .line 133
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_0
    return-void
.end method

.method public cacheModeMapEvent2(IFFI)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    aput-object v4, v2, v3

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    aput-object p2, v2, v1

    .line 22
    .line 23
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    aput-object p2, v2, v0

    .line 28
    .line 29
    const-string p2, "mouse:%d:%.4f,%.4f"

    .line 30
    .line 31
    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-ne p1, v0, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public clearMapModeEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "trackBallL"

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "trackBallR"

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p1, "trackBallRMove"

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v1, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p1, "morePointMove"

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    .line 58
    new-array p2, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    aput-object v0, p2, v1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v3, 0x1

    .line 74
    aput-object v0, p2, v3

    .line 75
    .line 76
    const-string v0, "mouse:%d:%s"

    .line 77
    .line 78
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    new-array p2, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    aput-object v2, p2, v1

    .line 92
    .line 93
    iget-object v1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    aput-object p3, p2, v3

    .line 100
    .line 101
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method

.method public clearMapModeEvent2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getMapFnModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/device/input/listener/DeviceInputListener;->getOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getSendWebSocket()Lcom/haima/hmcp/business/IWebSocket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mSendWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmAxisStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mAxisStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendStopAllGamePad()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 6
    .line 7
    sput-object v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 8
    .line 9
    return-void
.end method

.method public sendData(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public sendData(Ljava/lang/String;Z)Z
    .locals 3

    .line 2
    sget-object v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData eventContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isDiscardable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/listener/DeviceInputListener;->onDeviceInputEvent(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendGamePadHatEvent(FF)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    const-string p1, "gamePad:ABS_HAT0X:%.4f"

    .line 14
    .line 15
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    new-array p1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    aput-object p2, p1, v3

    .line 29
    .line 30
    const-string p2, "gamePad:ABS_HAT0Y:%.4f"

    .line 31
    .line 32
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public sendGamePadMoveEvent(FFFF)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    aput-object p2, v1, p1

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v1, p1

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    aput-object p2, v1, p1

    .line 33
    .line 34
    const-string p1, "gamePad:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f"

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public sendKeyboardEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyboardEvent---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    return-void
.end method

.method public sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gamePad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendKeyboardEvent---sendtoString==null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebSocketManager"

    invoke-static {v4, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    const-string v0, "1"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "gamePad%s:"

    .line 11
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyboardEvent---sendtoString==null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebSocketManager"

    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    const-string v0, "1"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p3, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;II)Z
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p3

    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    move/from16 v9, p5

    .line 6
    .line 7
    move/from16 v10, p6

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onKeyDown -----------:cleanFnModeMapEvent 0"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " coord: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " actionType"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " mTrackBallR==null\uff1a"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v11, 0x1

    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "HmcpVideoView"

    .line 58
    .line 59
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    if-eqz v8, :cond_2

    .line 63
    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    if-ne v9, v11, :cond_1

    .line 67
    .line 68
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 69
    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    iget v1, v8, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 73
    .line 74
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    .line 75
    .line 76
    iget v2, v8, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 77
    .line 78
    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    .line 79
    .line 80
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 81
    .line 82
    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 83
    .line 84
    iget v1, v8, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 85
    .line 86
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/4 v1, 0x2

    .line 90
    if-ne v9, v1, :cond_2

    .line 91
    .line 92
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 93
    .line 94
    iget v3, v8, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 95
    .line 96
    if-ne v1, v3, :cond_2

    .line 97
    .line 98
    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 99
    .line 100
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 101
    .line 102
    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 103
    .line 104
    iget v3, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 105
    .line 106
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v9, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 110
    .line 111
    .line 112
    iget v4, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 113
    .line 114
    iget v5, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    move-object v0, p0

    .line 118
    move-object v1, p1

    .line 119
    move-object v2, p2

    .line 120
    move/from16 v3, p5

    .line 121
    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 123
    .line 124
    .line 125
    iget v0, v8, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 126
    .line 127
    iget v1, v8, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 128
    .line 129
    invoke-virtual {p0, v9, v0, v1, v10}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent2(IFFI)V

    .line 130
    .line 131
    .line 132
    sget-object v0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->TAG:Ljava/lang/String;

    .line 133
    .line 134
    const-string v1, "cacheModeMapEvent cacheModeMapEvent2"

    .line 135
    .line 136
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return v11

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {p0, v9, v8}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    if-eqz v8, :cond_3

    .line 147
    .line 148
    iget v1, v8, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 149
    .line 150
    iget v2, v8, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 151
    .line 152
    invoke-virtual {p0, v9, v1, v2, v10}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent2(IFFI)V

    .line 153
    .line 154
    .line 155
    sget-object v1, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    const-string v2, "cacheModeMapEvent2"

    .line 158
    .line 159
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    return v0
.end method

.method public sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p4, v0, :cond_2

    .line 3
    .line 4
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    invoke-virtual {p4, v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->setMorePointIsRun(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p4, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->clearMapModeEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->clearMapModeEvent2(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/haima/hmcp/device/input/thread/MorePointThread;

    .line 78
    .line 79
    invoke-direct {p1, p3}, Lcom/haima/hmcp/device/input/thread/MorePointThread;-><init>(Lcom/haima/hmcp/beans/PointCoord;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method public sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 3

    .line 1
    iget v0, p2, Lcom/haima/hmcp/beans/FPoint;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iput v1, p2, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 3
    :cond_0
    iget v0, p2, Lcom/haima/hmcp/beans/FPoint;->x:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 4
    iput v2, p2, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 5
    :cond_1
    iget v0, p2, Lcom/haima/hmcp/beans/FPoint;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 6
    iput v1, p2, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 7
    :cond_2
    iget v0, p2, Lcom/haima/hmcp/beans/FPoint;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 8
    iput v2, p2, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 9
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p2, Lcom/haima/hmcp/beans/FPoint;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget p1, p2, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 10
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "mouse:%d:%.4f,%.4f"

    .line 11
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==sendEventContent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    return-void
.end method

.method public sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 14
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    invoke-direct {v0, v1, p2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDeviceInputListener(Lcom/haima/hmcp/device/input/listener/DeviceInputListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(Lcom/haima/hmcp/enums/ScreenOrientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 2
    .line 3
    return-void
.end method

.method public setSendWebSocket(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mSendWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-void
.end method

.method public setmAxisStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mAxisStatus:I

    .line 2
    .line 3
    return-void
.end method
