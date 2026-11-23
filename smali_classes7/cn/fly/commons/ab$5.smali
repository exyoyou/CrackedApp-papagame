.class Lcn/fly/commons/ab$5;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/ab;->l()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcn/fly/commons/ab;


# direct methods
.method constructor <init>(Lcn/fly/commons/ab;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/ab$5;->c:Lcn/fly/commons/ab;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/commons/ab$5;->a:[Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/commons/ab$5;->b:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const-string v0, "061eAcghdbbffdfff@dUcdgifh0daMbjbb+e>ffdg(adWcdbafjbjbgchbgddgiffhdgifbbjZgBchcgSa,cgfgdd0aPddbjbidgchfgbafcfdfcZaYfffdfdgigi9a$fddf"

    .line 8
    .line 9
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v4, Ljava/util/UUID;

    .line 14
    .line 15
    const-wide v5, -0x121074568629b532L    # -3.563403477674908E221

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v7, -0x5c37d8232ae2de13L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    .line 26
    .line 27
    .line 28
    const/16 v5, 0x1c

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    :try_start_0
    new-instance v15, Landroid/media/MediaDrm;

    .line 32
    .line 33
    invoke-direct {v15, v4}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v6}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const-string v6, "012cbg bgbbLd7bfdgGdg:be]h"

    .line 49
    .line 50
    invoke-static {v6}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    const/4 v6, 0x3

    .line 55
    new-array v11, v6, [Ljava/lang/Class;

    .line 56
    .line 57
    const-class v9, Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    aput-object v9, v11, v14

    .line 61
    .line 62
    const-class v9, [B

    .line 63
    .line 64
    const/4 v12, 0x1

    .line 65
    aput-object v9, v11, v12

    .line 66
    .line 67
    const-class v9, Ljava/lang/String;

    .line 68
    .line 69
    const/4 v13, 0x2

    .line 70
    aput-object v9, v11, v13

    .line 71
    .line 72
    new-array v6, v6, [Ljava/lang/Object;

    .line 73
    .line 74
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 75
    .line 76
    invoke-direct {v9, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    aput-object v9, v6, v14

    .line 80
    .line 81
    iget-object v9, v1, Lcn/fly/commons/ab$5;->c:Lcn/fly/commons/ab;

    .line 82
    .line 83
    invoke-static {v9, v4}, Lcn/fly/commons/ab;->a(Lcn/fly/commons/ab;Ljava/util/UUID;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    aput-object v4, v6, v12

    .line 88
    .line 89
    aput-object v0, v6, v13

    .line 90
    .line 91
    const/4 v13, 0x0

    .line 92
    const/4 v0, 0x0

    .line 93
    move-object v9, v15

    .line 94
    move-object v12, v6

    .line 95
    const/4 v4, 0x0

    .line 96
    move-object v14, v0

    .line 97
    invoke-virtual/range {v7 .. v14}, Lcn/fly/tools/a/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v0, "0140ba+d1bbbg*ad8ci0cZbgbcbe2d.ccba"

    .line 101
    .line 102
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v15, v0}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v6, v1, Lcn/fly/commons/ab$5;->a:[Ljava/lang/String;

    .line 111
    .line 112
    array-length v7, v0

    .line 113
    invoke-static {v0, v4, v7}, Lcn/fly/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    aput-object v0, v6, v4

    .line 118
    .line 119
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v7, "rddd wv c "

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    sub-long/2addr v7, v2

    .line 138
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    new-array v3, v4, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {v0, v2, v3}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    :try_start_2
    iget-object v0, v1, Lcn/fly/commons/ab$5;->b:Ljava/util/concurrent/CountDownLatch;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-lt v0, v5, :cond_0

    .line 160
    .line 161
    invoke-virtual {v15}, Landroid/media/MediaDrm;->release()V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v15}, Landroid/media/MediaDrm;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    move-object v6, v15

    .line 171
    goto :goto_0

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    :goto_0
    :try_start_3
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 178
    .line 179
    .line 180
    :try_start_4
    iget-object v0, v1, Lcn/fly/commons/ab$5;->b:Ljava/util/concurrent/CountDownLatch;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-lt v0, v5, :cond_1

    .line 190
    .line 191
    if-eqz v6, :cond_2

    .line 192
    .line 193
    invoke-virtual {v6}, Landroid/media/MediaDrm;->release()V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_1
    if-eqz v6, :cond_2

    .line 198
    .line 199
    invoke-virtual {v6}, Landroid/media/MediaDrm;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catchall_2
    move-exception v0

    .line 204
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 209
    .line 210
    .line 211
    :cond_2
    :goto_1
    return-void

    .line 212
    :catchall_3
    move-exception v0

    .line 213
    move-object v2, v0

    .line 214
    :try_start_5
    iget-object v0, v1, Lcn/fly/commons/ab$5;->b:Ljava/util/concurrent/CountDownLatch;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-lt v0, v5, :cond_3

    .line 224
    .line 225
    if-eqz v6, :cond_4

    .line 226
    .line 227
    invoke-virtual {v6}, Landroid/media/MediaDrm;->release()V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_3
    if-eqz v6, :cond_4

    .line 232
    .line 233
    invoke-virtual {v6}, Landroid/media/MediaDrm;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :catchall_4
    move-exception v0

    .line 238
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 243
    .line 244
    .line 245
    :cond_4
    :goto_2
    throw v2
.end method
