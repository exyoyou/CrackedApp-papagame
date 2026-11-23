.class public Lcom/join/mgps/Util/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcom/join/mgps/Util/w0;


# instance fields
.field private a:Lcom/join/mgps/rpc/c;

.field private b:Z

.field private c:J

.field d:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

.field e:I

.field f:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/Util/w0;->b:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/Util/w0;->a:Lcom/join/mgps/rpc/c;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/w0;Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/Util/w0;->g(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/Util/w0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/Util/w0;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/Util/w0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/w0;->b:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/join/mgps/Util/w0;)Lcom/join/mgps/rpc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/w0;->a:Lcom/join/mgps/rpc/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/Util/w0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/Util/w0;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Lcom/join/mgps/Util/w0;Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;ILcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/Util/w0;->r(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;ILcom/join/mgps/dto/ExtBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cloudParams",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/w0$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/Util/w0$b;-><init>(Lcom/join/mgps/Util/w0;Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static h()Lcom/join/mgps/Util/w0;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/w0;->g:Lcom/join/mgps/Util/w0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/Util/w0;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/Util/w0;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/Util/w0;->g:Lcom/join/mgps/Util/w0;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/w0;->g:Lcom/join/mgps/Util/w0;

    .line 13
    .line 14
    return-object v0
.end method

.method public static i(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_8

    .line 3
    .line 4
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getModGameId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    const-string v3, "0"

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    :cond_1
    move-object v1, v2

    .line 43
    :cond_2
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_3
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v1}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    return-object v3

    .line 61
    :cond_4
    instance-of v3, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    check-cast p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cloneOne()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    instance-of v3, v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cloneOne()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    goto :goto_0

    .line 91
    :cond_6
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GInfo;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :goto_0
    if-nez p0, :cond_7

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "cld_"

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/join/mgps/enums/Dtype;->CLOUD:Lcom/join/mgps/enums/Dtype;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x5

    .line 142
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    invoke-virtual {p0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1, p0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    new-instance v2, Lcom/join/mgps/event/r;

    .line 189
    .line 190
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_8
    :goto_1
    return-object v0
.end method

.method public static j()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public static k(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 26
    .line 27
    const-string v2, "272"

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    :cond_2
    :goto_0
    return v0
.end method

.method public static l(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 26
    .line 27
    const-string v2, "269"

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    :cond_2
    :goto_0
    return v0
.end method

.method public static m(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 26
    .line 27
    const-string v2, "271"

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    :cond_2
    :goto_0
    return v0
.end method

.method public static n()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->isRunningCloud()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static p(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "272"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-string v2, "271"

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    :cond_2
    const/4 v0, 0x1

    .line 52
    :cond_3
    :goto_0
    return v0
.end method

.method private r(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;ILcom/join/mgps/dto/ExtBean;)V
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
            "context",
            "cloudParams",
            "info",
            "leftTime",
            "extBean"
        }
    .end annotation

    .line 1
    iget-wide v0, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/join/mgps/Util/w0;->c:J

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/w0;->d:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/Util/w0;->e:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/Util/w0;->f:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/HMCloudMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/high16 v0, 0x10000000

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-wide v1, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->d(Ljava/lang/String;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    int-to-long v0, p4

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->g(J)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->getSecretKey()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->h(Ljava/lang/String;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsg()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->i(Ljava/lang/String;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p5}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->f(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p3, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->g:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->a(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p3, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->b(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget p3, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->d:I

    .line 92
    .line 93
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->c(I)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget p2, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->c:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->e(I)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method o(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Lcom/join/mgps/dto/ExtBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cloudParams",
            "info",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/Util/w0$c;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/w0$c;-><init>(Lcom/join/mgps/Util/w0;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v6}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public q(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cloudParams",
            "extBean"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/join/mgps/Util/w0;->c:J

    .line 12
    .line 13
    iget-wide v2, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 14
    .line 15
    const-string v4, ""

    .line 16
    .line 17
    cmp-long v5, v0, v2

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/activity/HMCloudMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/high16 p3, 0x10000000

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 32
    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-wide v0, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 39
    .line 40
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->d(Ljava/lang/String;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p3, p0, Lcom/join/mgps/Util/w0;->e:I

    .line 55
    .line 56
    int-to-long v0, p3

    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->g(J)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p3, p0, Lcom/join/mgps/Util/w0;->d:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->getSecretKey()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->h(Ljava/lang/String;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p3, p0, Lcom/join/mgps/Util/w0;->d:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getTipsMsg()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->i(Ljava/lang/String;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p3, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->g:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->a(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p3, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 92
    .line 93
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->b(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget p3, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->d:I

    .line 98
    .line 99
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->c(I)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget p2, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->c:I

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->e(I)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t0()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e1()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 132
    .line 133
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-wide v2, p0, Lcom/join/mgps/Util/w0;->c:J

    .line 142
    .line 143
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v2, "gameId1"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-wide v2, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 164
    .line 165
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v2, "gameId2"

    .line 176
    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    new-instance v2, Lcom/join/mgps/Util/w0$a;

    .line 185
    .line 186
    invoke-direct {v2, p0, p2, p1, p3}, Lcom/join/mgps/Util/w0$a;-><init>(Lcom/join/mgps/Util/w0;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;)V

    .line 187
    .line 188
    .line 189
    const-class p2, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;

    .line 190
    .line 191
    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_2
    new-instance v0, Lcom/join/mgps/event/v;

    .line 196
    .line 197
    sget-object v1, Lcom/join/mgps/activity/HMCloudMainActivity;->EVENT_NAME:Ljava/lang/String;

    .line 198
    .line 199
    invoke-direct {v0, v1}, Lcom/join/mgps/event/v;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/Util/w0;->g(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V

    .line 210
    .line 211
    .line 212
    :goto_0
    return-void
.end method

.method public s(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "extBean"
        }
    .end annotation

    .line 1
    const-string v0, "cld_"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p3}, Lcom/join/mgps/Util/w0;->q(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
