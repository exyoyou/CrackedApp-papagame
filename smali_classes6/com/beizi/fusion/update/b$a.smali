.class Lcom/beizi/fusion/update/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/update/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/update/b;

.field private b:I


# direct methods
.method constructor <init>(Lcom/beizi/fusion/update/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/beizi/fusion/update/b$a;->b:I

    .line 7
    .line 8
    return-void
.end method

.method private a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/beizi/fusion/update/b;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-static {}, Lcom/beizi/fusion/update/b;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/beizi/fusion/model/TaskBean;->getExpired()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {}, Lcom/beizi/fusion/update/b;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/beizi/fusion/model/TaskBean;->getBackTaskArray()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-lez v6, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v15, Lcom/beizi/fusion/events/EventBean;

    .line 46
    .line 47
    sget-object v8, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 48
    .line 49
    const-string v9, ""

    .line 50
    .line 51
    const-string v10, "500.200"

    .line 52
    .line 53
    const-string v11, ""

    .line 54
    .line 55
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    const-string v13, ""

    .line 64
    .line 65
    const-string v14, ""

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v16

    .line 71
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    const-string v17, ""

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v18

    .line 85
    move-object v7, v15

    .line 86
    move-object v0, v15

    .line 87
    move-object/from16 v15, v16

    .line 88
    .line 89
    move-object/from16 v16, v17

    .line 90
    .line 91
    move-object/from16 v17, v18

    .line 92
    .line 93
    invoke-direct/range {v7 .. v17}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v0}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-ge v0, v6, :cond_1

    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    sub-long/2addr v6, v3

    .line 111
    cmp-long v8, v6, v1

    .line 112
    .line 113
    if-lez v8, :cond_0

    .line 114
    .line 115
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    new-instance v15, Lcom/beizi/fusion/events/EventBean;

    .line 124
    .line 125
    sget-object v8, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 126
    .line 127
    const-string v9, ""

    .line 128
    .line 129
    const-string v10, "530.500"

    .line 130
    .line 131
    const-string v11, ""

    .line 132
    .line 133
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    const-string v13, ""

    .line 142
    .line 143
    const-string v14, ""

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v16

    .line 149
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v16

    .line 153
    const-string v17, ""

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    sub-int/2addr v7, v0

    .line 160
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v18

    .line 164
    move-object v7, v15

    .line 165
    move-wide/from16 v19, v1

    .line 166
    .line 167
    move-object v1, v15

    .line 168
    move-object/from16 v15, v16

    .line 169
    .line 170
    move-object/from16 v16, v17

    .line 171
    .line 172
    move-object/from16 v17, v18

    .line 173
    .line 174
    invoke-direct/range {v7 .. v17}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v1}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 178
    .line 179
    .line 180
    move-object/from16 v6, p0

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_0
    move-wide/from16 v19, v1

    .line 184
    .line 185
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getType()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    move-object/from16 v6, p0

    .line 196
    .line 197
    iget-object v7, v6, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 198
    .line 199
    invoke-static {v7}, Lcom/beizi/fusion/update/b;->c(Lcom/beizi/fusion/update/b;)Lcom/beizi/fusion/update/b$b;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    new-instance v8, Lcom/beizi/fusion/update/b$a$1;

    .line 204
    .line 205
    invoke-direct {v8, v6, v2, v1}, Lcom/beizi/fusion/update/b$a$1;-><init>(Lcom/beizi/fusion/update/b$a;ILcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    .line 210
    .line 211
    :try_start_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getSleepTime()J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 219
    .line 220
    move-wide/from16 v1, v19

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_1
    move-object/from16 v6, p0

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_2
    move-object v6, v0

    .line 227
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/beizi/fusion/update/b$a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "config is expire:"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/os/Message;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 42
    .line 43
    .line 44
    iput v3, v0, Landroid/os/Message;->what:I

    .line 45
    .line 46
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/beizi/fusion/update/b;->c(Lcom/beizi/fusion/update/b;)Lcom/beizi/fusion/update/b$b;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 66
    .line 67
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, ""

    .line 70
    .line 71
    const-string v4, "310.200"

    .line 72
    .line 73
    const-string v5, ""

    .line 74
    .line 75
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, ""

    .line 84
    .line 85
    const-string v8, ""

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const-string v10, ""

    .line 96
    .line 97
    move-object v1, v11

    .line 98
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v1, "taskConfig:"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/beizi/fusion/update/b;->b()Lcom/beizi/fusion/model/ResponseInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getTaskConfig()Lcom/beizi/fusion/model/TaskConfig;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-static {}, Lcom/beizi/fusion/update/b;->b()Lcom/beizi/fusion/model/ResponseInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getTaskConfig()Lcom/beizi/fusion/model/TaskConfig;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskConfig;->getUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_6

    .line 152
    .line 153
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskConfig;->getUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-static {v1, v0, v2, v3}, Lcom/beizi/fusion/tool/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_6

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-lez v1, :cond_6

    .line 186
    .line 187
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v0, "data"

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_6

    .line 203
    .line 204
    const-string v1, "null"

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_6

    .line 211
    .line 212
    invoke-static {}, Lcom/beizi/fusion/tool/aa;->a()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_6

    .line 225
    .line 226
    invoke-static {v0}, Lcom/beizi/fusion/model/TaskBean;->objectFromData(Ljava/lang/String;)Lcom/beizi/fusion/model/TaskBean;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/beizi/fusion/update/b;->a(Lcom/beizi/fusion/model/TaskBean;)Lcom/beizi/fusion/model/TaskBean;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lcom/beizi/fusion/update/b;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    invoke-direct {p0}, Lcom/beizi/fusion/update/b$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_2
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventCar;->doUpLoadLogs()V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/beizi/fusion/update/b;->a(Lcom/beizi/fusion/update/b;)Ljava/lang/Boolean;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    const/4 v1, 0x0

    .line 268
    if-eqz v0, :cond_5

    .line 269
    .line 270
    iget-object v0, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 271
    .line 272
    invoke-static {v0}, Lcom/beizi/fusion/update/b;->b(Lcom/beizi/fusion/update/b;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_4

    .line 277
    .line 278
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->k()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_4

    .line 287
    .line 288
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/beizi/fusion/tool/au;->o(Landroid/content/Context;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_4

    .line 297
    .line 298
    return-void

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 300
    .line 301
    invoke-static {v0, v1}, Lcom/beizi/fusion/update/b;->a(Lcom/beizi/fusion/update/b;Z)Z

    .line 302
    .line 303
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    new-instance v0, Landroid/os/Message;

    .line 324
    .line 325
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 326
    .line 327
    .line 328
    iput v3, v0, Landroid/os/Message;->what:I

    .line 329
    .line 330
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 331
    .line 332
    iget-object v1, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 333
    .line 334
    invoke-static {v1}, Lcom/beizi/fusion/update/b;->c(Lcom/beizi/fusion/update/b;)Lcom/beizi/fusion/update/b$b;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    .line 340
    .line 341
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 350
    .line 351
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 352
    .line 353
    const-string v3, ""

    .line 354
    .line 355
    const-string v4, "310.200"

    .line 356
    .line 357
    const-string v5, ""

    .line 358
    .line 359
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    const-string v7, ""

    .line 368
    .line 369
    const-string v8, ""

    .line 370
    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 372
    .line 373
    .line 374
    move-result-wide v9

    .line 375
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    const-string v10, ""

    .line 380
    .line 381
    move-object v1, v11

    .line 382
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 386
    .line 387
    .line 388
    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/update/b$a;->a:Lcom/beizi/fusion/update/b;

    .line 390
    .line 391
    invoke-static {v0, v1}, Lcom/beizi/fusion/update/b;->a(Lcom/beizi/fusion/update/b;Z)Z

    .line 392
    .line 393
    .line 394
    invoke-static {}, Lcom/beizi/fusion/update/b;->a()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 403
    .line 404
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 405
    .line 406
    const-string v3, ""

    .line 407
    .line 408
    const-string v4, "310.210"

    .line 409
    .line 410
    const-string v5, ""

    .line 411
    .line 412
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    const-string v7, ""

    .line 421
    .line 422
    const-string v8, ""

    .line 423
    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 425
    .line 426
    .line 427
    move-result-wide v9

    .line 428
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    const-string v10, ""

    .line 433
    .line 434
    move-object v1, v11

    .line 435
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 439
    .line 440
    .line 441
    :catch_0
    :cond_6
    :goto_0
    return-void
.end method
