.class public Lcom/join/mgps/service/UpdateService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/UpdateService$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EService;
.end annotation


# instance fields
.field private b:Landroid/app/NotificationManager;

.field private c:Ljava/io/File;

.field private d:Z

.field private e:Lcom/join/mgps/service/UpdateService$b;

.field private f:I

.field private g:I

.field private h:Landroidx/core/app/NotificationCompat$Builder;

.field i:Z

.field private j:Lcom/join/mgps/dto/VersionDto;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/service/UpdateService;->c:Ljava/io/File;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateService;->d:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/service/UpdateService;->f:I

    .line 11
    .line 12
    const/16 v1, 0x4d2

    .line 13
    .line 14
    iput v1, p0, Lcom/join/mgps/service/UpdateService;->g:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateService;->i:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateService;->k:Z

    .line 19
    .line 20
    return-void
.end method

.method private a(Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/service/UpdateService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/UpdateService;->k:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->c:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/service/UpdateService;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateService;->c:Ljava/io/File;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/join/mgps/service/UpdateService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/service/UpdateService;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/service/UpdateService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/service/UpdateService;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/join/mgps/service/UpdateService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/service/UpdateService;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->e:Lcom/join/mgps/service/UpdateService$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/dto/VersionDto;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->j:Lcom/join/mgps/dto/VersionDto;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/service/UpdateService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/service/UpdateService;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->b:Landroid/app/NotificationManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/service/UpdateService;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/service/UpdateService;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->h:Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method private n(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateService$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/service/UpdateService$a;-><init>(Lcom/join/mgps/service/UpdateService;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    const-string v0, "GET"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "Content-Type"

    .line 18
    .line 19
    const-string v1, "application/octet-stream"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "Connection"

    .line 33
    .line 34
    const-string v1, "Keep-Alive"

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "downNotInstall"

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/service/UpdateService;->i:Z

    .line 12
    .line 13
    const-string v1, "papaUpdateinfo"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/VersionDto;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->j:Lcom/join/mgps/dto/VersionDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-boolean v1, p0, Lcom/join/mgps/service/UpdateService;->i:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const-string v1, "notification"

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/NotificationManager;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->b:Landroid/app/NotificationManager;

    .line 41
    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v2, 0x1a

    .line 45
    .line 46
    if-lt v1, v2, :cond_1

    .line 47
    .line 48
    const-string v1, "channel_1"

    .line 49
    .line 50
    const-string v2, "\u66f4\u65b0"

    .line 51
    .line 52
    invoke-static {}, Lk1/d;->a()V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    invoke-static {v1, v2, v3}, Lcom/aggmoread/sdk/z/a/j/u;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v2, v4, v4}, Lcom/aggmoread/sdk/z/a/j/q;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3}, Lcom/join/mgps/service/d;->a(Landroid/app/NotificationChannel;I)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/join/mgps/service/UpdateService;->b:Landroid/app/NotificationManager;

    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/aggmoread/sdk/z/a/j/t;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    .line 74
    invoke-direct {v2, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/join/mgps/service/UpdateService;->h:Landroidx/core/app/NotificationCompat$Builder;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->h:Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const v2, 0x7f080a79

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    long-to-int v4, v3

    .line 103
    new-instance v3, Landroid/content/Intent;

    .line 104
    .line 105
    const-class v5, Lcom/join/mgps/activity/MGMainActivity_;

    .line 106
    .line 107
    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    const/high16 v5, 0x8000000

    .line 111
    .line 112
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/join/mgps/service/UpdateService;->h:Landroidx/core/app/NotificationCompat$Builder;

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v4, "\u5df2\u4e0b\u8f7d0%"

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const v5, 0x7f120038

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService;->h:Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    .line 152
    const/4 v2, 0x1

    .line 153
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService;->b:Landroid/app/NotificationManager;

    .line 157
    .line 158
    iget v2, p0, Lcom/join/mgps/service/UpdateService;->g:I

    .line 159
    .line 160
    iget-object v3, p0, Lcom/join/mgps/service/UpdateService;->h:Landroidx/core/app/NotificationCompat$Builder;

    .line 161
    .line 162
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_1
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :cond_2
    :goto_2
    new-instance v1, Lcom/join/mgps/service/UpdateService$b;

    .line 175
    .line 176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-direct {v1, p0, v2, p0}, Lcom/join/mgps/service/UpdateService$b;-><init>(Lcom/join/mgps/service/UpdateService;Landroid/os/Looper;Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->e:Lcom/join/mgps/service/UpdateService$b;

    .line 184
    .line 185
    const/4 v2, 0x3

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService;->e:Lcom/join/mgps/service/UpdateService$b;

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .line 198
    .line 199
    if-eqz p1, :cond_4

    .line 200
    .line 201
    const-string v0, "url"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v2, ""

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_3

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_3
    iget-boolean v1, p0, Lcom/join/mgps/service/UpdateService;->k:Z

    .line 217
    .line 218
    if-nez v1, :cond_4

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {p0, v0}, Lcom/join/mgps/service/UpdateService;->n(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    return p1
.end method
