.class Lio/netty/util/concurrent/SingleThreadEventExecutor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;->doStartThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const-string v0, "An event executor terminated with non-empty task queue ("

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$102(Lio/netty/util/concurrent/SingleThreadEventExecutor;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 13
    .line 14
    invoke-static {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$200(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 21
    .line 22
    invoke-static {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$100(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 30
    .line 31
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->updateLastExecutionTime()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    const/4 v2, 0x3

    .line 36
    const/16 v3, 0x29

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x5

    .line 40
    :try_start_0
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 41
    .line 42
    invoke-virtual {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 46
    .line 47
    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ge v6, v2, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    iget-object v8, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 58
    .line 59
    invoke-virtual {v7, v8, v6, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    :cond_2
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 66
    .line 67
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$600(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    cmp-long v2, v6, v8

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v7, "Buggy "

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-class v7, Lio/netty/util/concurrent/EventExecutor;

    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v7, " implementation; "

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-class v7, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v7, ".confirmShutdown() must be called before run() implementation terminates."

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-interface {v2, v6}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :try_start_1
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 137
    .line 138
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    :cond_4
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 145
    .line 146
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-ge v2, v1, :cond_5

    .line 151
    .line 152
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    iget-object v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 157
    .line 158
    invoke-virtual {v6, v7, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    :cond_5
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 165
    .line 166
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    .line 168
    .line 169
    :try_start_2
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 170
    .line 171
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 182
    .line 183
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 187
    .line 188
    invoke-static {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 196
    .line 197
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-lez v1, :cond_6

    .line 202
    .line 203
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_6

    .line 212
    .line 213
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 239
    .line 240
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :catchall_0
    move-exception v1

    .line 250
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 258
    .line 259
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 260
    .line 261
    .line 262
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 263
    .line 264
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 269
    .line 270
    .line 271
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 272
    .line 273
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-lez v2, :cond_7

    .line 278
    .line 279
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_7

    .line 288
    .line 289
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_7
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 315
    .line 316
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 321
    .line 322
    .line 323
    throw v1

    .line 324
    :catchall_1
    move-exception v1

    .line 325
    :try_start_3
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 326
    .line 327
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 328
    .line 329
    .line 330
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 338
    .line 339
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 340
    .line 341
    .line 342
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 343
    .line 344
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 349
    .line 350
    .line 351
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 352
    .line 353
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-lez v2, :cond_8

    .line 358
    .line 359
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_8

    .line 368
    .line 369
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :cond_8
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 395
    .line 396
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 401
    .line 402
    .line 403
    throw v1

    .line 404
    :catchall_2
    move-exception v1

    .line 405
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 406
    .line 407
    .line 408
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 413
    .line 414
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 415
    .line 416
    .line 417
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 418
    .line 419
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 424
    .line 425
    .line 426
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 427
    .line 428
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-lez v2, :cond_9

    .line 433
    .line 434
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_9

    .line 443
    .line 444
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    :cond_9
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 470
    .line 471
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 476
    .line 477
    .line 478
    throw v1

    .line 479
    :catchall_3
    move-exception v6

    .line 480
    :try_start_4
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    const-string v8, "Unexpected exception from an event executor: "

    .line 485
    .line 486
    invoke-interface {v7, v8, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 487
    .line 488
    .line 489
    :cond_a
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 490
    .line 491
    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    .line 492
    .line 493
    .line 494
    move-result v6

    .line 495
    if-ge v6, v2, :cond_b

    .line 496
    .line 497
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    iget-object v8, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 502
    .line 503
    invoke-virtual {v7, v8, v6, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    if-eqz v6, :cond_a

    .line 508
    .line 509
    :cond_b
    :try_start_5
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 510
    .line 511
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_b

    .line 516
    .line 517
    :cond_c
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 518
    .line 519
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    if-ge v2, v1, :cond_d

    .line 524
    .line 525
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    iget-object v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 530
    .line 531
    invoke-virtual {v6, v7, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-eqz v2, :cond_c

    .line 536
    .line 537
    :cond_d
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 538
    .line 539
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 540
    .line 541
    .line 542
    :try_start_6
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 543
    .line 544
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 545
    .line 546
    .line 547
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 548
    .line 549
    .line 550
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 555
    .line 556
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 557
    .line 558
    .line 559
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 560
    .line 561
    invoke-static {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 566
    .line 567
    .line 568
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 569
    .line 570
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-lez v1, :cond_6

    .line 575
    .line 576
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-eqz v2, :cond_6

    .line 585
    .line 586
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_0

    .line 596
    .line 597
    :goto_1
    return-void

    .line 598
    :catchall_4
    move-exception v1

    .line 599
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 600
    .line 601
    .line 602
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 607
    .line 608
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 609
    .line 610
    .line 611
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 612
    .line 613
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 618
    .line 619
    .line 620
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 621
    .line 622
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-lez v2, :cond_e

    .line 627
    .line 628
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    if-eqz v5, :cond_e

    .line 637
    .line 638
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    new-instance v6, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :cond_e
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 664
    .line 665
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 670
    .line 671
    .line 672
    throw v1

    .line 673
    :catchall_5
    move-exception v1

    .line 674
    :try_start_7
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 675
    .line 676
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 677
    .line 678
    .line 679
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 680
    .line 681
    .line 682
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 687
    .line 688
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 689
    .line 690
    .line 691
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 692
    .line 693
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 698
    .line 699
    .line 700
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 701
    .line 702
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-lez v2, :cond_f

    .line 707
    .line 708
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    if-eqz v5, :cond_f

    .line 717
    .line 718
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    new-instance v6, Ljava/lang/StringBuilder;

    .line 723
    .line 724
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    :cond_f
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 744
    .line 745
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 750
    .line 751
    .line 752
    throw v1

    .line 753
    :catchall_6
    move-exception v1

    .line 754
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 755
    .line 756
    .line 757
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 762
    .line 763
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 764
    .line 765
    .line 766
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 767
    .line 768
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 773
    .line 774
    .line 775
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 776
    .line 777
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-lez v2, :cond_10

    .line 782
    .line 783
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    if-eqz v5, :cond_10

    .line 792
    .line 793
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    new-instance v6, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    :cond_10
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 819
    .line 820
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 825
    .line 826
    .line 827
    throw v1

    .line 828
    :catchall_7
    move-exception v6

    .line 829
    :cond_11
    iget-object v7, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 830
    .line 831
    invoke-static {v7}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    .line 832
    .line 833
    .line 834
    move-result v7

    .line 835
    if-ge v7, v2, :cond_12

    .line 836
    .line 837
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 838
    .line 839
    .line 840
    move-result-object v8

    .line 841
    iget-object v9, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 842
    .line 843
    invoke-virtual {v8, v9, v7, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 844
    .line 845
    .line 846
    move-result v7

    .line 847
    if-eqz v7, :cond_11

    .line 848
    .line 849
    :cond_12
    :try_start_8
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 850
    .line 851
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_12

    .line 856
    .line 857
    :cond_13
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 858
    .line 859
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    if-ge v2, v1, :cond_14

    .line 864
    .line 865
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    iget-object v8, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 870
    .line 871
    invoke-virtual {v7, v8, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 872
    .line 873
    .line 874
    move-result v2

    .line 875
    if-eqz v2, :cond_13

    .line 876
    .line 877
    :cond_14
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 878
    .line 879
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 880
    .line 881
    .line 882
    :try_start_9
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 883
    .line 884
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 885
    .line 886
    .line 887
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 888
    .line 889
    .line 890
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 895
    .line 896
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 897
    .line 898
    .line 899
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 900
    .line 901
    invoke-static {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 906
    .line 907
    .line 908
    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 909
    .line 910
    invoke-virtual {v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    if-lez v1, :cond_15

    .line 915
    .line 916
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 921
    .line 922
    .line 923
    move-result v2

    .line 924
    if-eqz v2, :cond_15

    .line 925
    .line 926
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    new-instance v5, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-interface {v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    :cond_15
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 952
    .line 953
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 958
    .line 959
    .line 960
    throw v6

    .line 961
    :catchall_8
    move-exception v1

    .line 962
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 963
    .line 964
    .line 965
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 970
    .line 971
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 972
    .line 973
    .line 974
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 975
    .line 976
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 981
    .line 982
    .line 983
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 984
    .line 985
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 986
    .line 987
    .line 988
    move-result v2

    .line 989
    if-lez v2, :cond_16

    .line 990
    .line 991
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 992
    .line 993
    .line 994
    move-result-object v5

    .line 995
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 996
    .line 997
    .line 998
    move-result v5

    .line 999
    if-eqz v5, :cond_16

    .line 1000
    .line 1001
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v5

    .line 1005
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    :cond_16
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1027
    .line 1028
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1033
    .line 1034
    .line 1035
    throw v1

    .line 1036
    :catchall_9
    move-exception v1

    .line 1037
    :try_start_a
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1038
    .line 1039
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1040
    .line 1041
    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1043
    .line 1044
    .line 1045
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1050
    .line 1051
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1055
    .line 1056
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1061
    .line 1062
    .line 1063
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1064
    .line 1065
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    if-lez v2, :cond_17

    .line 1070
    .line 1071
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 1076
    .line 1077
    .line 1078
    move-result v5

    .line 1079
    if-eqz v5, :cond_17

    .line 1080
    .line 1081
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v5

    .line 1085
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    :cond_17
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1107
    .line 1108
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1113
    .line 1114
    .line 1115
    throw v1

    .line 1116
    :catchall_a
    move-exception v1

    .line 1117
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1118
    .line 1119
    .line 1120
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1125
    .line 1126
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1127
    .line 1128
    .line 1129
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1130
    .line 1131
    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v2

    .line 1135
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1136
    .line 1137
    .line 1138
    iget-object v2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1139
    .line 1140
    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    .line 1141
    .line 1142
    .line 1143
    move-result v2

    .line 1144
    if-lez v2, :cond_18

    .line 1145
    .line 1146
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v5

    .line 1150
    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v5

    .line 1154
    if-eqz v5, :cond_18

    .line 1155
    .line 1156
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v5

    .line 1160
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    :cond_18
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1182
    .line 1183
    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1188
    .line 1189
    .line 1190
    throw v1
.end method
