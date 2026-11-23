.class Lcom/haima/hmcp/model/EventModel$MorePointThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/EventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MorePointThread"
.end annotation


# instance fields
.field private clickTime:J

.field private coord:Lcom/haima/hmcp/beans/PointCoord;

.field private hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

.field private isDown:Z

.field private mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

.field private moveTime:I

.field final synthetic this$0:Lcom/haima/hmcp/model/EventModel;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/model/EventModel;Lcom/haima/hmcp/beans/PointCoord;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x32

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->clickTime:J

    .line 9
    .line 10
    const/16 p1, 0x12

    .line 11
    .line 12
    iput p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->moveTime:I

    .line 13
    .line 14
    iput-object p2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
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
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

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
    iget-object v2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

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
    iget-object v4, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

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
    invoke-static {v4, v7, v8}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 58
    .line 59
    iget v4, v4, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 68
    .line 69
    iget v4, v4, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-direct {p0, v6, v2}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->moveTime:I

    .line 82
    .line 83
    add-int/2addr v1, v2

    .line 84
    iget-object v2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 85
    .line 86
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 87
    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget v2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->moveTime:I

    .line 93
    .line 94
    int-to-long v4, v2

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 100
    .line 101
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 102
    .line 103
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 104
    .line 105
    iget v3, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 106
    .line 107
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v7, v1}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget v1, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, v6, p1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

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
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->reMovePoint()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

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
    invoke-static {v1, v3, v7}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 53
    .line 54
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 63
    .line 64
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v4, v0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v3, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 77
    .line 78
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->pointMove(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 82
    .line 83
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 84
    .line 85
    iget v7, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 86
    .line 87
    iget v8, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 88
    .line 89
    invoke-direct {v1, v7, v8}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v6, v1}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v4}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->remove(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-wide v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->clickTime:J

    .line 99
    .line 100
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 104
    .line 105
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 106
    .line 107
    iget v7, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 108
    .line 109
    iget v8, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 110
    .line 111
    invoke-direct {v1, v7, v8}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v3, v1}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 115
    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 123
    .line 124
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 133
    .line 134
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, v4, v0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-wide v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->clickTime:J

    .line 147
    .line 148
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 152
    .line 153
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 154
    .line 155
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 156
    .line 157
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 158
    .line 159
    invoke-direct {v1, v2, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v6, v1}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v4}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->remove(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iput-boolean v5, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 173
    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 177
    .line 178
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 179
    .line 180
    iget v7, v0, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 181
    .line 182
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 183
    .line 184
    invoke-direct {v1, v7, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 185
    .line 186
    .line 187
    invoke-static {p1, v6, v1}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v4}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->remove(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-wide v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->clickTime:J

    .line 194
    .line 195
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 196
    .line 197
    .line 198
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 199
    .line 200
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 201
    .line 202
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 203
    .line 204
    iget v7, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 205
    .line 206
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 207
    .line 208
    invoke-direct {v0, v7, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 209
    .line 210
    .line 211
    invoke-static {p1, v3, v0}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 212
    .line 213
    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 220
    .line 221
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 230
    .line 231
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-direct {p0, v4, p1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-wide v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->clickTime:J

    .line 244
    .line 245
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 249
    .line 250
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 251
    .line 252
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 253
    .line 254
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 255
    .line 256
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 257
    .line 258
    invoke-direct {v0, v2, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 259
    .line 260
    .line 261
    invoke-static {p1, v6, v0}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, v4}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->remove(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iput-boolean v5, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 268
    .line 269
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 270
    .line 271
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 272
    .line 273
    int-to-long v0, p1

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_5
    if-nez p1, :cond_6

    .line 279
    .line 280
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->reMovePoint()V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_6
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 285
    .line 286
    if-nez v1, :cond_7

    .line 287
    .line 288
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 289
    .line 290
    new-instance v5, Lcom/haima/hmcp/beans/FPoint;

    .line 291
    .line 292
    iget v6, v0, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 293
    .line 294
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 295
    .line 296
    invoke-direct {v5, v6, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v3, v5}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 300
    .line 301
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 308
    .line 309
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 318
    .line 319
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-direct {p0, v4, v0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iput-boolean v3, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 332
    .line 333
    :cond_7
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->pointMove(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 334
    .line 335
    .line 336
    :goto_0
    return-void

    .line 337
    :cond_8
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->reMovePoint()V

    .line 338
    .line 339
    .line 340
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private reMovePoint()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->isDown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 6
    .line 7
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

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
    invoke-static {v0, v2, v1}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 20
    .line 21
    .line 22
    const-string v0, "morePointMove"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->remove(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/EventModel;->setMorePointIsRun(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->remove(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->coord:Lcom/haima/hmcp/beans/PointCoord;

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
    iget-object v2, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->processMorePoint(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->hisPoint:Lcom/haima/hmcp/beans/PointCoord2;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->processMorePoint(Lcom/haima/hmcp/beans/PointCoord2;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/EventModel;->setMorePointIsRun(Z)V
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

.method public setMapModeEventCacheModel(Lcom/haima/hmcp/model/MapModeEventCacheModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel$MorePointThread;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    return-void
.end method
