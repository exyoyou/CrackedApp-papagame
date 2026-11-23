.class public Lcom/BaseAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/join/mgps/customview/LoadingLayout$b;
.implements Lcom/join/mgps/customview/LoadingLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/BaseAppCompatActivity$BroadcasExtFA;,
        Lcom/BaseAppCompatActivity$PermissRecver;,
        Lcom/BaseAppCompatActivity$EmuOutResultReceiver;,
        Lcom/BaseAppCompatActivity$t;,
        Lcom/BaseAppCompatActivity$u;
    }
.end annotation


# static fields
.field public static final PERMISSION_INSTALL_RESULT_CODE:I = 0x271a


# instance fields
.field private adResultReceiver:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

.field apkInstallDialog:Lcom/join/mgps/dialog/d;

.field private baiduChannelPermissionCallBack:Lv6/d;

.field private broadcasExt:Lcom/BaseAppCompatActivity$BroadcasExtFA;

.field protected canShowFeedBack:Z

.field contentView:Landroid/view/View;

.field private databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

.field dialog:Landroidx/appcompat/app/AlertDialog$Builder;

.field dialogU:Landroid/app/Dialog;

.field fialePath:Ljava/lang/String;

.field fullScreenCfg:I

.field private fullScreenFlag:Z

.field gameid:Ljava/lang/String;

.field gestureDetector:Landroid/view/GestureDetector;

.field private handlerx:Landroid/os/Handler;

.field protected hasDialog:Z

.field hasdestroyed:Z

.field private hideHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;

.field private final intentFilter12_:Landroid/content/IntentFilter;

.field protected isBackHome:Z

.field isInBackground:Z

.field isSo:Z

.field isfirst:Z

.field private loading:Lcom/join/android/app/common/dialog/e;

.field protected loadingHintMsg:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

.field private netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

.field private final onReciviedReceiver_:Landroid/content/BroadcastReceiver;

.field popupWindow:Landroid/widget/PopupWindow;

.field protected prefDef_:Lcom/join/mgps/pref/PrefDef_;

.field rangeBottom:I

.field rangeTop:I

.field recver:Lcom/BaseAppCompatActivity$PermissRecver;

.field private time:Lcom/BaseAppCompatActivity$u;

.field timeLastDe:J

.field protected uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->loadingHintMsg:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/BaseAppCompatActivity;->isfirst:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/BaseAppCompatActivity;->canShowFeedBack:Z

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/BaseAppCompatActivity;->hasdestroyed:Z

    .line 29
    .line 30
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/BaseAppCompatActivity;->fullScreenFlag:Z

    .line 33
    .line 34
    iput v2, p0, Lcom/BaseAppCompatActivity;->fullScreenCfg:I

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/BaseAppCompatActivity;->isSo:Z

    .line 39
    .line 40
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    .line 42
    new-instance v0, Lcom/BaseAppCompatActivity$g;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$g;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->handlerx:Landroid/os/Handler;

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/BaseAppCompatActivity;->timeLastDe:J

    .line 52
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 59
    .line 60
    new-instance v0, Lcom/BaseAppCompatActivity$17;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$17;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    .line 66
    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseAppCompatActivity;->showDownFinishPre(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/BaseAppCompatActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->handlerx:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/BaseAppCompatActivity;)Lv6/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/BaseAppCompatActivity;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onRecivied(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/BaseAppCompatActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/BaseAppCompatActivity;->getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/BaseAppCompatActivity;->setUnzipFailedStatus(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearHiderListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->hideHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/BaseAppCompatActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
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
    new-instance v2, Lcom/BaseAppCompatActivity$k;

    .line 19
    .line 20
    invoke-direct {v2, p0, p2, p1}, Lcom/BaseAppCompatActivity$k;-><init>(Lcom/BaseAppCompatActivity;Landroid/content/Context;Ljava/lang/String;)V

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

.method public static synthetic i(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;->lambda$onResume$0()V

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
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->gameid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

    .line 4
    .line 5
    const v1, 0x7f0a0fee

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/BaseAppCompatActivity$b;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/BaseAppCompatActivity$b;-><init>(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

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
    iget-object v1, p0, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

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
    iget-object v2, p0, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

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
    iget-object v3, p0, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

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
    iget-object v4, p0, Lcom/BaseAppCompatActivity;->contentView:Landroid/view/View;

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
    iput-boolean v3, p0, Lcom/BaseAppCompatActivity;->isSo:Z

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
    iput-boolean v5, p0, Lcom/BaseAppCompatActivity;->isSo:Z

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
    new-instance v0, Lcom/BaseAppCompatActivity$c;

    .line 180
    .line 181
    invoke-direct {v0, p0, p1}, Lcom/BaseAppCompatActivity$c;-><init>(Lcom/BaseAppCompatActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lcom/BaseAppCompatActivity$d;

    .line 188
    .line 189
    invoke-direct {p1, p0}, Lcom/BaseAppCompatActivity$d;-><init>(Lcom/BaseAppCompatActivity;)V

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
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->isInBackground:Z

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
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

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
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

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
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    .line 44
    const-string v1, "\u89e3\u538b\u5931\u8d25"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    .line 51
    const-string v1, "\u672a\u83b7\u53d6\u5230\u5b58\u50a8\u6743\u9650"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    .line 58
    new-instance v1, Lcom/BaseAppCompatActivity$h;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, p2}, Lcom/BaseAppCompatActivity$h;-><init>(Lcom/BaseAppCompatActivity;Landroid/content/Intent;Landroid/content/Context;)V

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
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    .line 70
    new-instance v1, Lcom/BaseAppCompatActivity$i;

    .line 71
    .line 72
    invoke-direct {v1, p0, p1, p2}, Lcom/BaseAppCompatActivity$i;-><init>(Lcom/BaseAppCompatActivity;Landroid/content/Intent;Landroid/content/Context;)V

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
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

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
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

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
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->handlerx:Landroid/os/Handler;

    .line 12
    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private declared-synchronized updateHider()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->fullScreenFlag:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 11
    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    :goto_0
    iput v0, p0, Lcom/BaseAppCompatActivity;->fullScreenCfg:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/BaseAppCompatActivity;->fullScreenCfg:I

    .line 24
    .line 25
    :goto_1
    iget v0, p0, Lcom/BaseAppCompatActivity;->fullScreenCfg:I

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->hideHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v0, Lcom/BaseAppCompatActivity$r;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$r;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 42
    .line 43
    const v0, 0x1020002

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v1, p0, Lcom/BaseAppCompatActivity;->fullScreenCfg:I

    .line 51
    .line 52
    invoke-static {p0, v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->a(Landroid/app/Activity;Landroid/view/View;I)Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->e()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 62
    .line 63
    new-instance v1, Lcom/BaseAppCompatActivity$s;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$s;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_3
    monitor-exit p0

    .line 96
    throw v0
.end method


# virtual methods
.method public callBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->showLoadingLayoutBase()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->loadDataBase()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public getHelper()Lcom/join/android/app/common/db/DatabaseHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq5/e;->d(Landroid/content/Context;)Lq5/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lq5/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 16
    .line 17
    return-object v0
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoadingMarginTop()I
    .locals 1

    .line 1
    const/high16 v0, 0x42400000    # 48.0f

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hideKeyBoardHandler()V
    .locals 0

    return-void
.end method

.method public hideLoadingLayoutBase()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/BaseAppCompatActivity$m;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$m;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public isHindeLoadingLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public loadDataBase()V
    .locals 0

    return-void
.end method

.method public noDataCallBack()V
    .locals 0

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
    iget-object p2, p0, Lcom/BaseAppCompatActivity;->fialePath:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->handlerx:Landroid/os/Handler;

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
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->broadcasExt:Lcom/BaseAppCompatActivity$BroadcasExtFA;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/BaseAppCompatActivity$BroadcasExtFA;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/BaseAppCompatActivity$BroadcasExtFA;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->broadcasExt:Lcom/BaseAppCompatActivity$BroadcasExtFA;

    .line 17
    .line 18
    new-instance p1, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appfinish"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->broadcasExt:Lcom/BaseAppCompatActivity$BroadcasExtFA;

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/BaseAppCompatActivity;->hasdestroyed:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    :try_start_0
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v0, "com.wufun.unzip.failed"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v0, "com.wufun.down.androidversion"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 62
    .line 63
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.deletecheckhasfile"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 69
    .line 70
    const-string v0, "com.wufun.down.arch.unsupported"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 76
    .line 77
    const-string v0, "com.wufun.launch.arch.unsupported"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->intentFilter12_:Landroid/content/IntentFilter;

    .line 85
    .line 86
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :goto_0
    new-instance p1, Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 95
    .line 96
    invoke-direct {p1}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 100
    .line 101
    new-instance v0, Lcom/BaseAppCompatActivity$j;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$j;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a(Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Landroid/content/IntentFilter;

    .line 110
    .line 111
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 120
    .line 121
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-virtual {p0, p0}, Lcom/BaseAppCompatActivity;->setupKeyboardHandler(Landroid/app/Activity;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->recver:Lcom/BaseAppCompatActivity$PermissRecver;

    .line 128
    .line 129
    if-nez p1, :cond_2

    .line 130
    .line 131
    new-instance p1, Lcom/BaseAppCompatActivity$PermissRecver;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/BaseAppCompatActivity$PermissRecver;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->recver:Lcom/BaseAppCompatActivity$PermissRecver;

    .line 137
    .line 138
    new-instance p1, Landroid/content/IntentFilter;

    .line 139
    .line 140
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v0, "com.wufun.get.permission"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "com.wufun.get.downFinish"

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/BaseAppCompatActivity;->recver:Lcom/BaseAppCompatActivity$PermissRecver;

    .line 158
    .line 159
    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const v0, 0x7f07133e

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Lcom/BaseAppCompatActivity;->rangeTop:I

    .line 174
    .line 175
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/q;->k(Landroid/app/Activity;)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iput p1, p0, Lcom/BaseAppCompatActivity;->rangeBottom:I

    .line 184
    .line 185
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->adResultReceiver:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    .line 186
    .line 187
    if-nez p1, :cond_3

    .line 188
    .line 189
    new-instance p1, Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    .line 190
    .line 191
    invoke-direct {p1, p0}, Lcom/BaseAppCompatActivity$EmuOutResultReceiver;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 192
    .line 193
    .line 194
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->adResultReceiver:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    .line 195
    .line 196
    new-instance p1, Landroid/content/IntentFilter;

    .line 197
    .line 198
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.mod.gameout"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->adResultReceiver:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    .line 212
    .line 213
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    :cond_3
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p1, v0}, Lcom/join/mgps/va/overmind/i;->W(Landroid/content/Intent;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/BaseAppCompatActivity;->hasdestroyed:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "popwindow"

    .line 25
    .line 26
    const-string v2, "onDestroy  dismiss"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->broadcasExt:Lcom/BaseAppCompatActivity$BroadcasExtFA;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->adResultReceiver:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->onReciviedReceiver_:Landroid/content/BroadcastReceiver;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/BaseAppCompatActivity;->recver:Lcom/BaseAppCompatActivity$PermissRecver;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lorg/androidannotations/api/c;->n(Landroid/content/Context;)Lorg/androidannotations/api/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->p(Landroid/app/Activity;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-interface {v0}, Lv6/d;->b()V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onFavoriteChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pid",
            "isFavorite"
        }
    .end annotation

    return-void
.end method

.method protected onNetworkChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/BaseAppCompatActivity;->hasdestroyed:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lv6/d;->b()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 28
    .line 29
    invoke-interface {v0}, Lv6/d;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;->clearHiderListener()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/constant/a;->a()Lh8/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Lh8/a;->onPagePause()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
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
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    :try_start_0
    array-length p1, p2

    .line 7
    if-lez p1, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->l()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    array-length p1, p2

    .line 20
    const/4 p3, 0x0

    .line 21
    :goto_0
    if-ge p3, p1, :cond_1

    .line 22
    .line 23
    aget-object v0, p2, p3

    .line 24
    .line 25
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->F(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_1
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
    iput-boolean v0, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 8
    .line 9
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->a(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v2, Lcom/c;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/c;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v3, 0x1f4

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lorg/androidannotations/api/c;->n(Landroid/content/Context;)Lorg/androidannotations/api/c;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, p0}, Lorg/androidannotations/api/c;->s(Landroid/app/Activity;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/BaseAppCompatActivity;->isfirst:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/BaseAppCompatActivity;->isfirst:Z

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    const/16 v3, 0xb

    .line 106
    .line 107
    if-ne v2, v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_5

    .line 131
    .line 132
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v2, p0, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_3

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const-string v3, "com.quark.browser"

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_3

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    instance-of v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 176
    .line 177
    if-nez v2, :cond_4

    .line 178
    .line 179
    invoke-static {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const/4 v2, 0x2

    .line 192
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 197
    .line 198
    .line 199
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 200
    iput-boolean v1, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 201
    .line 202
    :cond_5
    iget-boolean v1, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 203
    .line 204
    if-nez v1, :cond_6

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_6

    .line 221
    .line 222
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-eqz v2, :cond_6

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_6

    .line 241
    .line 242
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_6

    .line 247
    .line 248
    invoke-static {p0, v3}, Lcom/join/mgps/Util/l;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_6

    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_6

    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    const-string v3, "\u7f51\u6e38"

    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_6

    .line 275
    .line 276
    invoke-direct {p0, v1}, Lcom/BaseAppCompatActivity;->showDownFinishPre(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v1, ""

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_6
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 289
    .line 290
    if-nez v0, :cond_7

    .line 291
    .line 292
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->canShowFeedBack:Z

    .line 293
    .line 294
    if-eqz v0, :cond_7

    .line 295
    .line 296
    instance-of v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity_;

    .line 297
    .line 298
    if-nez v0, :cond_7

    .line 299
    .line 300
    instance-of v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1_;

    .line 301
    .line 302
    if-nez v0, :cond_7

    .line 303
    .line 304
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->e(Landroid/content/Context;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    iput-boolean v0, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 313
    .line 314
    :cond_7
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 315
    .line 316
    if-eqz v0, :cond_8

    .line 317
    .line 318
    invoke-interface {v0}, Lv6/d;->b()V

    .line 319
    .line 320
    .line 321
    :cond_8
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 322
    .line 323
    new-instance v1, Lcom/BaseAppCompatActivity$q;

    .line 324
    .line 325
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$q;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 326
    .line 327
    .line 328
    const-wide/16 v2, 0x258

    .line 329
    .line 330
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    .line 332
    .line 333
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->h4(Landroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lcom/constant/a;->a()Lh8/a;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-eqz v0, :cond_9

    .line 341
    .line 342
    invoke-interface {v0}, Lh8/a;->onPageResume()V

    .line 343
    .line 344
    .line 345
    :cond_9
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->dismissLoading()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/BaseAppCompatActivity;->fullScreenFlag:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method requestPermission(Lcom/BaseAppCompatActivity$t;)V
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
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p1, Lcom/BaseAppCompatActivity$t;->a:Ljava/lang/String;

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
    iget-object v0, p1, Lcom/BaseAppCompatActivity$t;->a:Ljava/lang/String;

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
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    iget-object v0, p1, Lcom/BaseAppCompatActivity$t;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->fialePath:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->show_unknown_source()Lorg/androidannotations/api/sharedpreferences/d;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v1, 0x1a

    .line 74
    .line 75
    if-lt v0, v1, :cond_4

    .line 76
    .line 77
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 90
    .line 91
    .line 92
    :cond_3
    new-instance v0, Lcom/join/mgps/dialog/d;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/d;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 98
    .line 99
    new-instance v1, Lcom/BaseAppCompatActivity$e;

    .line 100
    .line 101
    invoke-direct {v1, p0, p1}, Lcom/BaseAppCompatActivity$e;-><init>(Lcom/BaseAppCompatActivity;Lcom/BaseAppCompatActivity$t;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/d;->b(Lcom/join/mgps/callbacks/d;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->apkInstallDialog:Lcom/join/mgps/dialog/d;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->handlerx:Landroid/os/Handler;

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    :try_start_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 123
    .line 124
    .line 125
    filled-new-array {v0}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v0, Lcom/BaseAppCompatActivity$f;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$f;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :cond_6
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
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->baiduChannelPermissionCallBack:Lv6/d;

    .line 2
    .line 3
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->setStatusBar()V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d05f2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/LoadingLayout;

    iput-object p1, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 4
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->loadingHintMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->getLoadingLayoutResID()I

    move-result p1

    if-lez p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/LoadingLayout;->b(Landroid/view/View;I)V

    .line 8
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 9
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->getLoadingMarginTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutMarginTop(I)V

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->setStatusBar()V

    .line 12
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d05f2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/LoadingLayout;

    iput-object p1, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 13
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->loadingHintMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->getLoadingLayoutResID()I

    move-result p1

    if-lez p1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/LoadingLayout;->b(Landroid/view/View;I)V

    .line 17
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 18
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->getLoadingMarginTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutMarginTop(I)V

    :cond_1
    return-void
.end method

.method public setLoadingFailMsg(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingFailMsg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setFailedMessage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoadingHintMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->loadingHintMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNoDataListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LoadingLayout;->setNoDataCallBackListener(Lcom/join/mgps/customview/LoadingLayout$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setStatusBar()V
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

.method public setSystemUiHide(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hide"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/BaseAppCompatActivity;->fullScreenFlag:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;->updateHider()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const p1, 0x1020002

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/BaseAppCompatActivity;->fullScreenFlag:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/BaseAppCompatActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public setTextViewNoData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setTextViewNoData(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setmLoadingHintMsgLoading(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setupKeyboardHandler(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lcom/BaseAppCompatActivity$a;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lcom/BaseAppCompatActivity$a;-><init>(Lcom/BaseAppCompatActivity;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected showDownFinish(Ljava/lang/String;)V
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
    iget-boolean v0, p0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const-class v1, Lcom/join/mgps/activity/GameMainActivity3_;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/join/mgps/activity/NewArenaMainActivty_;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-class v1, Lcom/join/mgps/activity/EndGameLaunchActivity_;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-class v1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity_;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-class v1, Lcom/join/mgps/activity/EndGameActivity_;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-class v1, Lcom/join/mgps/activity/EndGameDetailActivity_;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-class v1, Lcom/join/mgps/activity/HMCloudRemoteActivity_;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Class;

    .line 65
    .line 66
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/g0;->H(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/BaseAppCompatActivity;->hasDialog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method public showFailLayoutBase()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/BaseAppCompatActivity$o;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$o;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showKeyBoardHandler()V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/common/dialog/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/e;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/e;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showLoadingLayoutBase()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/BaseAppCompatActivity$l;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$l;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showNoDataLayoutBase()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/BaseAppCompatActivity$n;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$n;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showNoDataLayoutTwo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/BaseAppCompatActivity$p;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/BaseAppCompatActivity$p;-><init>(Lcom/BaseAppCompatActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "arg"
        }
    .end annotation

    return-void
.end method
