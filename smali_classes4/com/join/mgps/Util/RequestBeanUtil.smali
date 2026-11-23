.class public Lcom/join/mgps/Util/RequestBeanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static androidId:Ljava/lang/String; = null

.field private static androidIdx:Ljava/lang/String; = null

.field private static channel_num:Ljava/lang/String; = null

.field private static end:Ljava/lang/String; = null

.field private static imei:Ljava/lang/String; = null

.field private static ip_address:Ljava/lang/String; = null

.field private static mac:Ljava/lang/String; = null

.field private static mobile_phone_model:Ljava/lang/String; = null

.field private static ourInstance:Lcom/join/mgps/Util/RequestBeanUtil; = null

.field private static targetvVersion:I = 0x0

.field private static versionAndVersionName:Ljava/lang/String; = "1_1.0"


# instance fields
.field private ad:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 5
    .line 6
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->F(Z)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/mgps/Util/RequestBeanUtil;->ad:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sput v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    .line 75
    .line 76
    sget-object v0, Lcom/MApplication;->K:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    sget-object v0, Lcom/MApplication;->K:Ljava/lang/String;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "android_id"

    .line 92
    .line 93
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_1
    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "gzRN53VWRF9BYUXomg2014"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sput-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "imei   shi "

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, "  md5String=  "

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, "   end="

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 162
    .line 163
    const-string v0, ""

    .line 164
    .line 165
    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    .line 166
    .line 167
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 181
    .line 182
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v0, "_"

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sput-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :goto_2
    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEnd()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->ourInstance:Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/Util/RequestBeanUtil;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/RequestBeanUtil;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->ourInstance:Lcom/join/mgps/Util/RequestBeanUtil;

    .line 11
    .line 12
    :cond_0
    :try_start_0
    sget-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->androidIdx:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "gzRN53VWRF9BYUXomg2014"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sput-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->ourInstance:Lcom/join/mgps/Util/RequestBeanUtil;

    .line 51
    .line 52
    return-object p0
.end method

.method public static getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getTargetvVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public static getVersionAndVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "uid",
            "token"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setVersion(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setDevice_id(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setMac(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setIp_address(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CommentRequest;->setChannel_num(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setSort(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentRequest;->setMobile_phone_model(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentRequest;->setUid(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/CommentRequest;->setToken(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imei"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setMobile_phone_model(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile_phone_model"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getAd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/RequestBeanUtil;->ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllMygameVersion([Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "strings",
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/AllAppId;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/AllAppId;-><init>([Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadGameVer"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "plugin",
            "tag_id"
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/switfpass/pay/MainApplication;->getContext()Lcom/switfpass/pay/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v5, "ver"

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v7, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v8, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v1, Lcom/join/mgps/dto/APKVersionRequestargs;

    sget v9, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    invoke-direct {v1, p1, p2, p3, v9}, Lcom/join/mgps/dto/APKVersionRequestargs;-><init>(IIII)V

    const-string p1, "chkAppVerV2"

    invoke-direct {v8, p1, v1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget v9, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;I)V

    return-object v0
.end method

.method public getApkVersion(IIII)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "plugin",
            "tag_id",
            "uid"
        }
    .end annotation

    .line 5
    :try_start_0
    sget v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/switfpass/pay/MainApplication;->getContext()Lcom/switfpass/pay/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v5, "ver"

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v7, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v8, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v1, Lcom/join/mgps/dto/APKVersionRequestargs;

    sget v13, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    move-object v9, v1

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/APKVersionRequestargs;-><init>(IIIII)V

    const-string v9, "chkAppVerV2"

    invoke-direct {v8, v9, v1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget v9, Lcom/join/mgps/Util/RequestBeanUtil;->targetvVersion:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;I)V

    return-object v0
.end method

.method public getAppDataBackRequest([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/AppDataBackupBean;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-direct {v0, p1, v8}, Lcom/join/mgps/dto/AppDataBackupBean;-><init>([Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 26
    .line 27
    .line 28
    return-object v7
.end method

.method public getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appid",
            "uid",
            "extBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "load"

    .line 15
    .line 16
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/dto/RequestAppDetialArgs;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "getGameInfo"

    .line 28
    .line 29
    invoke-direct {v6, p1, v0, p3}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v7

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    .line 34
    .line 35
    .line 36
    return-object v7
.end method

.method public getArchiveBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveBuyArgs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "gameId",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveBuyArgs;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/ArchiveBuyArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getArchiveColud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/ArchiveColudArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getArchiveEvaluate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "id",
            "commentType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveevaluateArgs;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/ArchiveevaluateArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/ArchiveColudArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getArchiveshop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ArchiveshopArgs;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "gameId",
            "sortType",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/dto/ArchiveshopArgs;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/ArchiveshopArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public getBaiduAd()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestPnArgs;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getBattlehall(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "collection_type",
            "pn",
            "pc"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestBattlehallArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestBattlehallArgs;-><init>(III)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getBootPageData(Lcom/join/mgps/dto/BootPageRequestArgs;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 20
    .line 21
    .line 22
    return-object v7
.end method

.method public getCategoryRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "getGameTypeList"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyAndroidRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadAndroidModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyFCRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadFcModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyGBARequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadGbaModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyGameBean(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "type_id"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/ClassifyGameBean;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/ClassifyGameBean;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyJGRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadArcadeModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyMdRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadMdModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifyPSPRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadPspModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getClassifySFCRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadSfcModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getCollectionRequestBean(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "collectionId",
            "pn",
            "pc",
            "game_type",
            "belong_to_tag",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestCollectionArgs;

    .line 18
    .line 19
    move-object v9, v0

    .line 20
    move-object/from16 v10, p1

    .line 21
    .line 22
    move/from16 v11, p2

    .line 23
    .line 24
    move/from16 v12, p3

    .line 25
    .line 26
    move-object/from16 v13, p4

    .line 27
    .line 28
    move-object/from16 v14, p5

    .line 29
    .line 30
    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RequestCollectionArgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v9, "getCollectionGameList"

    .line 34
    .line 35
    move-object/from16 v10, p6

    .line 36
    .line 37
    invoke-direct {v7, v9, v0, v10}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 38
    .line 39
    .line 40
    move-object v0, v8

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 42
    .line 43
    .line 44
    return-object v8
.end method

.method public getCommentDetailList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sort",
            "comment_id",
            "gameId",
            "uid",
            "pn",
            "pc",
            "mobile_phone_model",
            "user_token"
        }
    .end annotation

    .line 1
    new-instance v14, Lcom/join/mgps/dto/RequestCommentDetailArgs;

    .line 2
    .line 3
    sget-object v8, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v11, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v14

    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    move-object/from16 v2, p2

    .line 17
    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move/from16 v6, p6

    .line 25
    .line 26
    move-object/from16 v7, p7

    .line 27
    .line 28
    move-object/from16 v10, p8

    .line 29
    .line 30
    invoke-direct/range {v0 .. v13}, Lcom/join/mgps/dto/RequestCommentDetailArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v14
.end method

.method public getCommentListBean(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appid",
            "pn",
            "pc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/CommentRequestPageBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/CommentRequestPageBean;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/CommentRequestPageBean;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getCommentList"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "user_token",
            "commentId",
            "gameId",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommentPraiseRequestBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/CommentPraiseRequestBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setComment_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setGame_id(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p6}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setType(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/CommentPraiseRequestBean;->setUser_token(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public getCommentRequestData(Lcom/join/mgps/dto/CommonRequestMessage;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public getCommuityRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getCommunityBanner"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getCommuityZoneRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "area_id"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getCompanyGameListData(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "companyName"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestCompanyNameArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestCompanyNameArgs;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getCrackRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "getCrackModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "score",
            "content",
            "token",
            "mobile_phone_model",
            "position",
            "details_comment_id",
            "user_name",
            "head_portrait",
            "user_token",
            "uid",
            "pn",
            "m_p_m_status"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move/from16 v11, p11

    .line 22
    .line 23
    move/from16 v21, p12

    .line 24
    .line 25
    move/from16 v22, p13

    .line 26
    .line 27
    new-instance v23, Lcom/join/mgps/dto/CommentCreateArgs;

    .line 28
    .line 29
    move-object/from16 v0, v23

    .line 30
    .line 31
    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v14, 0x0

    .line 36
    const-string v15, "0"

    .line 37
    .line 38
    const-string v16, ""

    .line 39
    .line 40
    const-string v17, "0"

    .line 41
    .line 42
    sget-object v18, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v19, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v20, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct/range {v0 .. v22}, Lcom/join/mgps/dto/CommentCreateArgs;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    return-object v23
.end method

.method public getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "loadSimulatorAloneTopIndex"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public getDeleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/DeleteCommentArgs;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "token",
            "mobile_phone_model",
            "comment_id",
            "user_token",
            "uid",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/join/mgps/dto/DeleteCommentArgs;

    .line 2
    .line 3
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v13

    .line 14
    move-object/from16 v1, p2

    .line 15
    .line 16
    move-object/from16 v7, p3

    .line 17
    .line 18
    move-object/from16 v8, p4

    .line 19
    .line 20
    move-object v9, p1

    .line 21
    move/from16 v10, p6

    .line 22
    .line 23
    move-object/from16 v11, p5

    .line 24
    .line 25
    move/from16 v12, p7

    .line 26
    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/join/mgps/dto/DeleteCommentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-object v13
.end method

.method public getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quest"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 20
    .line 21
    .line 22
    return-object v7
.end method

.method public getDetialImfMore(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "pn",
            "tag_id",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getDetialmoreServer(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    invoke-direct {v0, p1, v8, v9, v9}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v7

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 27
    .line 28
    .line 29
    return-object v7
.end method

.method public getDownDeductCoin(Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appid",
            "token",
            "uid",
            "extBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    new-instance p4, Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    invoke-direct {p4}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "load"

    .line 15
    .line 16
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/dto/RequestAppDetialArgs;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestAppDetialArgs;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "getGameInfo"

    .line 28
    .line 29
    invoke-direct {v6, p1, v0, p4}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v7

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    .line 34
    .line 35
    .line 36
    return-object v7
.end method

.method public getDownloadCenterRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/RequestDownloadCenterArgs;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestDownloadCenterArgs;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 23
    .line 24
    .line 25
    return-object v6
.end method

.method public getEverdayNew(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadEveryDayNewGame"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getEverdayNewGame(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "extBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSimulatorArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadEveryDayNewGame"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0, p3}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getExclusiveTagBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "getExclusiveTag"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getExitRequest()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "loadAppOut"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getFloatadRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v8

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 27
    .line 28
    .line 29
    return-object v8
.end method

.method public getGRedPointNum(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 23
    .line 24
    .line 25
    return-object v6
.end method

.method public getGameCommentListRequestBean(IIILjava/lang/String;[I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "uid",
            "gameId",
            "comment_type"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestCommitArgs;

    .line 18
    .line 19
    move-object v9, v0

    .line 20
    move-object/from16 v10, p5

    .line 21
    .line 22
    move/from16 v11, p1

    .line 23
    .line 24
    move/from16 v12, p2

    .line 25
    .line 26
    move-object/from16 v13, p4

    .line 27
    .line 28
    move/from16 v14, p3

    .line 29
    .line 30
    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RequestCommitArgs;-><init>([IIILjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v9, "getGameCommentList"

    .line 34
    .line 35
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object v0, v8

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 40
    .line 41
    .line 42
    return-object v8
.end method

.method public getGameDetailParis(Lcom/join/mgps/dto/GamePariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 20
    .line 21
    .line 22
    return-object v7
.end method

.method public getGameDiscoverRequestBean(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getGameDiscover"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0, p3}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getGameInformationComment(Lcom/join/mgps/dto/CollectionCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 2
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameInformationComment(Lcom/join/mgps/dto/GameInformationCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v7
.end method

.method public getGameInformationParis(Lcom/join/mgps/dto/PariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 20
    .line 21
    .line 22
    return-object v7
.end method

.method public getGameListRequestBean(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "type",
            "rom_type",
            "ranking_type",
            "sort_type"
        }
    .end annotation

    .line 2
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v4, "load"

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestClassifyArgs;

    const/4 v9, 0x7

    new-array v12, v9, [I

    fill-array-data v12, :array_0

    move-object v9, v0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v16}, Lcom/join/mgps/dto/RequestClassifyArgs;-><init>(II[ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v9, "getGameList"

    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public getGameListRequestBean(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "type",
            "sort",
            "platform_type",
            "belong_to_tag"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v4, "load"

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestGameArgs;

    const/4 v9, 0x7

    new-array v15, v9, [I

    fill-array-data v15, :array_0

    move-object v9, v0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Lcom/join/mgps/dto/RequestGameArgs;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    const-string v9, "getGameList"

    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public getGameMainData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-direct {v0, p1, v8, v8, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 26
    .line 27
    .line 28
    return-object v7
.end method

.method public getGameOLGiftRequest(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(III)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v8

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 27
    .line 28
    .line 29
    return-object v8
.end method

.method public getGameOLRequest(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v8

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 27
    .line 28
    .line 29
    return-object v8
.end method

.method public getGameReplyMessageRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;-><init>(IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 23
    .line 24
    .line 25
    return-object v6
.end method

.method public getGameSortRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "version",
            "deviceid"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/GameSortRequestBean;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/GameSortRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getGameTopicRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/GameTopicRequestBean;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/GameTopicRequestBean;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getGameVerByBgArgs(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkg",
            "versionCode",
            "versionName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/GameVerByBgRequestargs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "load"

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/GameVerByBgRequestargs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/GameVerByBgRequestargs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p2, "getGameInfo"

    .line 26
    .line 27
    invoke-direct {v6, p2, v0, p1}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 28
    .line 29
    .line 30
    move-object v0, v7

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    .line 32
    .line 33
    .line 34
    return-object v7
.end method

.method public getGame_tag_game_list(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "tagID",
            "tagType",
            "tagName"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, ""

    .line 26
    .line 27
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {v0, p1, p2, p4, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v0, v7

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 42
    .line 43
    .line 44
    return-object v7
.end method

.method public getGamedetialCommentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GamedetialCommentRequest;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "token",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/GamedetialCommentRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/GamedetialCommentRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setChannel_num(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setDevice_id(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setGame_id(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setIp_address(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setMac(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setMobile_phone_model(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "1"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setPc(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setPn(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "desc"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setSort(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setToken(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setUid(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GamedetialCommentRequest;->setVersion(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method public getGamedetialModleFourData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-direct {v0, p1, v8, v8, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 26
    .line 27
    .line 28
    return-object v7
.end method

.method public getGiftPackageInfoRequestBean(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "gift_package_id"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/GiftPackageInfoArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/GiftPackageInfoArgs;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "gift_package_id",
            "game_id"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/GiftPackageOperationArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/GiftPackageOperationArgs;-><init>(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getGiftPackageRequestBean(IIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "pn",
            "pc",
            "game_id"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/GiftPackageArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/dto/GiftPackageArgs;-><init>(IIILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getHandShankAdList()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    const-string v9, "test"

    .line 19
    .line 20
    invoke-direct {v0, v8, v8, v9}, Lcom/join/mgps/dto/RequestHandShankAdListArgs;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 28
    .line 29
    .line 30
    return-object v7
.end method

.method public getHaveGameListArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "gameId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/HaveGameListArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "load"

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/HaveGameListArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HaveGameListArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p2, "getHaveGameListArgs"

    .line 26
    .line 27
    invoke-direct {v6, p2, v0, p1}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 28
    .line 29
    .line 30
    move-object v0, v7

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    .line 32
    .line 33
    .line 34
    return-object v7
.end method

.method public getHomeGameCarefullyRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "first",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs;-><init>(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p2, "game_carefully"

    .line 28
    .line 29
    invoke-direct {v7, p2, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v8

    .line 33
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 34
    .line 35
    .line 36
    return-object v8
.end method

.method public getHomePopupAd(ZI)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is_vip",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(ZI)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getHotGame(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "popularList"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getIgnoreMessageRequest(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "messageId",
            "messageType"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getInformationComment(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "information_id",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/InformationRequestBean;

    .line 18
    .line 19
    const/4 v9, 0x2

    .line 20
    new-array v10, v9, [Ljava/lang/Integer;

    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    const/4 v13, 0x0

    .line 28
    aput-object v12, v10, v13

    .line 29
    .line 30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    aput-object v9, v10, v11

    .line 35
    .line 36
    move-object v9, p1

    .line 37
    move/from16 v11, p2

    .line 38
    .line 39
    invoke-direct {v0, p1, v11, v10}, Lcom/join/mgps/dto/InformationRequestBean;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    const-string v9, "getInformationCommentList"

    .line 43
    .line 44
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object v0, v8

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 49
    .line 50
    .line 51
    return-object v8
.end method

.method public getInformationIndexRequestBean(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getInformationIndex"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getLargeModuleRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "getLargeModuleTitle"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getLodingImage()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "loadAppStart"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getLookOther(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadRecentlyGameOther"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getModifyCommentBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)Lcom/join/mgps/dto/CommentModifyArgs;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "mobile_phone_model",
            "gameId",
            "uid",
            "comment_id",
            "user_token",
            "content",
            "score",
            "m_p_m_status"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    move-object/from16 v11, p6

    .line 12
    .line 13
    move-object/from16 v12, p7

    .line 14
    .line 15
    move/from16 v13, p8

    .line 16
    .line 17
    move/from16 v16, p9

    .line 18
    .line 19
    new-instance v17, Lcom/join/mgps/dto/CommentModifyArgs;

    .line 20
    .line 21
    move-object/from16 v0, v17

    .line 22
    .line 23
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v14, 0x1

    .line 34
    const/4 v15, 0x0

    .line 35
    invoke-direct/range {v0 .. v16}, Lcom/join/mgps/dto/CommentModifyArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FIII)V

    .line 36
    .line 37
    .line 38
    return-object v17
.end method

.method public getModuleListRequestBean(III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jump_type",
            "pn",
            "pc"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestModuleArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestModuleArgs;-><init>(III)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getModuleList"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getMustplay(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RecomRequestArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RecomRequestArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "load"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getMyGameTopAd(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-direct {v0, v8, v8, p1}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(III)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 26
    .line 27
    .line 28
    return-object v7
.end method

.method public getNowWufun(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    .line 18
    .line 19
    const/16 v9, 0xa

    .line 20
    .line 21
    invoke-direct {v0, p1, v9}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const-string p1, "getGameDiscover"

    .line 25
    .line 26
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v0, v8

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 31
    .line 32
    .line 33
    return-object v8
.end method

.method public getOnLineNumber([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strings"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/AllAppId;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/AllAppId;-><init>([Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getGameUv"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getPAPAHomeMain(IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "is_anonymous",
            "uid",
            "aid",
            "m"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RecomRequestAdIdArgs;

    .line 18
    .line 19
    move-object v9, v0

    .line 20
    move/from16 v10, p1

    .line 21
    .line 22
    move/from16 v11, p2

    .line 23
    .line 24
    move/from16 v12, p3

    .line 25
    .line 26
    move-object/from16 v13, p4

    .line 27
    .line 28
    move-object/from16 v14, p5

    .line 29
    .line 30
    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RecomRequestAdIdArgs;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v7, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v8

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 38
    .line 39
    .line 40
    return-object v8
.end method

.method public getPabiIntentBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v0, v8

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public getPraiceMessPra(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/HomeGameCarefullyRequestArgs2;-><init>(IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 23
    .line 24
    .line 25
    return-object v6
.end method

.method public getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "token",
            "mobile_phone_model",
            "comment_id",
            "user_token",
            "uid",
            "type",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v14, Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 2
    .line 3
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v10, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v11, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v14

    .line 14
    move-object/from16 v1, p2

    .line 15
    .line 16
    move-object/from16 v4, p3

    .line 17
    .line 18
    move-object/from16 v5, p1

    .line 19
    .line 20
    move/from16 v6, p6

    .line 21
    .line 22
    move-object/from16 v7, p4

    .line 23
    .line 24
    move-object/from16 v8, p5

    .line 25
    .line 26
    move/from16 v12, p7

    .line 27
    .line 28
    move/from16 v13, p8

    .line 29
    .line 30
    invoke-direct/range {v0 .. v13}, Lcom/join/mgps/dto/RequestCommentpraiseArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    return-object v14
.end method

.method public getPreloadingADRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public getRankingV3(Lcom/join/mgps/dto/RequestTypePn;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quest"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    invoke-direct {v6, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 20
    .line 21
    .line 22
    return-object v7
.end method

.method public getRecomRequestBannerAndTableBean()Lcom/join/mgps/dto/RecomRequestBannerAndTableBean;
    .locals 8

    .line 1
    new-instance v6, Lcom/join/mgps/dto/RecomRequestBannerAndTableBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "load"

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "loadTopIndex"

    .line 19
    .line 20
    invoke-direct {v5, v7, v0}, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/RecomRequestBannerAndTableBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v6
.end method

.method public getRecomRequestBean(I)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listpage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RecomRequestArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    .line 2
    .line 3
    const-string v1, "1.0"

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "load"

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RecomRequestArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RecomRequestArgs;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string p1, "loadSimulatorAloneRecList"

    .line 21
    .line 22
    invoke-direct {v6, p1, v0}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v7

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    .line 27
    .line 28
    .line 29
    return-object v7
.end method

.method public getRecomRequestFirstData()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RecomRequestArgs;

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    invoke-direct {v0, v9}, Lcom/join/mgps/dto/RecomRequestArgs;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v9, "loadSimulatorAloneTopIndex"

    .line 24
    .line 25
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v8

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 30
    .line 31
    .line 32
    return-object v8
.end method

.method public getRecomeAppwifi(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getReplyCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "score",
            "content",
            "token",
            "mobile_phone_model",
            "position",
            "details_comment_id",
            "user_name",
            "head_portrait",
            "user_token",
            "uid",
            "reply_comment_user_id",
            "reply_comment_user_name",
            "reply_comment_id",
            "pn"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v15, p12

    .line 24
    .line 25
    move-object/from16 v16, p13

    .line 26
    .line 27
    move-object/from16 v17, p14

    .line 28
    .line 29
    move/from16 v21, p15

    .line 30
    .line 31
    new-instance v23, Lcom/join/mgps/dto/CommentCreateArgs;

    .line 32
    .line 33
    move-object/from16 v0, v23

    .line 34
    .line 35
    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 36
    .line 37
    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    sget-object v18, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v19, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v20, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 45
    .line 46
    const/16 v22, 0x3

    .line 47
    .line 48
    invoke-direct/range {v0 .. v22}, Lcom/join/mgps/dto/CommentCreateArgs;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    return-object v23
.end method

.method public getRequestArenaRoomListArgs(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestArenaRoomListArgs;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "gameId",
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v12, Lcom/join/mgps/dto/RequestCommentAllListArgs;

    .line 2
    .line 3
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->mobile_phone_model:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v7, Lcom/join/mgps/Util/RequestBeanUtil;->mac:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v8, Lcom/join/mgps/Util/RequestBeanUtil;->ip_address:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v10, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v11, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v12

    .line 16
    move v1, p1

    .line 17
    move v2, p2

    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move/from16 v4, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    invoke-direct/range {v0 .. v11}, Lcom/join/mgps/dto/RequestCommentAllListArgs;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v12
.end method

.method public getRequestGameFactoryList(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "factory_id",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestCompanyIdPnArgs;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getRequestMsgState(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "content",
            "tag_id"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestMsgStateArge;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestMsgStateArge;-><init>(ILjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getRequestPnAndPcByAreaAndRank(IIII)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pn",
            "pc",
            "area",
            "ranking_type"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGoogleRankArgs;

    .line 16
    .line 17
    invoke-direct {v0, p3, p4, p1, p2}, Lcom/join/mgps/dto/RequestGoogleRankArgs;-><init>(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getSNKGameCheckRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key_word"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/RequestSNKGameArgs;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSNKGameArgs;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 23
    .line 24
    .line 25
    return-object v6
.end method

.method public getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "pn",
            "typeId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestScreenshortListArgs;

    .line 16
    .line 17
    invoke-direct {v0, p3, p1, p2}, Lcom/join/mgps/dto/RequestScreenshortListArgs;-><init>(ILjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "searchTag",
            "keyword",
            "pn",
            "pc",
            "plugNumber",
            "lang_id"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "search"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestKeywordArgs;

    .line 18
    .line 19
    move-object v9, v0

    .line 20
    move-object/from16 v10, p2

    .line 21
    .line 22
    move/from16 v11, p3

    .line 23
    .line 24
    move/from16 v12, p4

    .line 25
    .line 26
    move/from16 v13, p5

    .line 27
    .line 28
    move/from16 v14, p6

    .line 29
    .line 30
    invoke-direct/range {v9 .. v14}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v9, p1

    .line 34
    .line 35
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object v0, v8

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 40
    .line 41
    .line 42
    return-object v8
.end method

.method public getSearchIntegratedRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyword",
            "pn",
            "pc"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "0"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method public getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyword",
            "pn",
            "pc",
            "plugin_num",
            "lang_id",
            "game_id"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/join/mgps/dto/RequestKeywordArgs;

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, p6

    .line 3
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/RequestKeywordArgs;->setGame_id(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v8, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v9, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v10, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v11, "search"

    sget-object v12, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v13, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v14, Lcom/join/mgps/dto/CommonRequestMessage;

    const-string v1, ""

    invoke-direct {v14, v1, v6}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v0
.end method

.method public getSearchPageRequestBean(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v4, "search"

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSearchPageArgs;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestSearchPageArgs;-><init>(ILjava/lang/String;)V

    const-string p1, "search"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSearchPageRequestBean(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "gameId"
        }
    .end annotation

    .line 2
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    const-string v4, "search"

    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v0, Lcom/join/mgps/dto/RequestSearchPageArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestSearchPageArgs;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "search"

    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    return-object v8
.end method

.method public getSearchRecommendBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "loadRandomGame"

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-direct {v7, v0, v8}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, p1

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public getSearchRecommendRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "recommendgame"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getShowViewDatas()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "getStrategyInfo"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    invoke-direct {v7, v0, v9}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v8

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v8
.end method

.method public getSilenceSwitch(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "uid",
            "silenceSwitch"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestSiliencebean;

    .line 16
    .line 17
    invoke-direct {v0, p2, p3, p1}, Lcom/join/mgps/dto/RequestSiliencebean;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/RecomRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "load"

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/RecomRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/SimulatorAreaRequest;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/SimulatorAreaRequest;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    const-string p2, ""

    .line 22
    .line 23
    invoke-direct {v6, p2, v0, p1}, Lcom/join/mgps/dto/RecomRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/RecomRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RecomRequestMessage;)V

    .line 28
    .line 29
    .line 30
    return-object v7
.end method

.method public getSimulatorListRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestSimulatorArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadSimulatorList"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getSimulatorRequest(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "gameId",
            "uid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    invoke-direct {v0, p2, p1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getSimulatorRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "loadSimulatorTopIndex"

    .line 23
    .line 24
    invoke-direct {v7, v9, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getStandAloneOne()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public getStandAloneTwo(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestPnArgs;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string p1, "StandAlone"

    .line 19
    .line 20
    invoke-direct {v5, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v6
.end method

.method public getStats(Lcom/join/mgps/dto/RequestStatsArgs;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestStatsArgs"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "add"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "commitStatistics"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public getTagGameListData(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "tagID"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 16
    .line 17
    const-string v8, "123456"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    invoke-direct {v0, v8, p1, p2, v9}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;III)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 28
    .line 29
    .line 30
    return-object v7
.end method

.method public getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommentRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/CommentRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public getUserCenterViewConfigs(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "isVip"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestUserCenterArgs;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestUserCenterArgs;-><init>(ILjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public getWarListRequestBean(II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "type"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestWarArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/RequestWarArgs;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadWarModuleList"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public getgameInformation(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info_id",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestInfoIdArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestInfoIdArgs;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "getInformation"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0, p2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public loadWarIndexRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestWarIndexArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/join/mgps/dto/RequestWarIndexArgs;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "loadWarIndex"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public personalCenter()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnArgs;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestPnArgs;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public postGameComment(Lcom/join/mgps/dto/CommitRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitRequestBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "add"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "postGameComment"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public postGameCommentRelpyRequestBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "game_id",
            "head_portrait",
            "user_name",
            "mobile_phone_model",
            "ip_address",
            "random_num",
            "content",
            "reply_comment_id",
            "reply_comment_user_name",
            "reply_comment_user_id"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v15, Lcom/join/mgps/dto/RequestCommitReplyArgs;

    .line 18
    .line 19
    move-object v8, v15

    .line 20
    move/from16 v9, p1

    .line 21
    .line 22
    move-object/from16 v10, p2

    .line 23
    .line 24
    move-object/from16 v11, p3

    .line 25
    .line 26
    move-object/from16 v12, p4

    .line 27
    .line 28
    move-object/from16 v13, p5

    .line 29
    .line 30
    move-object/from16 v14, p6

    .line 31
    .line 32
    move-object/from16 v20, v6

    .line 33
    .line 34
    move-object v6, v15

    .line 35
    move/from16 v15, p7

    .line 36
    .line 37
    move-object/from16 v16, p8

    .line 38
    .line 39
    move-object/from16 v17, p9

    .line 40
    .line 41
    move-object/from16 v18, p10

    .line 42
    .line 43
    move/from16 v19, p11

    .line 44
    .line 45
    invoke-direct/range {v8 .. v19}, Lcom/join/mgps/dto/RequestCommitReplyArgs;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string v8, "postGameComment"

    .line 49
    .line 50
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object/from16 p1, v0

    .line 54
    .line 55
    move-object/from16 p2, v1

    .line 56
    .line 57
    move-object/from16 p3, v2

    .line 58
    .line 59
    move-object/from16 p4, v3

    .line 60
    .line 61
    move-object/from16 p5, v4

    .line 62
    .line 63
    move-object/from16 p6, v5

    .line 64
    .line 65
    move-object/from16 p7, v20

    .line 66
    .line 67
    move-object/from16 p8, v7

    .line 68
    .line 69
    invoke-direct/range {p1 .. p8}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public postGameCommentRequestBean(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "game_id",
            "uid",
            "head_portrait",
            "user_name",
            "mobile_phone_model",
            "ip_address",
            "random_num",
            "content"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v15, Lcom/join/mgps/dto/RequestGameCommentArgs;

    .line 18
    .line 19
    move-object v8, v15

    .line 20
    move-object/from16 v9, p1

    .line 21
    .line 22
    move/from16 v10, p2

    .line 23
    .line 24
    move-object/from16 v11, p3

    .line 25
    .line 26
    move-object/from16 v12, p4

    .line 27
    .line 28
    move-object/from16 v13, p5

    .line 29
    .line 30
    move-object/from16 v14, p6

    .line 31
    .line 32
    move-object/from16 v17, v6

    .line 33
    .line 34
    move-object v6, v15

    .line 35
    move/from16 v15, p7

    .line 36
    .line 37
    move-object/from16 v16, p8

    .line 38
    .line 39
    invoke-direct/range {v8 .. v16}, Lcom/join/mgps/dto/RequestGameCommentArgs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v8, "postpraise"

    .line 43
    .line 44
    invoke-direct {v7, v8, v6}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 p1, v0

    .line 48
    .line 49
    move-object/from16 p2, v1

    .line 50
    .line 51
    move-object/from16 p3, v2

    .line 52
    .line 53
    move-object/from16 p4, v3

    .line 54
    .line 55
    move-object/from16 p5, v4

    .line 56
    .line 57
    move-object/from16 p6, v5

    .line 58
    .line 59
    move-object/from16 p7, v17

    .line 60
    .line 61
    move-object/from16 p8, v7

    .line 62
    .line 63
    invoke-direct/range {p1 .. p8}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public postPraisedRequestBean(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentId",
            "uid",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "load"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/RequestPraiseArgs;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dto/RequestPraiseArgs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "postpraise"

    .line 23
    .line 24
    invoke-direct {v7, p1, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method public selfComment(ILjava/lang/String;III)Lcom/join/mgps/dto/CommentSelfRequestBean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "pn",
            "pc",
            "vuid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CommentSelfRequestBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/CommentSelfRequestBean;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v0, v1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->setCommentCommonFields(Lcom/join/mgps/dto/CommentRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentRequest;->setUid(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/CommentSelfRequestBean;->setGame_id(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/CommentSelfRequestBean;->setPn(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p4}, Lcom/join/mgps/dto/CommentSelfRequestBean;->setPc(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p5}, Lcom/join/mgps/dto/CommentRequest;->setVuid(I)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public sendAllAppinPhone(Lcom/join/mgps/dto/SendAppinfoMainbean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sendAppInfoBeans"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "add"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "collectAppInfo"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public sendInformationComment(Lcom/join/mgps/dto/InformationSendRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sendRequestBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "add"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "postInformationComment"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public sendMessageComment(Lcom/join/mgps/dto/CommentSendMessageRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "add"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "commitComment"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public sendRegisterId(Lcom/join/mgps/dto/RegisterRequestBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registerRequestBean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "add"

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v6, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 16
    .line 17
    const-string v0, "regPushDevice"

    .line 18
    .line 19
    invoke-direct {v7, v0, p1}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public vipMessage(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dto/CommonRequestBean;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/RequestBeanUtil;->versionAndVersionName:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/Util/RequestBeanUtil;->imei:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/join/mgps/Util/RequestBeanUtil;->androidId:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/join/mgps/Util/RequestBeanUtil;->channel_num:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lcom/join/mgps/Util/RequestBeanUtil;->end:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v6, Lcom/join/mgps/dto/CommonRequestMessage;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-direct {v0, v8, v8, p1}, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;-><init>(III)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v0}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dto/CommonRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CommonRequestMessage;)V

    .line 26
    .line 27
    .line 28
    return-object v7
.end method
