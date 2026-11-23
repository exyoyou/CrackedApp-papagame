.class Lcn/fly/commons/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/commons/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/j;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method private constructor <init>(Lcn/fly/commons/j;Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcn/fly/commons/j$a;->b:Ljava/util/ArrayList;

    .line 4
    iput-wide p3, p0, Lcn/fly/commons/j$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/fly/commons/j;Ljava/util/ArrayList;JLcn/fly/commons/j$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/fly/commons/j$a;-><init>(Lcn/fly/commons/j;Ljava/util/ArrayList;J)V

    return-void
.end method

.method private a(J)J
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0xa4cb80

    .line 6
    .line 7
    .line 8
    add-long/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    const-string v2, "Asia/Shanghai"

    .line 14
    .line 15
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/16 v5, 0x14

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    if-ltz v4, :cond_0

    .line 36
    .line 37
    const/16 v7, 0x8

    .line 38
    .line 39
    if-lt v4, v7, :cond_1

    .line 40
    .line 41
    :cond_0
    if-lt v4, v5, :cond_2

    .line 42
    .line 43
    const/16 v7, 0x17

    .line 44
    .line 45
    if-gt v4, v7, :cond_2

    .line 46
    .line 47
    :cond_1
    const/4 v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v4, 0x0

    .line 50
    :goto_0
    if-nez v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 53
    .line 54
    .line 55
    const/16 p1, 0xc

    .line 56
    .line 57
    invoke-virtual {v2, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 58
    .line 59
    .line 60
    const/16 p1, 0xd

    .line 61
    .line 62
    invoke-virtual {v2, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 63
    .line 64
    .line 65
    const/16 p1, 0xe

    .line 66
    .line 67
    invoke-virtual {v2, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    :cond_3
    sub-long/2addr p1, v0

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .line 77
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    return-wide p1
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "DM "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/32 v2, 0x493e0

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-wide v4, p0, Lcn/fly/commons/j$a;->c:J

    .line 8
    .line 9
    invoke-direct {p0, v4, v5}, Lcn/fly/commons/j$a;->a(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    cmp-long v8, v4, v6

    .line 16
    .line 17
    if-nez v8, :cond_1

    .line 18
    .line 19
    :try_start_1
    iget-object v8, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 20
    .line 21
    iget-object v9, p0, Lcn/fly/commons/j$a;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v8, v9}, Lcn/fly/commons/j;->a(Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    iget-object v8, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 27
    .line 28
    invoke-static {v8}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;)Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    cmp-long v10, v8, v6

    .line 37
    .line 38
    if-lez v10, :cond_0

    .line 39
    .line 40
    iget-object v8, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 41
    .line 42
    invoke-static {v8}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;)Ljava/util/concurrent/CountDownLatch;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v8, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 50
    .line 51
    invoke-static {v8}, Lcn/fly/commons/j;->g(Lcn/fly/commons/j;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v8, v6}, Lcn/fly/commons/ae;->a(Ljava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-static {v2, v3}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    move-wide v2, v4

    .line 76
    :cond_2
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 77
    .line 78
    invoke-static {v4}, Lcn/fly/commons/j;->g(Lcn/fly/commons/j;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    iget-object v4, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 85
    .line 86
    invoke-static {v4}, Lcn/fly/commons/j;->h(Lcn/fly/commons/j;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 91
    .line 92
    invoke-interface {v4, p0, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :catchall_0
    move-exception v2

    .line 98
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v3, v2, v0, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_1
    move-exception v2

    .line 128
    goto :goto_1

    .line 129
    :catchall_2
    move-exception v4

    .line 130
    move-wide v11, v2

    .line 131
    move-object v2, v4

    .line 132
    move-wide v4, v11

    .line 133
    :goto_1
    :try_start_3
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    new-array v7, v1, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {v3, v2, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 159
    .line 160
    .line 161
    :try_start_4
    iget-object v2, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 162
    .line 163
    invoke-static {v2}, Lcn/fly/commons/j;->g(Lcn/fly/commons/j;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_3

    .line 168
    .line 169
    iget-object v2, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 170
    .line 171
    invoke-static {v2}, Lcn/fly/commons/j;->h(Lcn/fly/commons/j;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 176
    .line 177
    invoke-interface {v2, p0, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :catchall_3
    move-exception v2

    .line 182
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-array v1, v1, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v3, v2, v0, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    :cond_3
    :goto_2
    return-void

    .line 211
    :catchall_4
    move-exception v2

    .line 212
    :try_start_5
    iget-object v3, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 213
    .line 214
    invoke-static {v3}, Lcn/fly/commons/j;->g(Lcn/fly/commons/j;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_4

    .line 219
    .line 220
    iget-object v3, p0, Lcn/fly/commons/j$a;->a:Lcn/fly/commons/j;

    .line 221
    .line 222
    invoke-static {v3}, Lcn/fly/commons/j;->h(Lcn/fly/commons/j;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    .line 228
    invoke-interface {v3, p0, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catchall_5
    move-exception v3

    .line 233
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-array v1, v1, [Ljava/lang/Object;

    .line 257
    .line 258
    invoke-virtual {v4, v3, v0, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 259
    .line 260
    .line 261
    :cond_4
    :goto_3
    throw v2
.end method
