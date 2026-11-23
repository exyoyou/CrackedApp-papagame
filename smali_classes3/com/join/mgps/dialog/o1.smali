.class public Lcom/join/mgps/dialog/o1;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Lcom/join/mgps/pref/PrefDef_;

.field private j:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/join/mgps/dto/WxProgram;

.field private n:Lcom/join/mgps/dto/DomainInfoBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f13015d

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->d:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->h:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/join/mgps/dialog/o1;->n:Lcom/join/mgps/dto/DomainInfoBean;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/dialog/o1;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->h:Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    if-eqz p2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-class v2, Lcom/join/mgps/dto/WxProgram;

    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/join/mgps/dto/WxProgram;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/dialog/o1;->m:Lcom/join/mgps/dto/WxProgram;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->k:Landroid/widget/TextView;

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/WxProgram;->getGuide_text()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->g:Landroid/widget/TextView;

    .line 109
    .line 110
    if-nez v0, :cond_2

    .line 111
    .line 112
    const v0, 0x7f0a194a

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/join/mgps/dialog/o1;->g:Landroid/widget/TextView;

    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->g:Landroid/widget/TextView;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->m:Lcom/join/mgps/dto/WxProgram;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/join/mgps/dto/WxProgram;->getButton_text()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdGameStart:Lcom/papa/sim/statistic/Event;

    .line 148
    .line 149
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 150
    .line 151
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {v2, p2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {v0, v1, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    sget-object v0, Lcom/papa/sim/statistic/Event;->showmodRunNormal:Lcom/papa/sim/statistic/Event;

    .line 186
    .line 187
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 188
    .line 189
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 197
    .line 198
    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    const-string v1, "1"

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_5
    const-string v1, "0"

    .line 208
    .line 209
    :goto_1
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a037c

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    if-ne p1, v0, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->m:Lcom/join/mgps/dto/WxProgram;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "game_start"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/WxProgram;->setSceneType(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->m:Lcom/join/mgps/dto/WxProgram;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->C4(Landroid/content/Context;Lcom/join/mgps/dto/WxProgram;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->n:Lcom/join/mgps/dto/DomainInfoBean;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdGameStartClick:Lcom/papa/sim/statistic/Event;

    .line 43
    .line 44
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/join/mgps/dialog/o1;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/join/mgps/dialog/o1;->n:Lcom/join/mgps/dto/DomainInfoBean;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/join/mgps/dialog/o1;->n:Lcom/join/mgps/dto/DomainInfoBean;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const v0, 0x7f0a19e2

    .line 92
    .line 93
    .line 94
    if-ne p1, v0, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    const/4 v0, 0x4

    .line 101
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_run_state(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/join/mgps/dialog/o1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const v0, 0x7f0a0a22

    .line 127
    .line 128
    .line 129
    if-ne p1, v0, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0209

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0a10d8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->h:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a0a22

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->e:Landroid/view/View;

    .line 36
    .line 37
    const p1, 0x7f0a194a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->g:Landroid/widget/TextView;

    .line 47
    .line 48
    const p1, 0x7f0a037c

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->f:Landroid/view/View;

    .line 56
    .line 57
    const p1, 0x7f0a14a2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 67
    .line 68
    const p1, 0x7f0a194f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->k:Landroid/widget/TextView;

    .line 78
    .line 79
    const p1, 0x7f0a19e2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->l:Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->e:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->f:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/dialog/o1;->l:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/dialog/o1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 115
    .line 116
    return-void
.end method
