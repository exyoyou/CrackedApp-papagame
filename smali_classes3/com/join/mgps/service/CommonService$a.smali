.class Lcom/join/mgps/service/CommonService$a;
.super Lm6/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->K1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZLcom/join/mgps/dto/DownloadGameArgsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic d:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$params",
            "val$downloadTask",
            "val$detialResultBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$a;->d:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService$a;->a:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    invoke-direct {p0}, Lm6/e;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/e;->a(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->a:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->d:Lcom/join/mgps/service/CommonService;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/e;->b(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->a:Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->d:Lcom/join/mgps/service/CommonService;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/e;->d(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "cld_"

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$a;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/join/mgps/enums/Dtype;->CLOUD:Lcom/join/mgps/enums/Dtype;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x5

    .line 87
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v4, Lcom/join/mgps/event/r;

    .line 102
    .line 103
    invoke-direct {v4, p1, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 110
    .line 111
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->gameDownloadNoCpuTips:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const-string v4, ""

    .line 140
    .line 141
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/join/mgps/Util/w0;->h()Lcom/join/mgps/Util/w0;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$a;->d:Lcom/join/mgps/service/CommonService;

    .line 170
    .line 171
    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2, v0, p1}, Lcom/join/mgps/Util/w0;->s(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$a;->d:Lcom/join/mgps/service/CommonService;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public onActivityShow(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm6/e;->onActivityShow(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/papa/sim/statistic/EventP$ChatId;->gameDownloadNoCpuTips:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "cld_"

    .line 35
    .line 36
    const-string v3, ""

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$a;->d:Lcom/join/mgps/service/CommonService;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
