.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInfo(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1900(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1900(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x3

    .line 19
    if-eq p2, p1, :cond_a

    .line 20
    .line 21
    const/16 p1, 0x2714

    .line 22
    .line 23
    const/16 v0, 0x5a

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eq p2, p1, :cond_6

    .line 27
    .line 28
    const/16 p1, 0x385

    .line 29
    .line 30
    if-eq p2, p1, :cond_5

    .line 31
    .line 32
    const/16 p1, 0x386

    .line 33
    .line 34
    if-eq p2, p1, :cond_4

    .line 35
    .line 36
    const/16 p1, 0x2711

    .line 37
    .line 38
    if-eq p2, p1, :cond_2

    .line 39
    .line 40
    const/16 p1, 0x2712

    .line 41
    .line 42
    if-eq p2, p1, :cond_1

    .line 43
    .line 44
    packed-switch p2, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    packed-switch p2, :pswitch_data_1

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :pswitch_0
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "MEDIA_INFO_METADATA_UPDATE:"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :pswitch_1
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "MEDIA_INFO_NOT_SEEKABLE:"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_2
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "MEDIA_INFO_BAD_INTERLEAVING:"

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :pswitch_3
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v0, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :pswitch_4
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "MEDIA_INFO_BUFFERING_END:"

    .line 116
    .line 117
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :pswitch_5
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p2, "MEDIA_INFO_BUFFERING_START:"

    .line 127
    .line 128
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :pswitch_6
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string p2, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    .line 138
    .line 139
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string p2, "MEDIA_INFO_AUDIO_RENDERING_START:"

    .line 149
    .line 150
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v2, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    .line 165
    .line 166
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    sget-object p3, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 186
    .line 187
    if-ne p2, p3, :cond_3

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_3
    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-static {p1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$2002(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_4
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const-string p2, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    .line 201
    .line 202
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_5
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const-string p2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    .line 212
    .line 213
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :cond_6
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string p2, "MEDIA_INFO_VIDEO_DECODED_START:"

    .line 223
    .line 224
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 228
    .line 229
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 230
    .line 231
    if-eqz p2, :cond_b

    .line 232
    .line 233
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    sget-object p3, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 242
    .line 243
    if-ne p2, p3, :cond_7

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_7
    const/4 v0, 0x0

    .line 247
    :goto_1
    invoke-static {p1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$2002(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 251
    .line 252
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 253
    .line 254
    if-eqz p2, :cond_8

    .line 255
    .line 256
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$2000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->setVideoRotation(I)V

    .line 261
    .line 262
    .line 263
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 264
    .line 265
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 266
    .line 267
    invoke-interface {p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-static {p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 275
    .line 276
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 277
    .line 278
    invoke-interface {p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    invoke-static {p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$602(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 286
    .line 287
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 288
    .line 289
    invoke-interface {p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    invoke-static {p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$702(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 297
    .line 298
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 299
    .line 300
    invoke-interface {p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    invoke-static {p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$802(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 308
    .line 309
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_b

    .line 314
    .line 315
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 316
    .line 317
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_b

    .line 322
    .line 323
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 324
    .line 325
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 326
    .line 327
    if-eqz p2, :cond_9

    .line 328
    .line 329
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 334
    .line 335
    invoke-static {p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 336
    .line 337
    .line 338
    move-result p3

    .line 339
    invoke-static {p1, p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$2100(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;II)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 343
    .line 344
    iget-object p2, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 345
    .line 346
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$700(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 351
    .line 352
    invoke-static {p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$800(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 353
    .line 354
    .line 355
    move-result p3

    .line 356
    invoke-interface {p2, p1, p3}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 357
    .line 358
    .line 359
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 360
    .line 361
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 366
    .line 367
    .line 368
    goto :goto_2

    .line 369
    :cond_a
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    const-string p2, "MEDIA_INFO_VIDEO_RENDERING_START:"

    .line 374
    .line 375
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_b
    :goto_2
    const/4 p1, 0x1

    .line 379
    return p1

    .line 380
    nop

    .line 381
    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
