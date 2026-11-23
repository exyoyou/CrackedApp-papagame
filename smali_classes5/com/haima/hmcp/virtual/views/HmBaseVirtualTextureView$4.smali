.class Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->createDrawThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

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
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HmDrawVirtualThread"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "HmDrawVirtualThread start"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$000(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_8

    .line 26
    .line 27
    const-wide/16 v0, 0x21

    .line 28
    .line 29
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$300(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$000(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1202(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$700(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 106
    .line 107
    invoke-static {v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$000(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Z

    .line 108
    .line 109
    .line 110
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    if-nez v3, :cond_2

    .line 112
    .line 113
    :try_start_2
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 132
    .line 133
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    const-string v2, "HmDrawVirtualThread unlock canvas error"

    .line 136
    .line 137
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    return-void

    .line 142
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$700(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateVirtualViewList(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 152
    .line 153
    invoke-static {v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->draw(Landroid/graphics/Canvas;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 170
    .line 171
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_7

    .line 179
    :catch_2
    :try_start_6
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    const-string v2, "HmDrawVirtualThread unlock canvas error"

    .line 184
    .line 185
    :goto_4
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_4
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 190
    .line 191
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    .line 197
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 198
    .line 199
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :catchall_0
    move-exception v1

    .line 208
    goto :goto_9

    .line 209
    :catch_3
    :try_start_8
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    const-string v2, "HmDrawVirtualThread unlock canvas error"

    .line 214
    .line 215
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_5
    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    return-void

    .line 220
    :catchall_1
    move-exception v1

    .line 221
    :try_start_9
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 222
    .line 223
    iget-object v2, v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 224
    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v4, "HmDrawVirtualThread draw error :"

    .line 231
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 247
    .line 248
    .line 249
    :try_start_a
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 250
    .line 251
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-eqz v1, :cond_6

    .line 256
    .line 257
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 258
    .line 259
    invoke-static {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :catch_4
    :try_start_b
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 268
    .line 269
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 270
    .line 271
    const-string v2, "HmDrawVirtualThread unlock canvas error"

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_6
    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :catchall_2
    move-exception v1

    .line 278
    :try_start_c
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 279
    .line 280
    invoke-static {v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-eqz v2, :cond_7

    .line 285
    .line 286
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 287
    .line 288
    invoke-static {v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v2, v3}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :catch_5
    :try_start_d
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 297
    .line 298
    iget-object v2, v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 299
    .line 300
    const-string v3, "HmDrawVirtualThread unlock canvas error"

    .line 301
    .line 302
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_7
    :goto_8
    throw v1

    .line 306
    :goto_9
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 307
    throw v1

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;

    .line 309
    .line 310
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 311
    .line 312
    const-string v1, "HmDrawVirtualThread end"

    .line 313
    .line 314
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return-void
.end method
