.class public abstract Lcom/kwad/sdk/core/network/d;
.super Lcom/kwad/sdk/core/network/b;
.source "SourceFile"


# static fields
.field public static final TRACK_ID_KEY:Ljava/lang/String; = "kuaishou-tracing-token"

.field public static hadCreateInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/network/d;-><init>(ILcom/kwad/sdk/internal/api/SceneImpl;)V

    return-void
.end method

.method public constructor <init>(ILcom/kwad/sdk/internal/api/SceneImpl;)V
    .locals 1
    .param p2    # Lcom/kwad/sdk/internal/api/SceneImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/b;-><init>()V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/kwad/sdk/core/network/d;->hadCreateInstance:Z

    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->needAppendKuaHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/d;->appendKUAHeader()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->needDeviceInfoBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->needAppList()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/c/d;->k(ZI)Lcom/kwad/sdk/core/request/model/b;

    move-result-object p1

    const-string v0, "deviceInfo"

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "statusInfo"

    .line 9
    invoke-static {p2}, Lcom/kwad/sdk/core/request/model/StatusInfo;->e(Lcom/kwad/sdk/internal/api/SceneImpl;)Lcom/kwad/sdk/core/request/model/StatusInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    :cond_2
    return-void
.end method

.method private appendKUAHeader()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/i/a;->k(ZZ)Lcom/kwad/sdk/core/i/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/kwad/sdk/service/a/f;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/f;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/i/c;->cd(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "KUA"

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method protected buildBaseBody()V
    .locals 5

    .line 1
    const-string v0, "5.4.10.1"

    .line 2
    .line 3
    const-class v1, Lcom/kwad/sdk/service/a/f;

    .line 4
    .line 5
    :try_start_0
    const-string v2, "protocolVersion"

    .line 6
    .line 7
    const-string v3, "2.0"

    .line 8
    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "SDKVersion"

    .line 13
    .line 14
    invoke-virtual {p0, v2, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "SDKVersionCode"

    .line 18
    .line 19
    const v3, 0x4ceb69

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, v3}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v2, "sdkApiVersion"

    .line 26
    .line 27
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/kwad/sdk/service/a/f;

    .line 32
    .line 33
    invoke-interface {v3}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "sdkApiVersionCode"

    .line 41
    .line 42
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/kwad/sdk/service/a/f;

    .line 47
    .line 48
    invoke-interface {v3}, Lcom/kwad/sdk/service/a/f;->getApiVersionCode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0, v2, v3}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string v2, "sdkType"

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string v2, "appInfo"

    .line 62
    .line 63
    invoke-static {}, Lcom/kwad/sdk/core/request/model/a;->Np()Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "tkVersion"

    .line 71
    .line 72
    const-string v4, "6.2.3"

    .line 73
    .line 74
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "adSdkVersion"

    .line 78
    .line 79
    invoke-virtual {p0, v2, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "networkInfo"

    .line 83
    .line 84
    invoke-static {}, Lcom/kwad/sdk/core/request/model/d;->Nt()Lcom/kwad/sdk/core/request/model/d;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "liveSupportMode"

    .line 92
    .line 93
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/kwad/sdk/service/a/f;

    .line 98
    .line 99
    invoke-interface {v2}, Lcom/kwad/sdk/service/a/f;->tu()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const/4 v4, 0x0

    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const-string v0, "waynePlayerSupportMode"

    .line 113
    .line 114
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/kwad/sdk/service/a/f;

    .line 119
    .line 120
    invoke-interface {v2}, Lcom/kwad/sdk/service/a/f;->tt()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 129
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const-string v0, "closureSupportMode"

    .line 133
    .line 134
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 139
    .line 140
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/f;->tr()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    const/4 v3, 0x0

    .line 148
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    const-string v0, "userInfo"

    .line 152
    .line 153
    invoke-static {}, Lcom/kwad/sdk/core/request/model/g;->Nw()Lcom/kwad/sdk/core/request/model/g;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "requestSessionData"

    .line 161
    .line 162
    invoke-static {}, Lcom/kwad/sdk/core/network/q;->Mj()Lcom/kwad/sdk/core/network/q;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/b;->getUrl()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/network/q;->eL(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "timestamp"

    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    invoke-virtual {p0, v0, v1, v2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->enablePrivateInfoObtain()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->buildBaseBodyWithPrivateInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/network/b;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    :goto_3
    const-string v0, "mediumDisableSensor"

    .line 201
    .line 202
    invoke-static {}, Lcom/kwad/sdk/utils/be;->useSensorManagerDisable()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Z)V

    .line 207
    .line 208
    .line 209
    const-string v0, "kwaiMerchantSdkVersion"

    .line 210
    .line 211
    const-string v1, "1.1.0"

    .line 212
    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method protected buildBaseBodyWithPrivateInfo()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "geoInfo"

    .line 2
    .line 3
    invoke-static {}, Lcom/kwad/sdk/core/request/model/c;->Ns()Lcom/kwad/sdk/core/request/model/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "kGeoInfo"

    .line 11
    .line 12
    const-class v1, Lcom/kwad/sdk/service/a/f;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/f;->Fz()Lcom/kwad/sdk/core/b;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "ext"

    .line 28
    .line 29
    invoke-static {}, Lcom/kwad/sdk/core/request/model/e;->Nv()Lcom/kwad/sdk/core/request/model/e;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/network/b;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected buildBaseHeader()V
    .locals 3

    .line 1
    sget-object v0, Lcom/kwad/framework/b/a;->pe:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v0, Lcom/kwad/sdk/components/DevelopMangerComponents;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 12
    .line 13
    .line 14
    const-string v1, "trace-context"

    .line 15
    .line 16
    const-string v2, "{\"laneId\":\"STAGING.online.u\"}"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/core/network/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method protected enablePrivateInfoObtain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected needAppList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needAppendKuaHeader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected needDeviceInfoBody()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
