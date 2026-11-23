.class public Lcom/xinzhu/overmind/virtual/oem/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Landroid/content/ComponentName;

    .line 3
    .line 4
    new-instance v2, Landroid/content/ComponentName;

    .line 5
    .line 6
    const-string v3, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    .line 7
    .line 8
    const-string v4, "com.huawei.systemmanager"

    .line 9
    .line 10
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    new-instance v2, Landroid/content/ComponentName;

    .line 17
    .line 18
    const-string v5, "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"

    .line 19
    .line 20
    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    aput-object v2, v1, v5

    .line 25
    .line 26
    new-instance v2, Landroid/content/ComponentName;

    .line 27
    .line 28
    const-string v6, "com.huawei.systemmanager.appcontrol.activity.StartupAppControlActivity"

    .line 29
    .line 30
    invoke-direct {v2, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    aput-object v2, v1, v6

    .line 35
    .line 36
    new-instance v2, Landroid/content/ComponentName;

    .line 37
    .line 38
    const-string v7, "com.huawei.systemmanager.startupmgr.ui.StartupAwakedAppListActivity"

    .line 39
    .line 40
    invoke-direct {v2, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aput-object v2, v1, v4

    .line 45
    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sput-object v1, Lcom/xinzhu/overmind/virtual/oem/a;->a:Ljava/util/List;

    .line 51
    .line 52
    new-array v1, v6, [Landroid/content/ComponentName;

    .line 53
    .line 54
    new-instance v2, Landroid/content/ComponentName;

    .line 55
    .line 56
    const-string v7, "com.meizu.safe.permission.SmartBGActivity"

    .line 57
    .line 58
    const-string v8, "com.meizu.safe"

    .line 59
    .line 60
    invoke-direct {v2, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput-object v2, v1, v3

    .line 64
    .line 65
    new-instance v2, Landroid/content/ComponentName;

    .line 66
    .line 67
    const-string v7, "com.meizu.safe.security.HomeActivity"

    .line 68
    .line 69
    invoke-direct {v2, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    aput-object v2, v1, v5

    .line 73
    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sput-object v1, Lcom/xinzhu/overmind/virtual/oem/a;->b:Ljava/util/List;

    .line 79
    .line 80
    new-array v0, v0, [Landroid/content/ComponentName;

    .line 81
    .line 82
    new-instance v1, Landroid/content/ComponentName;

    .line 83
    .line 84
    const-string v2, "com.iqoo.secure"

    .line 85
    .line 86
    const-string v7, "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager"

    .line 87
    .line 88
    invoke-direct {v1, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    aput-object v1, v0, v3

    .line 92
    .line 93
    new-instance v1, Landroid/content/ComponentName;

    .line 94
    .line 95
    const-string v2, "com.vivo.permissionmanager.activity.PurviewTabActivity"

    .line 96
    .line 97
    const-string v3, "com.vivo.permissionmanager"

    .line 98
    .line 99
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    aput-object v1, v0, v5

    .line 103
    .line 104
    new-instance v1, Landroid/content/ComponentName;

    .line 105
    .line 106
    const-string v2, "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"

    .line 107
    .line 108
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    aput-object v1, v0, v6

    .line 112
    .line 113
    new-instance v1, Landroid/content/ComponentName;

    .line 114
    .line 115
    const-string v2, "com.vivo.permissionmanager.activity.PurviewActivity"

    .line 116
    .line 117
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    aput-object v1, v0, v4

    .line 121
    .line 122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Lcom/xinzhu/overmind/virtual/oem/a;->c:Ljava/util/List;

    .line 127
    .line 128
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

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/virtual/oem/BuildCompat;->b()Lcom/xinzhu/overmind/virtual/oem/BuildCompat$ROMType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xinzhu/overmind/virtual/oem/a$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/high16 v1, 0x10000000

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "com.qihoo360.mobilesafe"

    .line 29
    .line 30
    const-string v2, "com.qihoo360.mobilesafe.ui.index.AppEnterActivity"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/xinzhu/overmind/virtual/oem/a;->c:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/content/ComponentName;

    .line 59
    .line 60
    new-instance v3, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v3}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    return-object v3

    .line 78
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string v1, "com.letv.android.letvsafe"

    .line 87
    .line 88
    const-string v2, "com.letv.android.letvsafe.AutobootManageActivity"

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    return-object v0

    .line 100
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .line 101
    .line 102
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const-string v1, "com.coloros.safecenter"

    .line 109
    .line 110
    const-string v2, "com.coloros.safecenter.startupapp.StartupAppListActivity"

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_3

    .line 120
    .line 121
    return-object v0

    .line 122
    :pswitch_4
    sget-object v0, Lcom/xinzhu/overmind/virtual/oem/a;->b:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_3

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroid/content/ComponentName;

    .line 139
    .line 140
    new-instance v3, Landroid/content/Intent;

    .line 141
    .line 142
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v3}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_1

    .line 156
    .line 157
    return-object v3

    .line 158
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .line 159
    .line 160
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string v1, "com.miui.securitycenter"

    .line 167
    .line 168
    const-string v2, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_3

    .line 178
    .line 179
    return-object v0

    .line 180
    :pswitch_6
    sget-object v0, Lcom/xinzhu/overmind/virtual/oem/a;->a:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_3

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Landroid/content/ComponentName;

    .line 197
    .line 198
    new-instance v3, Landroid/content/Intent;

    .line 199
    .line 200
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    invoke-static {p0, v3}, Lcom/xinzhu/overmind/virtual/oem/a;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_2

    .line 214
    .line 215
    return-object v3

    .line 216
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 217
    return-object p0

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_0
    return v0
.end method
