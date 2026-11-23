.class public Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;
.super Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
.source "SourceFile"


# instance fields
.field private isChecked:Z

.field private isNeedDrawText:Z

.field private mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private resIds:[I

.field private sensitivity:F


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 5
    .line 6
    invoke-direct {p2}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    new-instance p2, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 12
    .line 13
    invoke-direct {p2}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 17
    .line 18
    const/high16 p2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->sensitivity:F

    .line 21
    .line 22
    iget-boolean p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getSensitivity()Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v0, "HmVirtualCheckBox init sens  = "

    .line 44
    .line 45
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-static {p3, p4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    const/4 p4, 0x0

    .line 65
    cmpl-float p3, p3, p4

    .line 66
    .line 67
    if-ltz p3, :cond_1

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->sensitivity:F

    .line 74
    .line 75
    :cond_1
    iget-boolean p1, p1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->setChecked(Z)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->initBitmap()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private getCheckBoxBgID()[I
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$mipmap;->hm_vir_checkbox_checked:I

    .line 2
    .line 3
    sget v1, Lcom/haima/hmcp/R$mipmap;->hm_vir_checkbox_unchecked:I

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private initBitmap()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->getCheckBoxBgID()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->resIds:[I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isNeedDrawText:Z

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->initCheckBoxBitmap()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private initCheckBoxBitmap()V
    .locals 12

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
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    move-object v2, v0

    .line 31
    move-object v3, v2

    .line 32
    move-object v4, v3

    .line 33
    :goto_0
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v7, 0x0

    .line 43
    cmpl-float v5, v5, v7

    .line 44
    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v8, "scale is 0, bitmap width = "

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v8, ", height = "

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-static {v5, v7}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    const/4 v7, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 81
    .line 82
    iget v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 83
    .line 84
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_2

    .line 89
    .line 90
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v8, v3, v5, v7}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    move-object v8, v1

    .line 100
    :goto_2
    if-eqz v8, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 103
    .line 104
    invoke-virtual {v0, v8}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v9, "initCheckBoxBitmap: use cached network bitmap for CHECKED state, url="

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 131
    .line 132
    iget-object v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 133
    .line 134
    iget-object v10, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->resIds:[I

    .line 135
    .line 136
    const/4 v11, 0x0

    .line 137
    aget v10, v10, v11

    .line 138
    .line 139
    invoke-static {v9, v0, v10, v5, v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 153
    .line 154
    invoke-virtual {p0, v3, v5, v7, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v4, v5, v7}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :cond_5
    if-eqz v1, :cond_6

    .line 172
    .line 173
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "initCheckBoxBitmap: use cached network bitmap for UNCHECKED state, url="

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 204
    .line 205
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->resIds:[I

    .line 206
    .line 207
    aget v3, v3, v6

    .line 208
    .line 209
    invoke-static {v1, v2, v3, v5, v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_7

    .line 221
    .line 222
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 223
    .line 224
    invoke-virtual {p0, v4, v5, v7, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public changeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->initBitmap()V

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
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->initCheckBoxBitmap()V

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

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
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v2

    .line 46
    :goto_0
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawBitmapAnim(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    move-object v0, v2

    .line 58
    :goto_1
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 62
    .line 63
    int-to-float v4, v4

    .line 64
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->drawAlignLines(Landroid/graphics/Canvas;)V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 76
    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    move-object v0, v2

    .line 81
    :goto_3
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 82
    .line 83
    int-to-float v2, v2

    .line 84
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 85
    .line 86
    int-to-float v4, v4

    .line 87
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    :goto_4
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getHideText()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    :cond_7
    if-nez v1, :cond_b

    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isNeedDrawText:Z

    .line 106
    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-float/2addr v0, v1

    .line 122
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/high16 v1, 0x40000000    # 2.0f

    .line 127
    .line 128
    div-float/2addr v0, v1

    .line 129
    float-to-int v0, v0

    .line 130
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 131
    .line 132
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 133
    .line 134
    div-int/lit8 v4, v4, 0x2

    .line 135
    .line 136
    add-int/2addr v2, v4

    .line 137
    add-int/2addr v2, v0

    .line 138
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 143
    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->textShowRawOffsetY:I

    .line 147
    .line 148
    sub-int/2addr v2, v0

    .line 149
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 150
    .line 151
    const/high16 v4, 0x41000000    # 8.0f

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 160
    .line 161
    if-nez v0, :cond_8

    .line 162
    .line 163
    iget-object v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rawName:Ljava/lang/String;

    .line 164
    .line 165
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 166
    .line 167
    int-to-float v0, v0

    .line 168
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 169
    .line 170
    int-to-float v5, v5

    .line 171
    div-float/2addr v5, v1

    .line 172
    add-float v8, v0, v5

    .line 173
    .line 174
    int-to-float v0, v2

    .line 175
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    div-float/2addr v5, v1

    .line 182
    add-float/2addr v0, v5

    .line 183
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 184
    .line 185
    int-to-float v5, v5

    .line 186
    div-float/2addr v5, v4

    .line 187
    add-float v9, v0, v5

    .line 188
    .line 189
    iget-object v10, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 190
    .line 191
    const/4 v11, 0x1

    .line 192
    move-object v5, p0

    .line 193
    move-object v6, p1

    .line 194
    invoke-virtual/range {v5 .. v11}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rawName:Ljava/lang/String;

    .line 199
    .line 200
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 201
    .line 202
    int-to-float v5, v5

    .line 203
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 204
    .line 205
    int-to-float v6, v6

    .line 206
    div-float/2addr v6, v1

    .line 207
    add-float/2addr v5, v6

    .line 208
    int-to-float v6, v2

    .line 209
    iget-object v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 210
    .line 211
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    div-float/2addr v7, v1

    .line 216
    add-float/2addr v6, v7

    .line 217
    iget v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 218
    .line 219
    int-to-float v7, v7

    .line 220
    div-float/2addr v7, v4

    .line 221
    add-float/2addr v6, v7

    .line 222
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 223
    .line 224
    invoke-virtual {p1, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_5
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 228
    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 232
    .line 233
    if-eqz v0, :cond_a

    .line 234
    .line 235
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 236
    .line 237
    if-nez v0, :cond_a

    .line 238
    .line 239
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 240
    .line 241
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 242
    .line 243
    int-to-float v0, v0

    .line 244
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 245
    .line 246
    int-to-float v4, v4

    .line 247
    div-float/2addr v4, v1

    .line 248
    add-float v7, v0, v4

    .line 249
    .line 250
    int-to-float v8, v2

    .line 251
    iget-object v9, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 252
    .line 253
    const/4 v10, 0x0

    .line 254
    move-object v4, p0

    .line 255
    move-object v5, p1

    .line 256
    invoke-virtual/range {v4 .. v10}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 261
    .line 262
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 263
    .line 264
    int-to-float v4, v4

    .line 265
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 266
    .line 267
    int-to-float v5, v5

    .line 268
    div-float/2addr v5, v1

    .line 269
    add-float/2addr v4, v5

    .line 270
    int-to-float v1, v2

    .line 271
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 272
    .line 273
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :catch_0
    move-exception p1

    .line 278
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string v2, "drawCheckBoxError : "

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_b
    :goto_6
    return v3

    .line 305
    :cond_c
    :goto_7
    return v1
.end method

.method protected getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mCheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->mUncheckedBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

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

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyBaseScale()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->notifyBaseScale()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->initCheckBoxBitmap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

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
    if-eqz v0, :cond_9

    .line 15
    .line 16
    const/high16 v3, 0x41200000    # 10.0f

    .line 17
    .line 18
    if-eq v0, v2, :cond_5

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v0, v4, :cond_5

    .line 25
    .line 26
    const/4 v4, 0x5

    .line 27
    if-eq v0, v4, :cond_9

    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    if-eq v0, v4, :cond_5

    .line 31
    .line 32
    goto/16 :goto_2

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
    if-eqz v0, :cond_c

    .line 83
    .line 84
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 85
    .line 86
    if-eqz v0, :cond_c

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-ge v0, v3, :cond_c

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 100
    .line 101
    if-ne v3, v4, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 108
    .line 109
    sub-float/2addr v1, v3

    .line 110
    float-to-int v1, v1

    .line 111
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 118
    .line 119
    sub-float/2addr v1, v3

    .line 120
    float-to-int v1, v1

    .line 121
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 139
    .line 140
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 141
    .line 142
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 143
    .line 144
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 145
    .line 146
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 147
    .line 148
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->updateAlignLinesView(IIII)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 152
    .line 153
    iput-boolean v2, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 154
    .line 155
    return v2

    .line 156
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 160
    .line 161
    iput-boolean v1, v0, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 164
    .line 165
    if-eqz v0, :cond_c

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 176
    .line 177
    if-ne v0, v4, :cond_c

    .line 178
    .line 179
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 198
    .line 199
    if-eqz v1, :cond_7

    .line 200
    .line 201
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 202
    .line 203
    if-nez v1, :cond_6

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->toggle()V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v4

    .line 213
    iget-wide v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 214
    .line 215
    sub-long/2addr v4, v6

    .line 216
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->INTERVAL:I

    .line 217
    .line 218
    int-to-long v6, v1

    .line 219
    cmp-long v1, v4, v6

    .line 220
    .line 221
    if-gez v1, :cond_7

    .line 222
    .line 223
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 224
    .line 225
    sub-float/2addr v0, v1

    .line 226
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    cmpg-float v0, v0, v3

    .line 231
    .line 232
    if-gez v0, :cond_7

    .line 233
    .line 234
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 235
    .line 236
    sub-float/2addr p1, v0

    .line 237
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    cmpg-float p1, p1, v3

    .line 242
    .line 243
    if-gez p1, :cond_7

    .line 244
    .line 245
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 246
    .line 247
    invoke-interface {p1, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 248
    .line 249
    .line 250
    :cond_7
    :goto_1
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 251
    .line 252
    if-eqz p1, :cond_8

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 258
    .line 259
    .line 260
    :cond_8
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->removePointID(Ljava/lang/Integer;)V

    .line 271
    .line 272
    .line 273
    const/4 p1, -0x1

    .line 274
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 275
    .line 276
    return v2

    .line 277
    :cond_9
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 278
    .line 279
    if-nez v0, :cond_c

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    invoke-virtual {p0, v0, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPointInView(FF)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_c

    .line 302
    .line 303
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ableVibrator:Z

    .line 304
    .line 305
    if-eqz v0, :cond_a

    .line 306
    .line 307
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 308
    .line 309
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->vibrator(Landroid/content/Context;)V

    .line 310
    .line 311
    .line 312
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v0

    .line 316
    iput-wide v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downTime:J

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downX:F

    .line 327
    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->downY:F

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 347
    .line 348
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 349
    .line 350
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    .line 355
    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->addPointID(Ljava/lang/Integer;)V

    .line 361
    .line 362
    .line 363
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 364
    .line 365
    if-eqz v0, :cond_b

    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 376
    .line 377
    int-to-float v1, v1

    .line 378
    sub-float/2addr v0, v1

    .line 379
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 390
    .line 391
    int-to-float v1, v1

    .line 392
    sub-float/2addr v0, v1

    .line 393
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 414
    .line 415
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 416
    .line 417
    iput-boolean v2, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 418
    .line 419
    :cond_b
    return v2

    .line 420
    :cond_c
    :goto_2
    return v1
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->sensitivity:F

    .line 14
    .line 15
    invoke-interface {v0, p1, v1}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onCheckBoxStateChanged(ZF)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->isChecked:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;->setChecked(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
