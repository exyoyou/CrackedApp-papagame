.class public Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Lcom/kwai/monitor/log/OAIDListener;

.field public static volatile c:Z

.field public static d:Z


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lhc/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lec/c;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lhc/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "ks_oaid"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lec/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lhc/a;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lec/c;->m(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lhc/a;->a:Ljava/lang/String;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p0}, Lhc/a;->e(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lhc/a;->a:Ljava/lang/String;

    .line 33
    .line 34
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const-string v3, "get"

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput-object v0, v5, v6

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    aput-object v0, v5, v7

    .line 23
    .line 24
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-array v3, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p0, v3, v6

    .line 31
    .line 32
    const-string p0, "unknown"

    .line 33
    .line 34
    aput-object p0, v3, v7

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    move-object v1, p0

    .line 43
    :catch_0
    return-object v1
.end method

.method public static synthetic c()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lhc/a;->b:Lcom/kwai/monitor/log/OAIDListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lhc/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/kwai/monitor/log/OAIDListener;->OnOAIDValid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic d(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lhc/a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 8

    .line 1
    sget-object v0, Lhc/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lec/c;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget-object v0, Lhc/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    sget-boolean v0, Lhc/a;->d:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget-boolean v0, Lhc/a;->c:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    sput-boolean v1, Lhc/a;->c:Z

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Thread;

    .line 35
    .line 36
    new-instance v2, Lhc/b;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lhc/b;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_0
    invoke-static {}, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v2, "--result="

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    new-instance v0, Lhc/a$a;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lhc/a$a;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    sget-boolean v4, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->b:Z

    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_5
    invoke-static {}, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_6

    .line 72
    .line 73
    sput-boolean v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->b:Z

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_6
    sget-boolean v4, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a:Z

    .line 78
    .line 79
    if-eqz v4, :cond_7

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_7
    sput-boolean v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a:Z

    .line 84
    .line 85
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v6, Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;

    .line 94
    .line 95
    invoke-direct {v6, v4, v5, v0}, Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;-><init>(JLcom/kwai/monitor/oaid/OADIDSDKHelper$a;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v1, v6}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    sub-long/2addr v6, v4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v4, "OADIDSDKHelper:sdk init time="

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    sput-boolean v3, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a:Z

    .line 128
    .line 129
    sput-boolean v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->b:Z

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_8
    invoke-static {}, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->a()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_c

    .line 137
    .line 138
    new-instance v0, Lhc/a$b;

    .line 139
    .line 140
    invoke-direct {v0, p0}, Lhc/a$b;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    sget-boolean v4, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->b:Z

    .line 144
    .line 145
    if-eqz v4, :cond_9

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    invoke-static {}, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->a()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_a

    .line 153
    .line 154
    sput-boolean v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->b:Z

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_a
    sget-boolean v4, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->a:Z

    .line 158
    .line 159
    if-eqz v4, :cond_b

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_b
    sput-boolean v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->a:Z

    .line 163
    .line 164
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-instance v6, Lcom/kwai/monitor/oaid/OADIDSDKHelper25$IIdentifierListener25;

    .line 173
    .line 174
    invoke-direct {v6, v4, v5, v0}, Lcom/kwai/monitor/oaid/OADIDSDKHelper25$IIdentifierListener25;-><init>(JLcom/kwai/monitor/oaid/OADIDSDKHelper25$a;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p0, v1, v6}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v6

    .line 185
    sub-long/2addr v6, v4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v4, "OADIDSDKHelper25:sdk init time="

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :catchall_1
    sput-boolean v3, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->a:Z

    .line 207
    .line 208
    sput-boolean v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->b:Z

    .line 209
    .line 210
    :cond_c
    :goto_1
    return-void
.end method

.method public static synthetic f()Z
    .locals 2

    .line 1
    const-string v0, "ro.build.freeme.label"

    .line 2
    .line 3
    invoke-static {v0}, Lhc/a;->b(Ljava/lang/String;)Ljava/lang/String;

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
    const-string v1, "FREEMEOS"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static synthetic g(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lhc/a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h()Z
    .locals 2

    .line 1
    const-string v0, "ro.ssui.product"

    .line 2
    .line 3
    invoke-static {v0}, Lhc/a;->b(Ljava/lang/String;)Ljava/lang/String;

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
    const-string v1, "unknown"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method
