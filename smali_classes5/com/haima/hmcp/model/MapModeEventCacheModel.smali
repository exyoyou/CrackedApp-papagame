.class public Lcom/haima/hmcp/model/MapModeEventCacheModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHE_EVENT_MORE_POINT_MOVE:Ljava/lang/String; = "morePointMove"

.field public static final CACHE_EVENT_TRACKBALL_RIGHT_MOVE:Ljava/lang/String; = "trackBallRMove"

.field private static final TAG:Ljava/lang/String; = "MapModeEventCacheModel"


# instance fields
.field public final CACHE_EVENT_DPAD_DIRECTION:Ljava/lang/String;

.field public final CACHE_EVENT_TRACKBALL_LEFT:Ljava/lang/String;

.field public final CACHE_EVENT_TRACKBALL_RIGHT:Ljava/lang/String;

.field private listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

.field private final mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;
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

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dpadDirection"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->CACHE_EVENT_DPAD_DIRECTION:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "trackBallL"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->CACHE_EVENT_TRACKBALL_LEFT:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "trackBallR"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->CACHE_EVENT_TRACKBALL_RIGHT:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    return-void
.end method

.method private clearMapModeEvent2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

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
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendEvent(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getButtonDirection fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private getDpadPoint()Lcom/haima/hmcp/beans/FPoint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getDpadPoint fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onGetMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getMappingEventMap fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getTrackBallL fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getTrackBallR fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onSendEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "sendEvent fail(FPoint)"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-interface {v0, p1, v1, p2}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onSendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p2, "sendMotionEvent fail(PointCoord)"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    const-string p2, "sendMotionEvent fail(FPoint)"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;->onSendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    const-string p2, "sendMotionEvent fail(PointCoord)"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    if-ne p1, v5, :cond_3

    .line 30
    .line 31
    if-nez p4, :cond_0

    .line 32
    .line 33
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    const/4 p4, 0x3

    .line 36
    new-array p4, p4, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    aput-object v2, p4, v1

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    aput-object p2, p4, v5

    .line 50
    .line 51
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    aput-object p2, p4, v4

    .line 56
    .line 57
    const-string p2, "mouse:%d:%.4f,%.4f"

    .line 58
    .line 59
    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p4, p1, :cond_1

    .line 74
    .line 75
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p4, p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-ne p4, p1, :cond_7

    .line 98
    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    if-ne p1, v4, :cond_7

    .line 106
    .line 107
    if-nez p4, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p4, p1, :cond_5

    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    .line 123
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-ne p4, p1, :cond_6

    .line 132
    .line 133
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-ne p4, p1, :cond_7

    .line 144
    .line 145
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
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
    iget-object p2, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public cleanFnModeMapEvent(IZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cleanFnModeMapEvent keycode:"

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
    const-string v2, " isfn"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    div-int/lit16 v3, v2, 0x3e8

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    rem-int/lit16 v3, v2, 0x3e8

    .line 68
    .line 69
    :goto_1
    if-ne p1, v3, :cond_0

    .line 70
    .line 71
    if-nez p2, :cond_0

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const/4 p2, 0x1

    .line 86
    if-ge p1, p2, :cond_3

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/haima/hmcp/beans/PointCoord;

    .line 124
    .line 125
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    return-void
.end method

.method public clearAllFnModeMapEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearMapModeEvent2(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public clearAllMapModeEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearMapModeEvent(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public clearMapModeEvent(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "dpadDirection"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, v2, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    const-string v0, "trackBallL"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, v2, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    const-string v0, "trackBallR"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, v2, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "trackBallRMove"

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, v2, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const-string v0, "morePointMove"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    .line 107
    new-array v3, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v4, 0x0

    .line 114
    aput-object v1, v3, v4

    .line 115
    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const/4 v5, 0x1

    .line 123
    aput-object v1, v3, v5

    .line 124
    .line 125
    const-string v1, "mouse:%d:%s"

    .line 126
    .line 127
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-direct {p0, v3}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendEvent(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-array v3, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    aput-object v2, v3, v4

    .line 141
    .line 142
    iget-object v2, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    .line 144
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    aput-object p1, v3, v5

    .line 149
    .line 150
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendEvent(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/String;

    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->sendEvent(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->mapModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/MapModeEventCacheModel;->listener:Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;

    .line 2
    .line 3
    return-void
.end method
