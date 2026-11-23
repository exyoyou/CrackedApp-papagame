.class public Lcom/haima/hmcp/utils/ConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCutOutsHeightPercent(Landroid/app/Activity;)[F
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-static {v1}, Ll0/c;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "getCutOutsHeightPercent cannot get WindowInsets"

    .line 30
    .line 31
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    invoke-static {v1}, Landroidx/core/view/x1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "getCutOutsHeightPercent cannot get DisplayCutout"

    .line 44
    .line 45
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_3
    invoke-static {v1}, Lcom/haima/hmcp/utils/d;->a(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_8

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/graphics/Rect;

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    if-ge v3, p0, :cond_6

    .line 84
    .line 85
    if-ne v2, v6, :cond_5

    .line 86
    .line 87
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    sub-int/2addr v1, v2

    .line 92
    int-to-float v1, v1

    .line 93
    int-to-float p0, p0

    .line 94
    div-float/2addr v1, p0

    .line 95
    aput v1, v0, v4

    .line 96
    .line 97
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "getCutOutsHeightPercent first cutout in portrait rectRange :"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/graphics/Rect;

    .line 130
    .line 131
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 132
    .line 133
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    sub-int/2addr v2, v3

    .line 136
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 137
    .line 138
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 139
    .line 140
    sub-int/2addr v3, v5

    .line 141
    int-to-float v2, v2

    .line 142
    int-to-float p0, p0

    .line 143
    div-float/2addr v2, p0

    .line 144
    aput v2, v0, v4

    .line 145
    .line 146
    int-to-float v2, v3

    .line 147
    div-float/2addr v2, p0

    .line 148
    aput v2, v0, v6

    .line 149
    .line 150
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v3, "getCutOutsHeightPercent second cutout in portrait rectRange :"

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    if-ne v2, v6, :cond_7

    .line 178
    .line 179
    iget p0, v5, Landroid/graphics/Rect;->right:I

    .line 180
    .line 181
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 182
    .line 183
    sub-int/2addr p0, v1

    .line 184
    int-to-float p0, p0

    .line 185
    int-to-float v1, v3

    .line 186
    div-float/2addr p0, v1

    .line 187
    aput p0, v0, v4

    .line 188
    .line 189
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, "getCutOutsHeightPercent first cutout in landscape rectRange :"

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    check-cast p0, Landroid/graphics/Rect;

    .line 221
    .line 222
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 223
    .line 224
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 225
    .line 226
    sub-int/2addr v1, v2

    .line 227
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 228
    .line 229
    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 230
    .line 231
    sub-int/2addr v2, v5

    .line 232
    int-to-float v1, v1

    .line 233
    int-to-float v3, v3

    .line 234
    div-float/2addr v1, v3

    .line 235
    aput v1, v0, v4

    .line 236
    .line 237
    int-to-float v1, v2

    .line 238
    div-float/2addr v1, v3

    .line 239
    aput v1, v0, v6

    .line 240
    .line 241
    sget-object v1, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 242
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v3, "getCutOutsHeightPercent second cutout in landscape rectRange :"

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-static {v1, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :goto_0
    return-object v0

    .line 268
    :cond_8
    :goto_1
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 269
    .line 270
    const-string v1, "getCutOutsHeightPercent cannot get cutOutAreas"

    .line 271
    .line 272
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    nop

    .line 277
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static getDPI(Landroid/content/Context;)I
    .locals 7

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    const-string v2, "android.view.Display"

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "getRealMetrics"

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    new-array v5, v4, [Ljava/lang/Class;

    .line 29
    .line 30
    const-class v6, Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    aput-object v6, v5, v1

    .line 33
    .line 34
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-array v3, v4, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v0, v3, v1

    .line 41
    .line 42
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    return p0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    return v1
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/haima/hmcp/beans/DeviceInfo;
    .locals 5

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Lcom/haima/hmcp/beans/DeviceInfo;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/haima/hmcp/beans/DeviceInfo;-><init>()V

    .line 10
    .line 11
    .line 12
    sget v4, Lcom/haima/hmcp/Constants;->ANDROID_TYPE:I

    .line 13
    .line 14
    iput v4, v3, Lcom/haima/hmcp/beans/DeviceInfo;->osType:I

    .line 15
    .line 16
    iput-object v2, v3, Lcom/haima/hmcp/beans/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v3, Lcom/haima/hmcp/beans/DeviceInfo;->brand:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, v3, Lcom/haima/hmcp/beans/DeviceInfo;->model:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, v3, Lcom/haima/hmcp/beans/DeviceInfo;->language:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "0"

    .line 39
    .line 40
    iput-object v0, v3, Lcom/haima/hmcp/beans/DeviceInfo;->isWifi:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "Android"

    .line 43
    .line 44
    iput-object v0, v3, Lcom/haima/hmcp/beans/DeviceInfo;->osName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0, v3}, Lcom/haima/hmcp/utils/ConfigUtil;->getNetworkName(Landroid/content/Context;Lcom/haima/hmcp/beans/DeviceInfo;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/haima/hmcp/beans/AndroidInfo;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/haima/hmcp/beans/AndroidInfo;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, v3, Lcom/haima/hmcp/beans/DeviceInfo;->androidInfo:Lcom/haima/hmcp/beans/AndroidInfo;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenInfo(Landroid/content/Context;)Lcom/haima/hmcp/beans/ScreenInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iput-object p0, v3, Lcom/haima/hmcp/beans/DeviceInfo;->screenInfo:Lcom/haima/hmcp/beans/ScreenInfo;

    .line 61
    .line 62
    return-object v3
.end method

.method private static getNetworkName(Landroid/content/Context;Lcom/haima/hmcp/beans/DeviceInfo;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    const-string p0, "WIFI"

    .line 39
    .line 40
    iput-object p0, p1, Lcom/haima/hmcp/beans/DeviceInfo;->networkType:Ljava/lang/String;

    .line 41
    .line 42
    const-string p0, "1"

    .line 43
    .line 44
    iput-object p0, p1, Lcom/haima/hmcp/beans/DeviceInfo;->isWifi:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    if-nez v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {p0, v3}, Lcom/haima/hmcp/utils/NetworkUtil;->getMobileNetworkTypeName(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0, v1, v3}, Lcom/haima/hmcp/utils/NetworkUtil;->getNetworkMobileName(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    move v6, v0

    .line 85
    move-object v0, p0

    .line 86
    move p0, v6

    .line 87
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v5, "telephonyManager is null:"

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v2, 0x0

    .line 101
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ",subType:"

    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p0, ",subTypeName:"

    .line 113
    .line 114
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p0, ",networkTypeName:"

    .line 121
    .line 122
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p1, Lcom/haima/hmcp/beans/DeviceInfo;->networkType:Ljava/lang/String;

    .line 136
    .line 137
    :cond_3
    :goto_2
    iget-object p0, p1, Lcom/haima/hmcp/beans/DeviceInfo;->networkType:Ljava/lang/String;

    .line 138
    .line 139
    sput-object p0, Lcom/haima/hmcp/countly/CountlyUtil;->mNetStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-void
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 7
    .line 8
    .line 9
    iget p0, v0, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    return p0
.end method

.method private static getScreenInfo(Landroid/content/Context;)Lcom/haima/hmcp/beans/ScreenInfo;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConfigUtil;->getDPI(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/graphics/Point;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Lcom/haima/hmcp/beans/ScreenInfo;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ScreenInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/beans/ScreenInfo;->dpi:Ljava/lang/String;

    .line 36
    .line 37
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    const-string v3, "x"

    .line 42
    .line 43
    if-le v0, v2, :cond_0

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/haima/hmcp/beans/ScreenInfo;->resolution:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/haima/hmcp/beans/ScreenInfo;->resolution:Ljava/lang/String;

    .line 93
    .line 94
    :goto_0
    return-object p0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 7

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    const-string v1, "android.view.Display"

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "getRealMetrics"

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    new-array v4, v3, [Ljava/lang/Class;

    .line 28
    .line 29
    const-class v5, Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    aput-object v5, v4, v6

    .line 33
    .line 34
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-array v2, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v0, v2, v6

    .line 41
    .line 42
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    .line 47
    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 50
    .line 51
    iput p0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 7
    .line 8
    .line 9
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    return p0
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2

    .line 1
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "phone"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "READ_PHONE_STATE permission granted"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "READ_PHONE_STATE permission is not granted"

    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "master-7.28.1-a83e5ae0"

    return-object v0
.end method

.method public static isAllowedPlay(I)Z
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/Constants;->MINIMUM_BITRATE:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/haima/hmcp/Constants;->MINIMUM_BITRATE:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sget-object v2, Lcom/haima/hmcp/utils/ConfigUtil;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "isAllowedPlay min = "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, " speed = "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    if-lt v0, p0, :cond_1

    .line 49
    .line 50
    return v1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "ConfigUtil::isAllowedPlay::"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_1
    const/4 p0, 0x1

    .line 80
    return p0
.end method

.method public static updateNetInfo(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/DeviceInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/DeviceInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/ConfigUtil;->getNetworkName(Landroid/content/Context;Lcom/haima/hmcp/beans/DeviceInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
