.class public Lcom/join/mgps/customview/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:I = 0x1

.field public static g:Ljava/lang/String; = "BROADCAST_ACTION_CLICK"

.field private static h:Lcom/join/mgps/customview/m;


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Landroid/widget/RemoteViews;

.field private c:Ljava/lang/String;

.field private final d:I

.field private e:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "channelId_JPush"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/m;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/join/mgps/customview/m;->d:I

    .line 10
    .line 11
    return-void
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-static {}, Lk1/d;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/m;->c:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "channelName"

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/j/u;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/m;->a:Landroid/app/NotificationManager;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/j/t;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static d()Lcom/join/mgps/customview/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/m;->h:Lcom/join/mgps/customview/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/m;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/customview/m;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/customview/m;->h:Lcom/join/mgps/customview/m;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/m;->h:Lcom/join/mgps/customview/m;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/m;->a:Landroid/app/NotificationManager;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/customview/m;->f:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Landroid/content/Context;)V
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
    :try_start_0
    const-string v0, "statusbar"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "collapsePanels"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "notification"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/NotificationManager;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/customview/l;->a(Landroid/app/NotificationManager;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    const-string v0, "checkOpNoThrow"

    .line 24
    .line 25
    const-string v1, "OP_POST_NOTIFICATION"

    .line 26
    .line 27
    const-string v3, "appops"

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/AppOpsManager;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 48
    .line 49
    :try_start_0
    const-class v5, Landroid/app/AppOpsManager;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v6, 0x3

    .line 60
    new-array v7, v6, [Ljava/lang/Class;

    .line 61
    .line 62
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    aput-object v8, v7, v2

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    aput-object v8, v7, v9

    .line 68
    .line 69
    const-class v8, Ljava/lang/String;

    .line 70
    .line 71
    const/4 v10, 0x2

    .line 72
    aput-object v8, v7, v10

    .line 73
    .line 74
    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-class v5, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    new-array v5, v6, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    aput-object v1, v5, v2

    .line 101
    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    aput-object v1, v5, v9

    .line 107
    .line 108
    aput-object p1, v5, v10

    .line 109
    .line 110
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    if-nez p1, :cond_1

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    :cond_1
    return v2

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    return v2
.end method

.method public f(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bundle"
        }
    .end annotation

    .line 1
    const-string v0, "JPushInterface.EXTRA_TITLE"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "JPushInterface.EXTRA_MESSAGE"

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v2, 0x7f120038

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    const-string v2, "notification"

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/app/NotificationManager;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/join/mgps/customview/m;->a:Landroid/app/NotificationManager;

    .line 39
    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v3, 0x1a

    .line 43
    .line 44
    if-lt v2, v3, :cond_1

    .line 45
    .line 46
    const-string v4, "jpush\u901a\u77e5"

    .line 47
    .line 48
    const/4 v5, 0x4

    .line 49
    const-string v6, "channel_1"

    .line 50
    .line 51
    invoke-static {v6, v4, v5}, Lcom/aggmoread/sdk/z/a/j/u;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, p0, Lcom/join/mgps/customview/m;->a:Landroid/app/NotificationManager;

    .line 56
    .line 57
    invoke-static {v5, v4}, Lcom/aggmoread/sdk/z/a/j/t;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 61
    .line 62
    sget-object v5, Lcom/join/mgps/customview/m;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const/high16 p2, 0x8000000

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-static {p1, v5, v4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const v6, 0x7f080a79

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    .line 89
    .line 90
    iget-object v8, p0, Lcom/join/mgps/customview/m;->c:Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {v7, p1, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-virtual {p1, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const/4 p2, 0x7

    .line 136
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-array p2, v5, [J

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    const-wide/16 v4, 0x0

    .line 144
    .line 145
    aput-wide v4, p2, v0

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 p2, 0x0

    .line 152
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const/4 p2, 0x2

    .line 157
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/join/mgps/customview/m;->e:Landroid/app/Notification;

    .line 166
    .line 167
    if-lt v2, v3, :cond_2

    .line 168
    .line 169
    invoke-direct {p0}, Lcom/join/mgps/customview/m;->c()V

    .line 170
    .line 171
    .line 172
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/m;->a:Landroid/app/NotificationManager;

    .line 173
    .line 174
    sget p2, Lcom/join/mgps/customview/m;->f:I

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/customview/m;->e:Landroid/app/Notification;

    .line 177
    .line 178
    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method
