.class Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;
.super Ljava/util/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerThread"
.end annotation


# instance fields
.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 5
    .line 6
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    const-wide/16 v4, 0xc8

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->scan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private scan()V
    .locals 10

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 17
    .line 18
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    array-length v4, v4

    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 27
    .line 28
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    aget-object v4, v4, v3

    .line 33
    .line 34
    const-string v5, "worker "

    .line 35
    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 39
    .line 40
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-instance v6, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 45
    .line 46
    iget-object v7, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 47
    .line 48
    invoke-direct {v6, v7}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    .line 49
    .line 50
    .line 51
    aput-object v6, v4, v3

    .line 52
    .line 53
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 54
    .line 55
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aget-object v4, v4, v3

    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 77
    .line 78
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    aget-object v4, v4, v3

    .line 83
    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v5, 0x0

    .line 89
    :goto_1
    invoke-static {v4, v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 93
    .line 94
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    aget-object v4, v4, v3

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 105
    .line 106
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    aget-object v4, v4, v3

    .line 111
    .line 112
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    sub-long v6, v0, v6

    .line 117
    .line 118
    const-wide/16 v8, 0x4e20

    .line 119
    .line 120
    cmp-long v4, v6, v8

    .line 121
    .line 122
    if-lez v4, :cond_4

    .line 123
    .line 124
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 125
    .line 126
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    aget-object v4, v4, v3

    .line 131
    .line 132
    invoke-virtual {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    .line 133
    .line 134
    .line 135
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 136
    .line 137
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    aget-object v4, v4, v3

    .line 142
    .line 143
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 148
    .line 149
    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    new-instance v7, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 154
    .line 155
    iget-object v8, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 156
    .line 157
    invoke-direct {v7, v8}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    .line 158
    .line 159
    .line 160
    aput-object v7, v6, v3

    .line 161
    .line 162
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 163
    .line 164
    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    aget-object v6, v6, v3

    .line 169
    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v5, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 186
    .line 187
    invoke-static {v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    aget-object v5, v5, v3

    .line 192
    .line 193
    invoke-static {v5, v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 194
    .line 195
    .line 196
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 197
    .line 198
    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    aget-object v4, v4, v3

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 205
    .line 206
    .line 207
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 208
    .line 209
    goto/16 :goto_0
.end method
