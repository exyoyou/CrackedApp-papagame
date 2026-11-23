.class public final Lcom/join/mgps/activity/ShareGameActivity_;
.super Lcom/join/mgps/activity/ShareGameActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ShareGameActivity_$n;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_TASK_EXTRA:Ljava/lang/String; = "downloadTask"


# instance fields
.field private final AccountChangeReceiver_:Landroid/content/BroadcastReceiver;

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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareGameActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$1;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->AccountChangeReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ShareGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareGameActivity;->reloadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ShareGameActivity_;Lcom/join/mgps/dto/GameShareData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->updateUi(Lcom/join/mgps/dto/GameShareData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ShareGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareGameActivity;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->sendComment(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->sendClickTag(Ljava/lang/String;)V

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
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareGameActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->AccountChangeReceiver_:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "downloadTask"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareGameActivity_$n;
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
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareGameActivity_$n;
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
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$n;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->beans_:Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ShareGameActivity_$c;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ShareGameActivity_$c;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d00a2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->AccountChangeReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1773

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->titleImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v0, 0x7f0a0141

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->backImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    const v0, 0x7f0a10a4

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->msg:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a10a6

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->msgEnd:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a00ee

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->appName:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a1618

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
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->startGame:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a084f

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const v0, 0x7f0a1b00

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 88
    .line 89
    const v0, 0x7f0a151c

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const v0, 0x7f0a1610

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->starLayout:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const v0, 0x7f0a1764

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v0, 0x7f0a03f7

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    const v0, 0x7f0a1619

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->startGameLayout:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const v0, 0x7f0a151b

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    const v0, 0x7f0a1521

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 165
    .line 166
    const v0, 0x7f0a14ee

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 176
    .line 177
    const v0, 0x7f0a14ef

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar2:Lcom/join/mgps/customview/MStarBar;

    .line 187
    .line 188
    const v0, 0x7f0a14f0

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar3:Lcom/join/mgps/customview/MStarBar;

    .line 198
    .line 199
    const v0, 0x7f0a14f1

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStarEnd:Lcom/join/mgps/customview/MStarBar;

    .line 209
    .line 210
    const v0, 0x7f0a1b01

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 220
    .line 221
    const v0, 0x7f0a1b02

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 231
    .line 232
    const v0, 0x7f0a1774

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->titleImgEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 242
    .line 243
    const v0, 0x7f0a0854

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->iconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 253
    .line 254
    const v0, 0x7f0a1b04

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 264
    .line 265
    const v0, 0x7f0a1b0c

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/TextView;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userName:Landroid/widget/TextView;

    .line 275
    .line 276
    const v0, 0x7f0a1b0d

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroid/widget/TextView;

    .line 284
    .line 285
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userName3:Landroid/widget/TextView;

    .line 286
    .line 287
    const v0, 0x7f0a03f3

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/TextView;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->commit:Landroid/widget/TextView;

    .line 297
    .line 298
    const v0, 0x7f0a00f3

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroid/widget/TextView;

    .line 306
    .line 307
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->appNameEnd:Landroid/widget/TextView;

    .line 308
    .line 309
    const v0, 0x7f0a1b0e

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/widget/TextView;

    .line 317
    .line 318
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 319
    .line 320
    const v0, 0x7f0a14f4

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/TextView;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->selectedMessage:Landroid/widget/TextView;

    .line 330
    .line 331
    const v0, 0x7f0a1763

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->tips:Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 341
    .line 342
    const v0, 0x7f0a1c36

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/ImageView;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->zxing:Landroid/widget/ImageView;

    .line 352
    .line 353
    const v0, 0x7f0a013b

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    check-cast v0, Landroid/widget/ImageView;

    .line 361
    .line 362
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 363
    .line 364
    const v0, 0x7f0a1152

    .line 365
    .line 366
    .line 367
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroid/widget/ImageView;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 374
    .line 375
    const v0, 0x7f0a0561

    .line 376
    .line 377
    .line 378
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroid/widget/EditText;

    .line 383
    .line 384
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 385
    .line 386
    const v0, 0x7f0a03b5

    .line 387
    .line 388
    .line 389
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Landroid/widget/ImageView;

    .line 394
    .line 395
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 396
    .line 397
    const v0, 0x7f0a12e6

    .line 398
    .line 399
    .line 400
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const v1, 0x7f0a1be4

    .line 405
    .line 406
    .line 407
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const v2, 0x7f0a06cd

    .line 412
    .line 413
    .line 414
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    const v3, 0x7f0a12e0

    .line 419
    .line 420
    .line 421
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 426
    .line 427
    if-eqz v3, :cond_0

    .line 428
    .line 429
    new-instance v4, Lcom/join/mgps/activity/ShareGameActivity_$f;

    .line 430
    .line 431
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ShareGameActivity_$f;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 438
    .line 439
    if-eqz v3, :cond_1

    .line 440
    .line 441
    new-instance v4, Lcom/join/mgps/activity/ShareGameActivity_$g;

    .line 442
    .line 443
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ShareGameActivity_$g;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    .line 448
    .line 449
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 450
    .line 451
    if-eqz v3, :cond_2

    .line 452
    .line 453
    new-instance v4, Lcom/join/mgps/activity/ShareGameActivity_$h;

    .line 454
    .line 455
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ShareGameActivity_$h;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    .line 460
    .line 461
    :cond_2
    if-eqz v0, :cond_3

    .line 462
    .line 463
    new-instance v3, Lcom/join/mgps/activity/ShareGameActivity_$i;

    .line 464
    .line 465
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ShareGameActivity_$i;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    .line 470
    .line 471
    :cond_3
    if-eqz v1, :cond_4

    .line 472
    .line 473
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$j;

    .line 474
    .line 475
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$j;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    .line 480
    .line 481
    :cond_4
    if-eqz v2, :cond_5

    .line 482
    .line 483
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$k;

    .line 484
    .line 485
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$k;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    .line 490
    .line 491
    :cond_5
    if-eqz p1, :cond_6

    .line 492
    .line 493
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$l;

    .line 494
    .line 495
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$l;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    .line 500
    .line 501
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->startGame:Landroid/widget/TextView;

    .line 502
    .line 503
    if-eqz p1, :cond_7

    .line 504
    .line 505
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$m;

    .line 506
    .line 507
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$m;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    .line 512
    .line 513
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->afterView()V

    .line 514
    .line 515
    .line 516
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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method reloadData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity_$a;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x7d0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method sendClickTag(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ShareGameActivity_$e;

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
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ShareGameActivity_$e;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method sendComment(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ShareGameActivity_$d;

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
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ShareGameActivity_$d;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareGameActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/GameShareData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shareData"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareGameActivity_$b;-><init>(Lcom/join/mgps/activity/ShareGameActivity_;Lcom/join/mgps/dto/GameShareData;)V

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
