.class public Lcom/haima/hmcp/virtual/views/HmVirtualBtn;
.super Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
.source "SourceFile"


# instance fields
.field private isMouse:Z

.field private isNeedDrawText:Z

.field private mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mouseLastX:I

.field private mouseLastY:I

.field private resIds:[I


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->initBitmap()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private initBitmap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBtnBgID(Ljava/lang/String;II)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->resIds:[I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_xbox_start_down:I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_xbox_select_down:I

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_mouse_wheel_top_down:I

    .line 30
    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    sget v2, Lcom/haima/hmcp/R$mipmap;->hm_vir_mouse_wheel_bottom_down:I

    .line 34
    .line 35
    if-eq v0, v2, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isNeedDrawText:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    if-lt v0, v2, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    if-gt v0, v2, :cond_1

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isMouse:Z

    .line 63
    .line 64
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isNeedDrawText:Z

    .line 65
    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->initPressBitmap()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private initPressBitmap()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, -0x1

    .line 36
    move-object v0, v1

    .line 37
    move-object v2, v0

    .line 38
    move-object v3, v2

    .line 39
    move-object v4, v3

    .line 40
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    :cond_1
    invoke-direct {p0, v5}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isMouseKeyType(I)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_2

    .line 79
    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_3

    .line 85
    .line 86
    :cond_2
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_selected_url()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_unselected_url()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    :cond_4
    invoke-direct {p0, v5}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isMouseKeyType(I)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_5

    .line 111
    .line 112
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-eqz v5, :cond_5

    .line 121
    .line 122
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-eqz v5, :cond_5

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_selected_MD5()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_unselected_MD5()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x1

    .line 144
    cmpl-float v5, v5, v6

    .line 145
    .line 146
    if-nez v5, :cond_6

    .line 147
    .line 148
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v8, "scale is 0, bitmap width = "

    .line 156
    .line 157
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v8, ", height = "

    .line 164
    .line 165
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/4 v5, 0x1

    .line 179
    const/4 v6, 0x1

    .line 180
    goto :goto_1

    .line 181
    :cond_6
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 182
    .line 183
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 184
    .line 185
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-nez v8, :cond_7

    .line 190
    .line 191
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v8, v3, v5, v6}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    goto :goto_2

    .line 200
    :cond_7
    move-object v8, v1

    .line 201
    :goto_2
    if-eqz v8, :cond_8

    .line 202
    .line 203
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 204
    .line 205
    invoke-virtual {v0, v8}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 209
    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v9, "initPressBitmap: use cached network bitmap for DOWN state, url="

    .line 216
    .line 217
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_8
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 232
    .line 233
    iget-object v9, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->resIds:[I

    .line 234
    .line 235
    const/4 v10, 0x0

    .line 236
    aget v9, v9, v10

    .line 237
    .line 238
    invoke-static {v8, v0, v9, v5, v6}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 243
    .line 244
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_9

    .line 252
    .line 253
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 254
    .line 255
    invoke-virtual {p0, v3, v5, v6, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_a

    .line 263
    .line 264
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0, v4, v5, v6}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    :cond_a
    if-eqz v1, :cond_b

    .line 273
    .line 274
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 280
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v2, "initPressBitmap: use cached network bitmap for UP state, url="

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_b
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 303
    .line 304
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->resIds:[I

    .line 305
    .line 306
    aget v1, v1, v7

    .line 307
    .line 308
    invoke-static {v0, v2, v1, v5, v6}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_c

    .line 322
    .line 323
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 324
    .line 325
    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 326
    .line 327
    .line 328
    :cond_c
    :goto_4
    return-void
.end method

.method private isMouseKeyType(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public changeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->initBitmap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public changeScale(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeScale(F)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->initPressBitmap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->draw(Landroid/graphics/Canvas;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v0, :cond_c

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_1
    const/4 v3, 0x1

    .line 28
    :try_start_0
    sget-boolean v4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 29
    .line 30
    if-eqz v4, :cond_5

    .line 31
    .line 32
    sget-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v0, v2

    .line 44
    :goto_0
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawBitmapAnim(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move-object v0, v2

    .line 56
    :goto_1
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 57
    .line 58
    int-to-float v2, v2

    .line 59
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 60
    .line 61
    int-to-float v4, v4

    .line 62
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->drawAlignLines(Landroid/graphics/Canvas;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    move-object v0, v2

    .line 79
    :goto_3
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 80
    .line 81
    int-to-float v2, v2

    .line 82
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 83
    .line 84
    int-to-float v4, v4

    .line 85
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    :goto_4
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getHideText()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    :cond_7
    if-nez v1, :cond_b

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isNeedDrawText:Z

    .line 104
    .line 105
    if-eqz v0, :cond_b

    .line 106
    .line 107
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-float/2addr v0, v1

    .line 120
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    const/high16 v1, 0x40000000    # 2.0f

    .line 125
    .line 126
    div-float/2addr v0, v1

    .line 127
    float-to-int v0, v0

    .line 128
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 129
    .line 130
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 131
    .line 132
    div-int/lit8 v4, v4, 0x2

    .line 133
    .line 134
    add-int/2addr v2, v4

    .line 135
    add-int/2addr v2, v0

    .line 136
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 137
    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->textShowRawOffsetY:I

    .line 145
    .line 146
    sub-int/2addr v2, v0

    .line 147
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 148
    .line 149
    const/high16 v4, 0x41000000    # 8.0f

    .line 150
    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 158
    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    iget-object v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rawName:Ljava/lang/String;

    .line 162
    .line 163
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 164
    .line 165
    int-to-float v0, v0

    .line 166
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 167
    .line 168
    int-to-float v5, v5

    .line 169
    div-float/2addr v5, v1

    .line 170
    add-float v8, v0, v5

    .line 171
    .line 172
    int-to-float v0, v2

    .line 173
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    div-float/2addr v5, v1

    .line 180
    add-float/2addr v0, v5

    .line 181
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 182
    .line 183
    int-to-float v5, v5

    .line 184
    div-float/2addr v5, v4

    .line 185
    add-float v9, v0, v5

    .line 186
    .line 187
    iget-object v10, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 188
    .line 189
    const/4 v11, 0x1

    .line 190
    move-object v5, p0

    .line 191
    move-object v6, p1

    .line 192
    invoke-virtual/range {v5 .. v11}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rawName:Ljava/lang/String;

    .line 197
    .line 198
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 199
    .line 200
    int-to-float v5, v5

    .line 201
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 202
    .line 203
    int-to-float v6, v6

    .line 204
    div-float/2addr v6, v1

    .line 205
    add-float/2addr v5, v6

    .line 206
    int-to-float v6, v2

    .line 207
    iget-object v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 208
    .line 209
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    div-float/2addr v7, v1

    .line 214
    add-float/2addr v6, v7

    .line 215
    iget v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 216
    .line 217
    int-to-float v7, v7

    .line 218
    div-float/2addr v7, v4

    .line 219
    add-float/2addr v6, v7

    .line 220
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 221
    .line 222
    invoke-virtual {p1, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    :goto_5
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 226
    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 230
    .line 231
    if-eqz v0, :cond_a

    .line 232
    .line 233
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 234
    .line 235
    if-nez v0, :cond_a

    .line 236
    .line 237
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 238
    .line 239
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 240
    .line 241
    int-to-float v0, v0

    .line 242
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 243
    .line 244
    int-to-float v4, v4

    .line 245
    div-float/2addr v4, v1

    .line 246
    add-float v7, v0, v4

    .line 247
    .line 248
    int-to-float v8, v2

    .line 249
    iget-object v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 250
    .line 251
    const/4 v10, 0x0

    .line 252
    move-object v4, p0

    .line 253
    move-object v5, p1

    .line 254
    invoke-virtual/range {v4 .. v10}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_a
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 259
    .line 260
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 261
    .line 262
    int-to-float v4, v4

    .line 263
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 264
    .line 265
    int-to-float v5, v5

    .line 266
    div-float/2addr v5, v1

    .line 267
    add-float/2addr v4, v5

    .line 268
    int-to-float v1, v2

    .line 269
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 270
    .line 271
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :catch_0
    move-exception p1

    .line 276
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v2, "drawBtnError : "

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_b
    :goto_6
    return v3

    .line 303
    :cond_c
    :goto_7
    return v1
.end method

.method protected getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public notifyBaseScale()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->notifyBaseScale()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->initPressBitmap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_d

    .line 15
    .line 16
    const/high16 v3, 0x41200000    # 10.0f

    .line 17
    .line 18
    if-eq v0, v2, :cond_8

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v0, v4, :cond_8

    .line 25
    .line 26
    const/4 v4, 0x5

    .line 27
    if-eq v0, v4, :cond_d

    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    if-eq v0, v4, :cond_8

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onViewEdit()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 50
    .line 51
    sub-float/2addr v0, v4

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    cmpl-float v0, v0, v3

    .line 57
    .line 58
    if-gtz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 65
    .line 66
    sub-float/2addr v0, v4

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    cmpl-float v0, v0, v3

    .line 72
    .line 73
    if-lez v0, :cond_3

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 76
    .line 77
    invoke-interface {v0, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onBtnMoveEvent(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 81
    .line 82
    if-eqz v0, :cond_12

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isMouse:Z

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 89
    .line 90
    if-eqz v0, :cond_12

    .line 91
    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ge v0, v3, :cond_12

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 104
    .line 105
    if-ne v3, v4, :cond_7

    .line 106
    .line 107
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 116
    .line 117
    sub-float/2addr v1, v3

    .line 118
    float-to-int v1, v1

    .line 119
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 126
    .line 127
    sub-float/2addr v1, v3

    .line 128
    float-to-int v1, v1

    .line 129
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 147
    .line 148
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 149
    .line 150
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 151
    .line 152
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 153
    .line 154
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->updateAlignLinesView(IIII)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 160
    .line 161
    iput-boolean v2, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 165
    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    float-to-int v1, v1

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    float-to-int p1, p1

    .line 178
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 179
    .line 180
    const/4 v4, 0x2

    .line 181
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastX:I

    .line 188
    .line 189
    sub-int v6, v1, v0

    .line 190
    .line 191
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastY:I

    .line 192
    .line 193
    sub-int v7, p1, v0

    .line 194
    .line 195
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 196
    .line 197
    invoke-interface/range {v3 .. v8}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onMouseTouchEvent(IIIII)V

    .line 198
    .line 199
    .line 200
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastX:I

    .line 201
    .line 202
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastY:I

    .line 203
    .line 204
    :cond_6
    :goto_1
    return v2

    .line 205
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 209
    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v5, "mUpBitmapRef width = "

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v5, ", height = "

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 239
    .line 240
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 259
    .line 260
    iput-boolean v1, v0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 261
    .line 262
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 263
    .line 264
    if-eqz v0, :cond_12

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 275
    .line 276
    if-ne v0, v4, :cond_12

    .line 277
    .line 278
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 297
    .line 298
    if-eqz v4, :cond_b

    .line 299
    .line 300
    sget-boolean v5, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 301
    .line 302
    if-nez v5, :cond_a

    .line 303
    .line 304
    iget-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isMouse:Z

    .line 305
    .line 306
    if-eqz p1, :cond_9

    .line 307
    .line 308
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastX:I

    .line 309
    .line 310
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastY:I

    .line 311
    .line 312
    const/4 v5, 0x1

    .line 313
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    const/4 v7, 0x0

    .line 320
    const/4 v8, 0x0

    .line 321
    iget v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 322
    .line 323
    invoke-interface/range {v4 .. v9}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onMouseTouchEvent(IIIII)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 328
    .line 329
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 334
    .line 335
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    invoke-interface {v4, v2, p1, v0, v1}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onBtnTouchEvent(ILjava/util/List;II)V

    .line 342
    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 346
    .line 347
    .line 348
    move-result-wide v4

    .line 349
    iget-wide v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 350
    .line 351
    sub-long/2addr v4, v6

    .line 352
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->INTERVAL:I

    .line 353
    .line 354
    int-to-long v6, v1

    .line 355
    cmp-long v1, v4, v6

    .line 356
    .line 357
    if-gez v1, :cond_b

    .line 358
    .line 359
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 360
    .line 361
    sub-float/2addr v0, v1

    .line 362
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    cmpg-float v0, v0, v3

    .line 367
    .line 368
    if-gez v0, :cond_b

    .line 369
    .line 370
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 371
    .line 372
    sub-float/2addr p1, v0

    .line 373
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    cmpg-float p1, p1, v3

    .line 378
    .line 379
    if-gez p1, :cond_b

    .line 380
    .line 381
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 382
    .line 383
    invoke-interface {p1, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 384
    .line 385
    .line 386
    :cond_b
    :goto_2
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 387
    .line 388
    if-eqz p1, :cond_c

    .line 389
    .line 390
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 394
    .line 395
    .line 396
    :cond_c
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 401
    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->removePointID(Ljava/lang/Integer;)V

    .line 407
    .line 408
    .line 409
    const/4 p1, -0x1

    .line 410
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 411
    .line 412
    return v2

    .line 413
    :cond_d
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 414
    .line 415
    if-nez v0, :cond_12

    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    invoke-virtual {p0, v0, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPointInView(FF)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_12

    .line 438
    .line 439
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ableVibrator:Z

    .line 440
    .line 441
    if-eqz v0, :cond_e

    .line 442
    .line 443
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 444
    .line 445
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->vibrator(Landroid/content/Context;)V

    .line 446
    .line 447
    .line 448
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 449
    .line 450
    .line 451
    move-result-wide v3

    .line 452
    iput-wide v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 453
    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 463
    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 473
    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 483
    .line 484
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 485
    .line 486
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 491
    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->addPointID(Ljava/lang/Integer;)V

    .line 497
    .line 498
    .line 499
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 500
    .line 501
    if-eqz v0, :cond_f

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 512
    .line 513
    int-to-float v1, v1

    .line 514
    sub-float/2addr v0, v1

    .line 515
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 516
    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 526
    .line 527
    int-to-float v1, v1

    .line 528
    sub-float/2addr v0, v1

    .line 529
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 530
    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 540
    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 546
    .line 547
    .line 548
    move-result p1

    .line 549
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 550
    .line 551
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 552
    .line 553
    iput-boolean v2, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 554
    .line 555
    goto :goto_3

    .line 556
    :cond_f
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 557
    .line 558
    if-eqz v0, :cond_11

    .line 559
    .line 560
    iget-boolean v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->isMouse:Z

    .line 561
    .line 562
    if-eqz v3, :cond_10

    .line 563
    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    float-to-int v0, v0

    .line 573
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastX:I

    .line 574
    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    float-to-int p1, p1

    .line 584
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;->mouseLastY:I

    .line 585
    .line 586
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 587
    .line 588
    const/4 v4, 0x0

    .line 589
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 590
    .line 591
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    const/4 v6, 0x0

    .line 596
    const/4 v7, 0x0

    .line 597
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 598
    .line 599
    invoke-interface/range {v3 .. v8}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onMouseTouchEvent(IIIII)V

    .line 600
    .line 601
    .line 602
    goto :goto_3

    .line 603
    :cond_10
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 604
    .line 605
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 610
    .line 611
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 612
    .line 613
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    invoke-interface {v0, v1, p1, v3, v4}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onBtnTouchEvent(ILjava/util/List;II)V

    .line 618
    .line 619
    .line 620
    :cond_11
    :goto_3
    return v2

    .line 621
    :cond_12
    :goto_4
    return v1
.end method
