.class Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$002(Lcom/haima/hmcp/utils/SoftKeyBoardListener;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "\u952e\u76d8\u89c6\u56fe\uff1avisibleWidth:"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", visibleHeight:"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "SoftKeyBoardListener"

    .line 54
    .line 55
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$200(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/app/Activity;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-static {v2}, Lcom/haima/hmcp/utils/Utils;->getSysOrientationRotation(Landroid/content/Context;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v2}, Lcom/haima/hmcp/utils/Utils;->getConvertOrientation(I)Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    sget-object v4, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 77
    .line 78
    if-ne v2, v4, :cond_0

    .line 79
    .line 80
    const-string v4, "\u952e\u76d8\u89c6\u56fe\uff1a\u5f53\u524d\u5c4f\u5e55\u65b9\u5411 \u7ad6\u5c4f"

    .line 81
    .line 82
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const-string v4, "\u952e\u76d8\u89c6\u56fe\uff1a\u5f53\u524d\u5c4f\u5e55\u65b9\u5411 \u6a2a\u5c4f"

    .line 91
    .line 92
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "\u952e\u76d8\uff0c\u65e0\u6cd5\u83b7\u53d6\u5c4f\u5e55\u65b9\u5411"

    .line 101
    .line 102
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const/4 v2, 0x0

    .line 107
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v4, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v4, " ,\u952e\u76d8\u89c6\u56fe\u5224\u65ad\uff1a\u5f53\u524d\u53ef\u89c1\u9ad8\u5ea6:"

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v4, ",\u4e0a\u6b21\u53ef\u89c1\u9ad8\u5ea6:"

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    sget v4, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget v1, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 147
    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    sget-object v0, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 153
    .line 154
    if-ne v2, v0, :cond_3

    .line 155
    .line 156
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 192
    .line 193
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    goto :goto_1

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    :goto_1
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 217
    .line 218
    return-void

    .line 219
    :cond_5
    if-ne v1, v0, :cond_6

    .line 220
    .line 221
    return-void

    .line 222
    :cond_6
    sub-int/2addr v1, v0

    .line 223
    const/16 v2, 0xc8

    .line 224
    .line 225
    if-le v1, v2, :cond_8

    .line 226
    .line 227
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 228
    .line 229
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_7

    .line 234
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v2, "\u952e\u76d8\uff1akeyBoardShowHeight callback "

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    sget v2, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 246
    .line 247
    sub-int/2addr v2, v0

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 259
    .line 260
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    sget v2, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 265
    .line 266
    sub-int/2addr v2, v0

    .line 267
    invoke-interface {v1, v2}, Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShowHeight(I)V

    .line 268
    .line 269
    .line 270
    :cond_7
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 271
    .line 272
    return-void

    .line 273
    :cond_8
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 274
    .line 275
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$200(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/app/Activity;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v4, "\u952e\u76d8\uff0ckey board flow mode"

    .line 280
    .line 281
    const-string v5, "\u952e\u76d8\uff0ckey board flow mode not callback, onSoftKeyBoardChangeListener is null"

    .line 282
    .line 283
    const-string v6, "\u952e\u76d8\u5904\u4e8e\u60ac\u6d6e\u6a21\u5f0f"

    .line 284
    .line 285
    if-nez v1, :cond_c

    .line 286
    .line 287
    const-string v1, "\u952e\u76d8\u60ac\u6d6e\u72b6\u6001\u3001\u9690\u85cf\u72b6\u6001\u5224\u65ad activity is null"

    .line 288
    .line 289
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget v1, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 293
    .line 294
    sub-int v1, v0, v1

    .line 295
    .line 296
    if-le v1, v2, :cond_a

    .line 297
    .line 298
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/HmIMEManager;->isShowInput()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_a

    .line 307
    .line 308
    invoke-static {v3, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 312
    .line 313
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-eqz v1, :cond_9

    .line 318
    .line 319
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 320
    .line 321
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-interface {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardFlowMode()V

    .line 326
    .line 327
    .line 328
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_9
    invoke-static {v3, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :goto_2
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 336
    .line 337
    return-void

    .line 338
    :cond_a
    sget v1, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 339
    .line 340
    sub-int v1, v0, v1

    .line 341
    .line 342
    if-le v1, v2, :cond_11

    .line 343
    .line 344
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 345
    .line 346
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    if-eqz v1, :cond_b

    .line 351
    .line 352
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 353
    .line 354
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide()V

    .line 359
    .line 360
    .line 361
    :cond_b
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 362
    .line 363
    goto/16 :goto_5

    .line 364
    .line 365
    :cond_c
    const-string v7, "input_method"

    .line 366
    .line 367
    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 372
    .line 373
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v8, "\u952e\u76d8\u663e\u793a\u72b6\u6001\uff1a"

    .line 383
    .line 384
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    if-eqz v1, :cond_d

    .line 388
    .line 389
    const-string v8, "\u663e\u793a"

    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_d
    const-string v8, "\u9690\u85cf"

    .line 393
    .line 394
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-static {v3, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    sget v7, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 405
    .line 406
    sub-int v8, v0, v7

    .line 407
    .line 408
    if-le v8, v2, :cond_f

    .line 409
    .line 410
    if-eqz v1, :cond_f

    .line 411
    .line 412
    invoke-static {v3, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 416
    .line 417
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    if-eqz v1, :cond_e

    .line 422
    .line 423
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 424
    .line 425
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-interface {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardFlowMode()V

    .line 430
    .line 431
    .line 432
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_e
    invoke-static {v3, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :goto_4
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 440
    .line 441
    return-void

    .line 442
    :cond_f
    sub-int v4, v0, v7

    .line 443
    .line 444
    if-le v4, v2, :cond_11

    .line 445
    .line 446
    if-nez v1, :cond_11

    .line 447
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v2, "\u952e\u76d8\uff1atrigger keyboard hide, "

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    sget v2, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 459
    .line 460
    sub-int v2, v0, v2

    .line 461
    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 473
    .line 474
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    if-eqz v1, :cond_10

    .line 479
    .line 480
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;->this$0:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 481
    .line 482
    invoke-static {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-interface {v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide()V

    .line 487
    .line 488
    .line 489
    :cond_10
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 490
    .line 491
    :cond_11
    :goto_5
    return-void
.end method
