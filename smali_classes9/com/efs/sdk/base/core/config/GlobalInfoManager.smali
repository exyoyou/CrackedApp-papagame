.class public Lcom/efs/sdk/base/core/config/GlobalInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/config/GlobalInfoManager$a;
    }
.end annotation


# instance fields
.field private a:Lcom/efs/sdk/base/core/config/GlobalInfo;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "com.umeng.commonsdk.statistics.common.DeviceConfig"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    nop

    .line 13
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    :try_start_1
    const-string v4, "getSid"

    .line 19
    .line 20
    new-array v5, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    const-class v6, Landroid/content/Context;

    .line 23
    .line 24
    aput-object v6, v5, v2

    .line 25
    .line 26
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    nop

    .line 32
    move-object v1, v0

    .line 33
    :goto_1
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p0, v3, v2

    .line 38
    .line 39
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    move-object v0, p0

    .line 50
    :catch_2
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/efs/sdk/base/core/config/GlobalInfoManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/config/GlobalInfoManager$a;->a()Lcom/efs/sdk/base/core/config/GlobalInfoManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getGlobalInfo()Lcom/efs/sdk/base/core/config/GlobalInfo;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 14
    .line 15
    const-string v2, "um_session_id"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "refreshSessionId caused error: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "efs.info.manager"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/efs/sdk/base/core/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 46
    .line 47
    return-object v0
.end method

.method public getNetStatus()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 2
    .line 3
    const-string v1, "net"

    .line 4
    .line 5
    const-string v2, "disconnected"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public initGlobalInfo()V
    .locals 6

    .line 1
    const-string v0, "2G/3G"

    .line 2
    .line 3
    const-string v1, "ballack"

    .line 4
    .line 5
    const-string v2, "initGlobalInfo called once."

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/efs/sdk/base/core/config/GlobalInfo;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 16
    .line 17
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getAppid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "appid"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/efs/sdk/base/core/util/ProcessUtil;->myPid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 35
    .line 36
    const-string v3, "pid"

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 46
    .line 47
    const-string v3, "ps"

    .line 48
    .line 49
    invoke-static {v1}, Lcom/efs/sdk/base/core/util/ProcessUtil;->getProcessName(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v3, v1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/efs/sdk/base/core/util/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 63
    .line 64
    const-string v3, "wid"

    .line 65
    .line 66
    invoke-virtual {v2, v3, v1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const-string v3, "uid"

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 86
    .line 87
    invoke-virtual {v2, v3, v1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 92
    .line 93
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getUid()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 105
    .line 106
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    sub-long/2addr v2, v4

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "stime"

    .line 123
    .line 124
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/PackageUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v3, "pkg"

    .line 136
    .line 137
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/PackageUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v3, "ver"

    .line 149
    .line 150
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 156
    .line 157
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/PackageUtil;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v3, "vcode"

    .line 162
    .line 163
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 167
    .line 168
    const-string v2, "sdk_ver"

    .line 169
    .line 170
    const-string v3, "1.3.18.umeng"

    .line 171
    .line 172
    invoke-virtual {v1, v2, v3}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 176
    .line 177
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const-string v3, "brand"

    .line 184
    .line 185
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 189
    .line 190
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 191
    .line 192
    if-nez v2, :cond_1

    .line 193
    .line 194
    const-string v3, "unknown"

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_1
    const-string v3, " "

    .line 198
    .line 199
    const-string v4, "-"

    .line 200
    .line 201
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const-string v5, "_"

    .line 206
    .line 207
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_1
    const-string v4, "model"

    .line 216
    .line 217
    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 221
    .line 222
    const-string v3, "build_model"

    .line 223
    .line 224
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 238
    .line 239
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 240
    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const-string v4, "dsp_w"

    .line 246
    .line 247
    invoke-virtual {v2, v4, v3}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 251
    .line 252
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 253
    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v3, "dsp_h"

    .line 259
    .line 260
    invoke-virtual {v2, v3, v1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 264
    .line 265
    const-string v2, "fr"

    .line 266
    .line 267
    const-string v3, "android"

    .line 268
    .line 269
    invoke-virtual {v1, v2, v3}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 273
    .line 274
    const-string v2, "rom"

    .line 275
    .line 276
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v1, v2, v3}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 282
    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 284
    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    const-string v3, "sdk"

    .line 290
    .line 291
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 295
    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    const-string v3, "lang"

    .line 305
    .line 306
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 310
    .line 311
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const-string v3, "tzone"

    .line 320
    .line 321
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 325
    .line 326
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 327
    .line 328
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    const-string v3, "net"

    .line 333
    .line 334
    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 338
    .line 339
    invoke-static {v1}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v2, "Wi-Fi"

    .line 344
    .line 345
    const/4 v3, 0x0

    .line 346
    aget-object v4, v1, v3

    .line 347
    .line 348
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    const-string v4, "um_access"

    .line 353
    .line 354
    if-eqz v2, :cond_2

    .line 355
    .line 356
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 357
    .line 358
    const-string v2, "wifi"

    .line 359
    .line 360
    invoke-virtual {v0, v4, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_2
    aget-object v2, v1, v3

    .line 365
    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_3

    .line 371
    .line 372
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 373
    .line 374
    invoke-virtual {v2, v4, v0}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto :goto_2

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 379
    .line 380
    const-string v2, "unknow"

    .line 381
    .line 382
    invoke-virtual {v0, v4, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :goto_2
    const-string v0, ""

    .line 386
    .line 387
    const/4 v2, 0x1

    .line 388
    aget-object v3, v1, v2

    .line 389
    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_4

    .line 395
    .line 396
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 397
    .line 398
    const-string v3, "um_access_subtype"

    .line 399
    .line 400
    aget-object v1, v1, v2

    .line 401
    .line 402
    invoke-virtual {v0, v3, v1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    :cond_4
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 406
    .line 407
    const-string v1, "um_network_type"

    .line 408
    .line 409
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->b:Landroid/content/Context;

    .line 410
    .line 411
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkTypeUmeng(Landroid/content/Context;)I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v0, v1, v2}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :catchall_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    return-void
.end method

.method public refreshNetStatus()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "network change: "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "efs.info.manager"

    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/efs/sdk/base/core/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->a:Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 27
    .line 28
    const-string v2, "net"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
