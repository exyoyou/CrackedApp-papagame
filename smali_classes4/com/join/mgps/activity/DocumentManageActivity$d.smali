.class Lcom/join/mgps/activity/DocumentManageActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DocumentManageActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DocumentManageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 8
    .line 9
    iget v2, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 10
    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/join/mgps/event/i;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/join/mgps/event/i;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/i;->j(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 4
    .line 5
    iget v2, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 15
    .line 16
    iget v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 17
    .line 18
    iget v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v0, :cond_1

    .line 22
    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "com.join.mgps.activity.quitManage"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/join/mgps/activity/DocumentManageActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 40
    .line 41
    iget v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    iput v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lcom/join/mgps/Util/z;->h:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->downFinishToCopy(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 83
    .line 84
    invoke-direct {v0}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setGameId(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setFilePath(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setFileName(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setMd5(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/event/i;

    .line 123
    .line 124
    invoke-direct {v0}, Lcom/join/mgps/event/i;-><init>()V

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/i;->j(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "progress",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    int-to-long v3, p2

    .line 24
    mul-long v1, v1, v3

    .line 25
    .line 26
    const-wide/16 v3, 0x64

    .line 27
    .line 28
    div-long/2addr v1, v3

    .line 29
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "/"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "K"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v2, Lcom/join/mgps/event/i;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/join/mgps/event/i;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x3

    .line 67
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/join/mgps/event/i;->j(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p3}, Lcom/join/mgps/event/i;->g(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p2}, Lcom/join/mgps/event/i;->i(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Lcom/join/mgps/event/i;->h(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 93
    .line 94
    iget p2, p1, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 95
    .line 96
    const/4 p3, 0x1

    .line 97
    if-le p2, p3, :cond_1

    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object p3, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 109
    .line 110
    iget p3, p3, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 111
    .line 112
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p3, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 119
    .line 120
    iget p3, p3, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/event/i;->b()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {v2}, Lcom/join/mgps/event/i;->d()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p1, p2, p3, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 142
    .line 143
    if-eqz p1, :cond_2

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/join/mgps/event/i;->c()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/join/mgps/event/i;->b()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, "/S"

    .line 162
    .line 163
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {v2}, Lcom/join/mgps/event/i;->d()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {p1, p2, p3, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    .line 3
    iget v0, p1, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 18
    .line 19
    iget v1, v1, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "/"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 30
    .line 31
    iget v1, v1, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 41
    .line 42
    iget v1, v1, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 43
    .line 44
    const/16 v2, 0x64

    .line 45
    .line 46
    div-int/2addr v2, v1

    .line 47
    const-string v1, "0K"

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 8
    .line 9
    iget v2, v0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 10
    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$d;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/join/mgps/event/i;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/join/mgps/event/i;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/i;->j(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "actualSize"
        }
    .end annotation

    return-void
.end method
