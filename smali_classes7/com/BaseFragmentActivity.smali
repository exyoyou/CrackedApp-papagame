.class public Lcom/BaseFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/BaseFragmentActivity$BroadcasExtFA;,
        Lcom/BaseFragmentActivity$PermissRecver;,
        Lcom/BaseFragmentActivity$n;,
        Lcom/BaseFragmentActivity$m;
    }
.end annotation


# static fields
.field public static final PERMISSION_INSTALL_RESULT_CODE:I = 0x271a


# instance fields
.field apkInstallDialog:Lcom/join/mgps/dialog/d;

.field private baiduChannelPermissionCallBack:Lv6/d;

.field private broadcasExt:Lcom/BaseFragmentActivity$BroadcasExtFA;

.field contentView:Landroid/view/View;

.field dialog:Landroidx/appcompat/app/AlertDialog$Builder;

.field dialogU:Landroid/app/Dialog;

.field fialePath:Ljava/lang/String;

.field gameid:Ljava/lang/String;

.field gestureDetector:Landroid/view/GestureDetector;

.field private handlerx:Landroid/os/Handler;

.field hasdestroyed:Z

.field private final intentFilter12_:Landroid/content/IntentFilter;

.field isInBackground:Z

.field isSo:Z

.field isfirst:Z

.field lastShowPopTime:J

.field private mHandler:Landroid/os/Handler;

.field private final onReciviedReceiver_:Landroid/content/BroadcastReceiver;

.field permissionDialog:Landroidx/appcompat/app/AlertDialog;

.field popupWindow:Landroid/widget/PopupWindow;

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;

.field recver:Lcom/BaseFragmentActivity$PermissRecver;

.field private time:Lcom/BaseFragmentActivity$n;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/BaseFragmentActivity;->isfirst:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isSo:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    .line 28
    new-instance v0, Lcom/BaseFragmentActivity$l;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$l;-><init>(Lcom/BaseFragmentActivity;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 41
    .line 42
    new-instance v0, Lcom/BaseFragmentActivity$10;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$10;-><init>(Lcom/BaseFragmentActivity;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/BaseFragmentActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    .line 48
    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->showDownFinishPre(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/BaseFragmentActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->showDownFinish(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/BaseFragmentActivity;->onRecivied(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/BaseFragmentActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/BaseFragmentActivity;->getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/BaseFragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->setUnzipFailedStatus(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameid",
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/tbruyelle/rxpermissions2/c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v0, v2, v3

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/BaseFragmentActivity$c;

    .line 19
    .line 20
    invoke-direct {v2, p0, p2, p1}, Lcom/BaseFragmentActivity$c;-><init>(Lcom/BaseFragmentActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c4(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/BaseFragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;->lambda$onResume$0()V

    return-void
.end method

.method private initPopData(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0fee

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object p1, p0, Lcom/BaseFragmentActivity;->gameid:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Lcom/BaseFragmentActivity$d;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/BaseFragmentActivity$d;-><init>(Lcom/BaseFragmentActivity;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 21
    .line 22
    const v1, 0x7f0a1767

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 32
    .line 33
    const v2, 0x7f0a1188

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 43
    .line 44
    const v3, 0x7f0a084f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 54
    .line 55
    const v4, 0x7f0a094d

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 65
    .line 66
    const v5, 0x7f0a02fb

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v5, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_0

    .line 98
    .line 99
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 100
    .line 101
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    iput-boolean v3, p0, Lcom/BaseFragmentActivity;->isSo:Z

    .line 106
    .line 107
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    sget-object v5, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 112
    .line 113
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 114
    .line 115
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v3, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    sget-object v6, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 135
    .line 136
    new-instance v7, Lcom/papa/sim/statistic/Ext;

    .line 137
    .line 138
    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 150
    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    iput-boolean v5, p0, Lcom/BaseFragmentActivity;->isSo:Z

    .line 154
    .line 155
    const-string v5, "\u5b89\u88c5\u5b8c\u6210"

    .line 156
    .line 157
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "\u5f00\u59cb\u6e38\u620f"

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/BaseFragmentActivity$e;

    .line 180
    .line 181
    invoke-direct {v0, p0, p1}, Lcom/BaseFragmentActivity$e;-><init>(Lcom/BaseFragmentActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lcom/BaseFragmentActivity$f;

    .line 188
    .line 189
    invoke-direct {p1, p0}, Lcom/BaseFragmentActivity$f;-><init>(Lcom/BaseFragmentActivity;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onRecivied(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "context"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/papa/sim/statistic/Event;->Unzip_nopermission:Lcom/papa/sim/statistic/Event;

    .line 11
    .line 12
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 25
    .line 26
    const v1, 0x7f13000d

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    .line 44
    const-string v1, "\u89e3\u538b\u5931\u8d25"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    .line 51
    const-string v1, "\u672a\u83b7\u53d6\u5230\u5b58\u50a8\u6743\u9650"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    .line 58
    new-instance v1, Lcom/BaseFragmentActivity$a;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, p2}, Lcom/BaseFragmentActivity$a;-><init>(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "\u53bb\u83b7\u53d6"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    .line 70
    new-instance v1, Lcom/BaseFragmentActivity$b;

    .line 71
    .line 72
    invoke-direct {v1, p0, p1, p2}, Lcom/BaseFragmentActivity$b;-><init>(Lcom/BaseFragmentActivity;Landroid/content/Intent;Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    const-string p1, "\u53d6\u6d88"

    .line 76
    .line 77
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method private setTranslucentStatus(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    .line 13
    const/high16 v2, 0x4000000

    .line 14
    .line 15
    or-int/2addr p1, v2

    .line 16
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 20
    .line 21
    const v2, -0x4000001

    .line 22
    .line 23
    .line 24
    and-int/2addr p1, v2

    .line 25
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private setUnzipFailedStatus(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/16 v0, 0xd

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, p1, v1}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/servcie/j;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lcom/join/mgps/event/r;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public static setWindowStatusBarColor(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "colorResId"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->t(Landroid/app/Activity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private showDownFinish(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    iget-boolean v4, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-wide v6, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 34
    .line 35
    sub-long/2addr v4, v6

    .line 36
    const-wide/16 v6, 0x7d0

    .line 37
    .line 38
    cmp-long v8, v4, v6

    .line 39
    .line 40
    if-lez v8, :cond_8

    .line 41
    .line 42
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    instance-of v4, v4, Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 49
    .line 50
    if-nez v4, :cond_8

    .line 51
    .line 52
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    instance-of v4, v4, Lcom/join/mgps/activity/GameMainActivity3_;

    .line 59
    .line 60
    if-nez v4, :cond_8

    .line 61
    .line 62
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v4, v4, Lcom/join/mgps/activity/NewArenaMainActivty_;

    .line 69
    .line 70
    if-nez v4, :cond_8

    .line 71
    .line 72
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    instance-of v4, v4, Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 79
    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    instance-of v4, v4, Lcom/join/mgps/activity/PrivateDomainDownloadActivity;

    .line 89
    .line 90
    if-nez v4, :cond_8

    .line 91
    .line 92
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    instance-of v4, v4, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;

    .line 99
    .line 100
    if-nez v4, :cond_8

    .line 101
    .line 102
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    instance-of v4, v4, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 109
    .line 110
    if-nez v4, :cond_8

    .line 111
    .line 112
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    instance-of v4, v4, Lcom/join/mgps/activity/EndGameLaunchActivity_;

    .line 119
    .line 120
    if-nez v4, :cond_8

    .line 121
    .line 122
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    instance-of v4, v4, Lcom/join/mgps/activity/DiscoveryPaiweiActivity_;

    .line 129
    .line 130
    if-nez v4, :cond_8

    .line 131
    .line 132
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    instance-of v4, v4, Lcom/join/mgps/activity/EndGameActivity_;

    .line 139
    .line 140
    if-nez v4, :cond_8

    .line 141
    .line 142
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    instance-of v4, v4, Lcom/join/mgps/activity/EndGameDetailActivity_;

    .line 149
    .line 150
    if-nez v4, :cond_8

    .line 151
    .line 152
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    instance-of v4, v4, Lcom/join/mgps/activity/EndGameLaunchActivity_;

    .line 159
    .line 160
    if-nez v4, :cond_8

    .line 161
    .line 162
    if-nez v3, :cond_3

    .line 163
    .line 164
    iget-object v4, p0, Lcom/BaseFragmentActivity;->time:Lcom/BaseFragmentActivity$n;

    .line 165
    .line 166
    if-eqz v4, :cond_2

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/BaseFragmentActivity$n;->onFinish()V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_2
    new-instance v10, Lcom/BaseFragmentActivity$n;

    .line 173
    .line 174
    const-wide/16 v6, 0x2710

    .line 175
    .line 176
    const-wide/16 v8, 0x3e8

    .line 177
    .line 178
    move-object v4, v10

    .line 179
    move-object v5, p0

    .line 180
    invoke-direct/range {v4 .. v9}, Lcom/BaseFragmentActivity$n;-><init>(Lcom/BaseFragmentActivity;JJ)V

    .line 181
    .line 182
    .line 183
    iput-object v10, p0, Lcom/BaseFragmentActivity;->time:Lcom/BaseFragmentActivity$n;

    .line 184
    .line 185
    :goto_1
    iget-object v4, p0, Lcom/BaseFragmentActivity;->time:Lcom/BaseFragmentActivity$n;

    .line 186
    .line 187
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 188
    .line 189
    .line 190
    :cond_3
    if-eqz v3, :cond_4

    .line 191
    .line 192
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/g0;->H(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_4
    iget-object v3, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 201
    .line 202
    if-eqz v3, :cond_5

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_7

    .line 209
    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    iget-wide v3, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 215
    .line 216
    sub-long/2addr v0, v3

    .line 217
    const-wide/16 v3, 0x1388

    .line 218
    .line 219
    cmp-long v5, v0, v3

    .line 220
    .line 221
    if-lez v5, :cond_7

    .line 222
    .line 223
    const-string v0, "popwindow"

    .line 224
    .line 225
    const-string v1, "33333333333"

    .line 226
    .line 227
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 233
    .line 234
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 235
    .line 236
    .line 237
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    const/16 v4, 0x30

    .line 242
    .line 243
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v0

    .line 250
    iput-wide v0, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_5
    if-eqz v0, :cond_6

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_6

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    :cond_6
    if-eqz v1, :cond_7

    .line 267
    .line 268
    invoke-direct {p0}, Lcom/BaseFragmentActivity;->showPopwindow()V

    .line 269
    .line 270
    .line 271
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/BaseFragmentActivity;->initPopData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    :cond_8
    :goto_3
    return-void
.end method

.method private showDownFinishPre(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    iput p1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    .line 12
    .line 13
    const-wide/16 v1, 0x12c

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private showPopwindow()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d00cf

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 14
    .line 15
    new-instance v0, Landroid/widget/PopupWindow;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    const/4 v3, -0x2

    .line 21
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 47
    .line 48
    const v2, 0x7f130159

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 55
    .line 56
    new-instance v2, Lcom/BaseFragmentActivity$g;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/BaseFragmentActivity$g;-><init>(Lcom/BaseFragmentActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const v2, 0x7f0713ac

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v2, p0, Lcom/BaseFragmentActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 82
    .line 83
    if-nez v2, :cond_0

    .line 84
    .line 85
    new-instance v2, Landroid/view/GestureDetector;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    new-instance v4, Lcom/BaseFragmentActivity$h;

    .line 94
    .line 95
    invoke-direct {v4, p0, v0}, Lcom/BaseFragmentActivity$h;-><init>(Lcom/BaseFragmentActivity;I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Lcom/BaseFragmentActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 102
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    iget-wide v4, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 116
    .line 117
    sub-long/2addr v2, v4

    .line 118
    const-wide/16 v4, 0x1388

    .line 119
    .line 120
    cmp-long v0, v2, v4

    .line 121
    .line 122
    if-lez v0, :cond_1

    .line 123
    .line 124
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/BaseFragmentActivity;->contentView:Landroid/view/View;

    .line 127
    .line 128
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const/16 v4, 0x30

    .line 136
    .line 137
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    iput-wide v0, p0, Lcom/BaseFragmentActivity;->lastShowPopTime:J

    .line 145
    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public checkPermiss(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permisson"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs checkPermiss([Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permisson"
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected customStatusBar()V
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "vivo"

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string v1, "oppo"

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, -0x1

    .line 30
    invoke-static {p0, v0, v2}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const v0, -0x808081

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v2}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->d(Landroid/app/Activity;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {p0, v0}, Lcom/join/mgps/Util/p2;->c(Landroid/app/Activity;I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method public getPermison(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permisson"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/BaseFragmentActivity$m;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$m;-><init>(Lcom/BaseFragmentActivity;)V

    .line 2
    iput-object p1, v0, Lcom/BaseFragmentActivity$m;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/BaseFragmentActivity;->requestPermission(Lcom/BaseFragmentActivity$m;)V

    return-void
.end method

.method public varargs getPermison([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permisss"
        }
    .end annotation

    .line 4
    :try_start_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/BaseFragmentActivity$i;

    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$i;-><init>(Lcom/BaseFragmentActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
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
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x271a

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 p2, 0x1a

    .line 11
    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/b;->a(Landroid/content/pm/PackageManager;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lcom/BaseFragmentActivity;->fialePath:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    .line 9
    .line 10
    new-instance p1, Lcom/BaseFragmentActivity$BroadcasExtFA;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/BaseFragmentActivity$BroadcasExtFA;-><init>(Lcom/BaseFragmentActivity;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/BaseFragmentActivity;->broadcasExt:Lcom/BaseFragmentActivity$BroadcasExtFA;

    .line 16
    .line 17
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/BaseFragmentActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    new-instance p1, Landroid/content/IntentFilter;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appfinish"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/BaseFragmentActivity;->broadcasExt:Lcom/BaseFragmentActivity$BroadcasExtFA;

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object p1, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v0, "com.wufun.unzip.failed"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string v0, "com.wufun.down.androidversion"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 54
    .line 55
    const-string v0, "com.wufun.down.arch.unsupported"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 61
    .line 62
    const-string v0, "com.wufun.launch.arch.unsupported"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/BaseFragmentActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/BaseFragmentActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_0
    new-instance p1, Lcom/BaseFragmentActivity$PermissRecver;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/BaseFragmentActivity$PermissRecver;-><init>(Lcom/BaseFragmentActivity;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/BaseFragmentActivity;->recver:Lcom/BaseFragmentActivity$PermissRecver;

    .line 85
    .line 86
    new-instance p1, Landroid/content/IntentFilter;

    .line 87
    .line 88
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v0, "com.wufun.get.permission"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "com.wufun.get.downFinish"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/BaseFragmentActivity;->recver:Lcom/BaseFragmentActivity$PermissRecver;

    .line 106
    .line 107
    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lcom/join/mgps/va/overmind/i;->W(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/BaseFragmentActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lv6/d;->b()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    .line 34
    .line 35
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/BaseFragmentActivity;->recver:Lcom/BaseFragmentActivity$PermissRecver;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/BaseFragmentActivity;->broadcasExt:Lcom/BaseFragmentActivity$BroadcasExtFA;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/BaseFragmentActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_2
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/va/overmind/i;->W(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/BaseFragmentActivity;->hasdestroyed:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/BaseFragmentActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lv6/d;->b()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/BaseFragmentActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 31
    .line 32
    invoke-interface {v0}, Lv6/d;->a()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    .line 37
    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isInBackground:Z

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->a(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v2, Lcom/e;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/e;-><init>(Lcom/BaseFragmentActivity;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0x1f4

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/BaseFragmentActivity;->isfirst:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/BaseFragmentActivity;->isfirst:Z

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/16 v4, 0xb

    .line 97
    .line 98
    if-ne v3, v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v4, Lcom/join/mgps/pref/PrefDef_;

    .line 105
    .line 106
    invoke-direct {v4, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_4

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_3

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const-string v4, "com.quark.browser"

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_3

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    instance-of v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 167
    .line 168
    if-nez v3, :cond_4

    .line 169
    .line 170
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const/4 v2, 0x2

    .line 183
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_5

    .line 208
    .line 209
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-eqz v2, :cond_5

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_5

    .line 228
    .line 229
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_5

    .line 234
    .line 235
    invoke-static {p0, v3}, Lcom/join/mgps/Util/l;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_5

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const-string v3, "\u7f51\u6e38"

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_5

    .line 262
    .line 263
    invoke-direct {p0, v0}, Lcom/BaseFragmentActivity;->showDownFinishPre(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, ""

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_5
    iget-object v0, p0, Lcom/BaseFragmentActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 276
    .line 277
    if-eqz v0, :cond_6

    .line 278
    .line 279
    invoke-interface {v0}, Lv6/d;->b()V

    .line 280
    .line 281
    .line 282
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->h4(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method

.method requestPermission(Lcom/BaseFragmentActivity$m;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object v0, p1, Lcom/BaseFragmentActivity$m;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    const-string v0, "request permission"

    .line 14
    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/BaseFragmentActivity$m;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c4(Landroid/app/Activity;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/BaseFragmentActivity;->permissionDialog:Landroidx/appcompat/app/AlertDialog;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 39
    .line 40
    .line 41
    :cond_2
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    iget-object v0, p1, Lcom/BaseFragmentActivity$m;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iput-object v0, p0, Lcom/BaseFragmentActivity;->fialePath:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/BaseFragmentActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->show_unknown_source()Lorg/androidannotations/api/sharedpreferences/d;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v1, 0x1a

    .line 81
    .line 82
    if-lt v0, v1, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/BaseFragmentActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/BaseFragmentActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 97
    .line 98
    .line 99
    :cond_4
    new-instance v0, Lcom/join/mgps/dialog/d;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/BaseFragmentActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 105
    .line 106
    new-instance v1, Lcom/BaseFragmentActivity$j;

    .line 107
    .line 108
    invoke-direct {v1, p0, p1}, Lcom/BaseFragmentActivity$j;-><init>(Lcom/BaseFragmentActivity;Lcom/BaseFragmentActivity$m;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/d;->b(Lcom/join/mgps/callbacks/d;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/BaseFragmentActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/BaseFragmentActivity;->handlerx:Landroid/os/Handler;

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    :try_start_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 130
    .line 131
    .line 132
    filled-new-array {v0}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v0, Lcom/BaseFragmentActivity$k;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$k;-><init>(Lcom/BaseFragmentActivity;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :cond_7
    :goto_0
    return-void
.end method

.method public setChannelPermissionCallBack(Lv6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 2
    .line 3
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 2
    invoke-virtual {p0}, Lcom/BaseFragmentActivity;->customStatusBar()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/BaseFragmentActivity;->customStatusBar()V

    return-void
.end method
