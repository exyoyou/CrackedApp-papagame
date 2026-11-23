.class public Lcom/haima/hmcp/device/input/thread/MorePointThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final MORE_POINT_CLICK_TYPE:I = 0x2

.field public static final MORE_POINT_END_TYPE:I = 0x0

.field public static final MORE_POINT_MOVEANDCLICK_TYPE:I = 0x3

.field public static final MORE_POINT_MOVE_TYPE:I = 0x1


# instance fields
.field private clickTime:J

.field private coord:Lcom/haima/hmcp/beans/PointCoord;

.field private final deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field private final deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

.field private hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

.field private isDown:Z

.field private moveTime:I


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/beans/PointCoord;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x32

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->clickTime:J

    .line 7
    .line 8
    const/16 v0, 0x12

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->moveTime:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 13
    .line 14
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 19
    .line 20
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 25
    .line 26
    return-void
.end method

.method private pointMove(Lcom/haima/hmcp/beans/PointCoord2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 4
    .line 5
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 6
    .line 7
    sub-float/2addr v0, v2

    .line 8
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 9
    .line 10
    int-to-float v3, v2

    .line 11
    div-float/2addr v0, v3

    .line 12
    iget v3, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 13
    .line 14
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 15
    .line 16
    sub-float/2addr v3, v1

    .line 17
    int-to-float v1, v2

    .line 18
    div-float/2addr v3, v1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 21
    .line 22
    iget v4, v2, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 23
    .line 24
    const-string v5, ","

    .line 25
    .line 26
    const-string v6, "morePointMove"

    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    if-ge v1, v4, :cond_0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 32
    .line 33
    new-instance v8, Lcom/haima/hmcp/beans/FPoint;

    .line 34
    .line 35
    iget v9, v2, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 36
    .line 37
    int-to-float v10, v1

    .line 38
    mul-float v11, v0, v10

    .line 39
    .line 40
    add-float/2addr v9, v11

    .line 41
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 42
    .line 43
    mul-float v10, v10, v3

    .line 44
    .line 45
    add-float/2addr v2, v10

    .line 46
    invoke-direct {v8, v9, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v7, v8}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v7, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 64
    .line 65
    iget v7, v7, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 74
    .line 75
    iget v5, v5, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v2, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->moveTime:I

    .line 88
    .line 89
    add-int/2addr v1, v2

    .line 90
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 91
    .line 92
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 93
    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->moveTime:I

    .line 99
    .line 100
    int-to-long v4, v2

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 106
    .line 107
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 108
    .line 109
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 110
    .line 111
    iget v3, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 112
    .line 113
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v7, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v0, v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private processMorePoint(Lcom/haima/hmcp/beans/PointCoord2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 2
    .line 3
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord2;->keyType:I

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    const-string v2, ","

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string v4, "morePointMove"

    .line 11
    .line 12
    if-eq v1, v3, :cond_5

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x2

    .line 16
    if-eq v1, v6, :cond_3

    .line 17
    .line 18
    const/4 v7, 0x3

    .line 19
    if-eq v1, v7, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->reMovePoint()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 34
    .line 35
    new-instance v7, Lcom/haima/hmcp/beans/FPoint;

    .line 36
    .line 37
    iget v8, v0, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 38
    .line 39
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 40
    .line 41
    invoke-direct {v7, v8, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3, v7}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v7, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 59
    .line 60
    iget v7, v7, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 61
    .line 62
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v7, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 69
    .line 70
    iget v7, v7, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 71
    .line 72
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iput-boolean v3, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 83
    .line 84
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->pointMove(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 88
    .line 89
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 90
    .line 91
    iget v7, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 92
    .line 93
    iget v8, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 94
    .line 95
    invoke-direct {v1, v7, v8}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v6, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-wide v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->clickTime:J

    .line 111
    .line 112
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 116
    .line 117
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 118
    .line 119
    iget v7, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 120
    .line 121
    iget v8, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 122
    .line 123
    invoke-direct {v1, v7, v8}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 141
    .line 142
    iget v3, v3, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 151
    .line 152
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-wide v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->clickTime:J

    .line 165
    .line 166
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 170
    .line 171
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 172
    .line 173
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 174
    .line 175
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 176
    .line 177
    invoke-direct {v1, v2, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v6, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iput-boolean v5, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_3
    iget-boolean p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 197
    .line 198
    if-eqz p1, :cond_4

    .line 199
    .line 200
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 201
    .line 202
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 203
    .line 204
    iget v7, v0, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 205
    .line 206
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 207
    .line 208
    invoke-direct {v1, v7, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v6, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-wide v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->clickTime:J

    .line 224
    .line 225
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 226
    .line 227
    .line 228
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 229
    .line 230
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 233
    .line 234
    iget v7, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 235
    .line 236
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 237
    .line 238
    invoke-direct {v0, v7, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v3, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 256
    .line 257
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 266
    .line 267
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iget-wide v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->clickTime:J

    .line 280
    .line 281
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 285
    .line 286
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 287
    .line 288
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 289
    .line 290
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 291
    .line 292
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 293
    .line 294
    invoke-direct {v0, v2, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v6, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    iput-boolean v5, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 310
    .line 311
    iget-object p1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 312
    .line 313
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 314
    .line 315
    int-to-long v0, p1

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 317
    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_5
    if-nez p1, :cond_6

    .line 321
    .line 322
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->reMovePoint()V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :cond_6
    iget-boolean v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 327
    .line 328
    if-nez v1, :cond_7

    .line 329
    .line 330
    iget-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 331
    .line 332
    new-instance v5, Lcom/haima/hmcp/beans/FPoint;

    .line 333
    .line 334
    iget v6, v0, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 335
    .line 336
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 337
    .line 338
    invoke-direct {v5, v6, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v3, v5}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    iget-object v5, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 356
    .line 357
    iget v5, v5, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 358
    .line 359
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 366
    .line 367
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    iput-boolean v3, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 380
    .line 381
    :cond_7
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->pointMove(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 382
    .line 383
    .line 384
    :goto_0
    return-void

    .line 385
    :cond_8
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->reMovePoint()V

    .line 386
    .line 387
    .line 388
    return-void
.end method

.method private reMovePoint()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->isDown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 6
    .line 7
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 10
    .line 11
    iget v3, v2, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 12
    .line 13
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 14
    .line 15
    invoke-direct {v1, v3, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "morePointMove"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->setMorePointIsRun(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/haima/hmcp/beans/PointCoord2;

    .line 23
    .line 24
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x64

    .line 29
    .line 30
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 31
    .line 32
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->processMorePoint(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/haima/hmcp/device/input/thread/MorePointThread;->processMorePoint(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/MorePointThread;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->setMorePointIsRun(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method
