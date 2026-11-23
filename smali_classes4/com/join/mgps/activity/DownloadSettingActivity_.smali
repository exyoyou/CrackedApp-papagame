.class public final Lcom/join/mgps/activity/DownloadSettingActivity_;
.super Lcom/join/mgps/activity/DownloadSettingActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DownloadSettingActivity_$r;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final loginOutReceiver_:Landroid/content/BroadcastReceiver;

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$1;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/DownloadSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/DownloadSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/DownloadSettingActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->loginOutBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/DownloadSettingActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->checkVersion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
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
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_out"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DownloadSettingActivity_$r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$r;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkVersion()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadSettingActivity_$i;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadSettingActivity_$i;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error_msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_$f;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method loginOutBack()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadSettingActivity_$h;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadSettingActivity_$h;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0252

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->loginOutReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a07b5

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->gprsNotice:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const v0, 0x7f0a0516

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->downloadPath:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    const v0, 0x7f0a086a

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->imageGprsNote:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a08bd

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->imageViewWifi:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a012b

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a1790

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->title_textview:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a1727

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textWifi:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a116b

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->nowPathInfo:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a16a4

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textGprs:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a1203

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->papaVer:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a05b7

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->exitLogin:Landroid/view/View;

    .line 119
    .line 120
    const v0, 0x7f0a0064

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->accountManager:Landroid/view/View;

    .line 128
    .line 129
    const v0, 0x7f0a0131

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi:Landroid/widget/ImageView;

    .line 139
    .line 140
    const v0, 0x7f0a13d8

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->rl_developer:Landroid/widget/RelativeLayout;

    .line 150
    .line 151
    const v0, 0x7f0a1b69

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const v1, 0x7f0a12ce

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const v2, 0x7f0a012c

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const v3, 0x7f0a014e

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const v4, 0x7f0a034c

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->accountManager:Landroid/view/View;

    .line 187
    .line 188
    if-eqz v4, :cond_0

    .line 189
    .line 190
    new-instance v5, Lcom/join/mgps/activity/DownloadSettingActivity_$j;

    .line 191
    .line 192
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$j;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    :cond_0
    if-eqz v0, :cond_1

    .line 199
    .line 200
    new-instance v4, Lcom/join/mgps/activity/DownloadSettingActivity_$k;

    .line 201
    .line 202
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$k;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi:Landroid/widget/ImageView;

    .line 209
    .line 210
    if-eqz v0, :cond_2

    .line 211
    .line 212
    new-instance v4, Lcom/join/mgps/activity/DownloadSettingActivity_$l;

    .line 213
    .line 214
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$l;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    :cond_2
    if-eqz v1, :cond_3

    .line 221
    .line 222
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$m;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$m;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->exitLogin:Landroid/view/View;

    .line 231
    .line 232
    if-eqz v0, :cond_4

    .line 233
    .line 234
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$n;

    .line 235
    .line 236
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$n;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi:Landroid/widget/ImageView;

    .line 243
    .line 244
    if-eqz v0, :cond_5

    .line 245
    .line 246
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$o;

    .line 247
    .line 248
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$o;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    :cond_5
    if-eqz v2, :cond_6

    .line 255
    .line 256
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$p;

    .line 257
    .line 258
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$p;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->gprsNotice:Landroid/widget/RelativeLayout;

    .line 265
    .line 266
    if-eqz v0, :cond_7

    .line 267
    .line 268
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$q;

    .line 269
    .line 270
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$q;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->downloadPath:Landroid/widget/RelativeLayout;

    .line 277
    .line 278
    if-eqz v0, :cond_8

    .line 279
    .line 280
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$a;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$a;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    :cond_8
    if-eqz v3, :cond_9

    .line 289
    .line 290
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$b;

    .line 291
    .line 292
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$b;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->rl_developer:Landroid/widget/RelativeLayout;

    .line 299
    .line 300
    if-eqz v0, :cond_a

    .line 301
    .line 302
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$c;

    .line 303
    .line 304
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$c;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    :cond_a
    if-eqz p1, :cond_b

    .line 311
    .line 312
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$d;

    .line 313
    .line 314
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$d;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->afterview()V

    .line 321
    .line 322
    .line 323
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
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
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

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

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error_msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_$e;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "versionDto",
            "mandatory"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/DownloadSettingActivity_$g;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
