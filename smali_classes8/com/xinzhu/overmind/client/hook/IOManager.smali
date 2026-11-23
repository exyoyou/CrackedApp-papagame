.class public Lcom/xinzhu/overmind/client/hook/IOManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "IOManager"

.field private static final sCachePackageRedirect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIOManager:Lcom/xinzhu/overmind/client/hook/IOManager;

.field private static sdcard_alias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRedirectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/IOManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sIOManager:Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sCachePackageRedirect:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "/storage/emulated/"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 47
    .line 48
    const-string v1, "/sdcard"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 54
    .line 55
    const-string v1, "/mnt/sdcard"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mBlacklist:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method private addHidePath(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "-fake"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/client/hook/IOManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sIOManager:Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 2
    .line 3
    return-object v0
.end method

.method private hideRoot(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "/system/bin/failsafe/su"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "/data/local/su"

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "/data/local/bin/su"

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "/data/local/xbin/su"

    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "/system/sd/bin/su"

    .line 22
    .line 23
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "/system/sd/xbin/su"

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "/sbin"

    .line 32
    .line 33
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "/data/local/sbin"

    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "/su"

    .line 42
    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "/system/sbin"

    .line 47
    .line 48
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "/system/sd/sbin"

    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "/apex/com.android.runtime/bin/daemonsu"

    .line 57
    .line 58
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "/apex/com.android.runtime/bin/su"

    .line 62
    .line 63
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "/data/adb/magisk/magisk"

    .line 67
    .line 68
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "/data/data-lib/com.kingroot.RushRoot"

    .line 72
    .line 73
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "/data/data-lib/com.kingroot.kinguser"

    .line 77
    .line 78
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "/data/data/com.kingoapp.apk"

    .line 82
    .line 83
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "/data/data/com.kingroot.kinguser"

    .line 87
    .line 88
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "/data/data/com.topjohnwu.magisk"

    .line 92
    .line 93
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "/data/app/com.topjohnwu.magisk"

    .line 97
    .line 98
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "/data/data/eu.chainfire.supersu"

    .line 102
    .line 103
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "/data/data/kingoroot.supersu"

    .line 107
    .line 108
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "/data/user/0/com.kingroot.kinguser"

    .line 112
    .line 113
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "/data/user_de/0/com.kingroot.kinguser"

    .line 117
    .line 118
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "/data/user_de/0/eu.chainfire.supersu"

    .line 122
    .line 123
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v0, "/dev/__properties__/u:object_r:supersu_prop:s0"

    .line 127
    .line 128
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "/dev/com.koushikdutta.superuser.daemon"

    .line 132
    .line 133
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "/dev/kingroot"

    .line 137
    .line 138
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "/dev/kinguser_req_cache"

    .line 142
    .line 143
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "/init.supersu.rc"

    .line 147
    .line 148
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v0, "/magisk"

    .line 152
    .line 153
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "/root/magisk"

    .line 157
    .line 158
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "/storage/emulated/0/daemonsu"

    .line 162
    .line 163
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "/storage/emulated/0/su"

    .line 167
    .line 168
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "/system/addon.d/51-addonsu.sh"

    .line 172
    .line 173
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "/system/app/KingoUser.apk"

    .line 177
    .line 178
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v0, "/system/app/Superuser.apk"

    .line 182
    .line 183
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "/system/app/SuperSU.apk"

    .line 187
    .line 188
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v0, "/system/app/Superuser"

    .line 192
    .line 193
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v0, "/system/app/SuperSU"

    .line 197
    .line 198
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "/system/bin/.ext/.su"

    .line 202
    .line 203
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v0, "/system/bin/su"

    .line 207
    .line 208
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v0, "/system/etc/.has_su_daemon"

    .line 212
    .line 213
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v0, "/system/etc/.installed_su_daemon"

    .line 217
    .line 218
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v0, "/system/etc/init.d/99SuperSUDaemon"

    .line 222
    .line 223
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v0, "/system/etc/init/superuser.rc"

    .line 227
    .line 228
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v0, "/system/su"

    .line 232
    .line 233
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v0, "/system/usr/we-need-root/su-backup"

    .line 237
    .line 238
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v0, "/system/xbin/daemonsu"

    .line 242
    .line 243
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v0, "/system/xbin/ku.sud"

    .line 247
    .line 248
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v0, "/system/xbin/mu"

    .line 252
    .line 253
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v0, "/system/xbin/start_kusud.sh"

    .line 257
    .line 258
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const-string v0, "/system/xbin/su"

    .line 262
    .line 263
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v0, "/vendor/bin/daemonsu"

    .line 267
    .line 268
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v0, "/vendor/bin/su"

    .line 272
    .line 273
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v0, "root/magiskinit"

    .line 277
    .line 278
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/IOManager;->addHidePath(Ljava/util/Map;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-void
.end method


# virtual methods
.method public addBlacklist(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mBlacklist:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v0, "/"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "addRedirectBlacklist "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/xinzhu/overmind/client/VMCore;->addIOBlacklist(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public addRedirect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "/Android"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    :cond_1
    const-string v0, "/"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    :cond_3
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "addRedirect "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, " --> "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/VMCore;->addIORule(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_0
    return-void
.end method

.method public enableRedirect(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "/Android/media/"

    .line 6
    .line 7
    const-string v3, "/Android/data/"

    .line 8
    .line 9
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->E()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isInPlugin()Z

    .line 24
    .line 25
    .line 26
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 27
    const-string v8, "/tmp/"

    .line 28
    .line 29
    const-string v9, "/data/user_de/"

    .line 30
    .line 31
    const-string v10, "FLAG_STORAGE redirect apk"

    .line 32
    .line 33
    const/4 v11, 0x2

    .line 34
    const-string v12, "/data/user/"

    .line 35
    .line 36
    const-string v13, "/lib"

    .line 37
    .line 38
    const-string v14, "/data/data/"

    .line 39
    .line 40
    const-string v15, "/"

    .line 41
    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    :try_start_1
    invoke-static {}, Lma/g;->d()Lma/g;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7, v0}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iget-object v7, v7, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 53
    .line 54
    invoke-virtual {v7, v11}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    sget-object v7, Lcom/xinzhu/overmind/client/hook/IOManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v7, v10}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->k(Ljava/lang/String;)Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->k(Ljava/lang/String;)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_0
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->J(Ljava/lang/String;)Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->I(Ljava/lang/String;)Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->e(Ljava/lang/String;)Ljava/io/File;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    invoke-static {v0, v9}, Lcom/xinzhu/overmind/a;->y(Ljava/lang/String;I)Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v6}, Lcom/xinzhu/overmind/a;->w(Ljava/lang/String;I)Ljava/io/File;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    invoke-static {v0, v7}, Lcom/xinzhu/overmind/a;->o(Ljava/lang/String;I)Ljava/io/File;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    invoke-static {v0, v8}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    invoke-static {v0, v7}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 340
    .line 341
    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :cond_1
    :try_start_3
    invoke-static {}, Lma/g;->d()Lma/g;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-virtual {v7, v0}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    iget-object v7, v7, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 353
    .line 354
    invoke-virtual {v7, v11}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-eqz v7, :cond_2

    .line 359
    .line 360
    sget-object v7, Lcom/xinzhu/overmind/client/hook/IOManager;->TAG:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v7, v10}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/io/File;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 382
    .line 383
    .line 384
    goto :goto_1

    .line 385
    :catch_1
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/io/File;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->J(Ljava/lang/String;)Ljava/io/File;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->I(Ljava/lang/String;)Ljava/io/File;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v10

    .line 468
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    invoke-static {v0, v9}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v9

    .line 539
    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    invoke-static {v0, v6}, Lcom/xinzhu/overmind/a;->v(Ljava/lang/String;I)Ljava/io/File;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    invoke-static/range {p1 .. p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 562
    .line 563
    .line 564
    move-result v7

    .line 565
    invoke-static {v0, v7}, Lcom/xinzhu/overmind/a;->n(Ljava/lang/String;I)Ljava/io/File;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    new-instance v7, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    invoke-static {v0, v8}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    .line 596
    .line 597
    .line 598
    move-result-object v8

    .line 599
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v8

    .line 603
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    new-instance v7, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v6

    .line 627
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 628
    .line 629
    .line 630
    move-result v7

    .line 631
    invoke-static {v0, v7}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    :goto_2
    sget-object v6, Lcom/xinzhu/overmind/client/hook/IOManager;->TAG:Ljava/lang/String;

    .line 643
    .line 644
    new-instance v7, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .line 648
    .line 649
    const-string v8, "check external cache "

    .line 650
    .line 651
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 655
    .line 656
    .line 657
    move-result-object v8

    .line 658
    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v7

    .line 669
    invoke-static {v6, v7}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    invoke-virtual {v6}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    if-eqz v6, :cond_9

    .line 681
    .line 682
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    invoke-static {v6}, Lcom/xinzhu/overmind/a;->F(I)Ljava/io/File;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    const/4 v7, 0x0

    .line 695
    if-eqz v1, :cond_4

    .line 696
    .line 697
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 698
    .line 699
    .line 700
    move-result v8

    .line 701
    if-eqz v8, :cond_3

    .line 702
    .line 703
    goto :goto_3

    .line 704
    :cond_3
    const/4 v8, 0x0

    .line 705
    goto :goto_4

    .line 706
    :cond_4
    :goto_3
    const/4 v8, 0x1

    .line 707
    :goto_4
    if-eqz v8, :cond_8

    .line 708
    .line 709
    sget-object v1, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 710
    .line 711
    if-eqz v1, :cond_5

    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    if-nez v1, :cond_5

    .line 718
    .line 719
    sget-object v1, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 726
    .line 727
    .line 728
    move-result v8

    .line 729
    if-eqz v8, :cond_5

    .line 730
    .line 731
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v8

    .line 735
    check-cast v8, Ljava/lang/String;

    .line 736
    .line 737
    new-instance v9, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v9

    .line 755
    new-instance v10, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v10

    .line 773
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    new-instance v9, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    const-string v10, "/android/data/"

    .line 785
    .line 786
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v9

    .line 796
    new-instance v10, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v10

    .line 814
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    new-instance v9, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v9

    .line 835
    new-instance v10, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v10

    .line 853
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    new-instance v9, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    const-string v8, "/android/media/"

    .line 865
    .line 866
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v8

    .line 876
    new-instance v9, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v9

    .line 894
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    goto/16 :goto_5

    .line 898
    .line 899
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 908
    .line 909
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    if-eqz v1, :cond_9

    .line 914
    .line 915
    const/16 v1, 0x1e

    .line 916
    .line 917
    if-lt v0, v1, :cond_9

    .line 918
    .line 919
    move/from16 v0, p3

    .line 920
    .line 921
    if-ge v0, v1, :cond_9

    .line 922
    .line 923
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 924
    .line 925
    if-eqz v0, :cond_6

    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-nez v0, :cond_6

    .line 932
    .line 933
    sget-object v0, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 934
    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    if-eqz v1, :cond_6

    .line 944
    .line 945
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    check-cast v1, Ljava/lang/String;

    .line 950
    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    .line 952
    .line 953
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    goto :goto_6

    .line 970
    :cond_6
    invoke-static {}, Lcom/xinzhu/haunted/android/os/c;->l()[Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    array-length v1, v0

    .line 975
    :goto_7
    if-ge v7, v1, :cond_9

    .line 976
    .line 977
    aget-object v2, v0, v7

    .line 978
    .line 979
    sget-object v3, Lcom/xinzhu/overmind/client/hook/IOManager;->sdcard_alias:Ljava/util/ArrayList;

    .line 980
    .line 981
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 986
    .line 987
    .line 988
    move-result v6

    .line 989
    if-eqz v6, :cond_7

    .line 990
    .line 991
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v6

    .line 995
    check-cast v6, Ljava/lang/String;

    .line 996
    .line 997
    new-instance v8, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v6

    .line 1015
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    goto :goto_8

    .line 1019
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 1020
    .line 1021
    goto :goto_7

    .line 1022
    :cond_8
    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1023
    .line 1024
    .line 1025
    :cond_9
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isHideRoot()Z

    .line 1030
    .line 1031
    .line 1032
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1033
    if-eqz v0, :cond_a

    .line 1034
    .line 1035
    move-object/from16 v1, p0

    .line 1036
    .line 1037
    :try_start_5
    invoke-direct {v1, v4}, Lcom/xinzhu/overmind/client/hook/IOManager;->hideRoot(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1038
    .line 1039
    .line 1040
    goto :goto_a

    .line 1041
    :catch_2
    move-exception v0

    .line 1042
    goto :goto_9

    .line 1043
    :cond_a
    move-object/from16 v1, p0

    .line 1044
    .line 1045
    goto :goto_a

    .line 1046
    :catch_3
    move-exception v0

    .line 1047
    move-object/from16 v1, p0

    .line 1048
    .line 1049
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1050
    .line 1051
    .line 1052
    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    if-eqz v2, :cond_b

    .line 1061
    .line 1062
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v2

    .line 1066
    check-cast v2, Ljava/lang/String;

    .line 1067
    .line 1068
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/client/hook/IOManager;->addBlacklist(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_b

    .line 1076
    :cond_b
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v2

    .line 1088
    if-eqz v2, :cond_c

    .line 1089
    .line 1090
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v2

    .line 1094
    check-cast v2, Ljava/lang/String;

    .line 1095
    .line 1096
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v5

    .line 1104
    check-cast v5, Ljava/lang/String;

    .line 1105
    .line 1106
    invoke-virtual {v3, v2, v5}, Lcom/xinzhu/overmind/client/hook/IOManager;->addRedirect(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_c

    .line 1110
    :cond_c
    return-void
.end method

.method public redirectPath(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/IOManager;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public redirectPath(Ljava/io/File;Ljava/util/Map;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/client/hook/IOManager;->redirectPath(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public redirectPath(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 12
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public restoreRedirectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mBlacklist:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/xinzhu/overmind/client/hook/IOManager;->mRedirectMap:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_4
    return-object p1
.end method
