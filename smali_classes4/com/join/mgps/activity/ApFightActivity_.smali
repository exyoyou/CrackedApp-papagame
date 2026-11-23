.class public final Lcom/join/mgps/activity/ApFightActivity_;
.super Lcom/join/mgps/activity/ApFightActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ApFightActivity_$q;
    }
.end annotation


# static fields
.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"


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

.field private final connectToChosenReceiver_:Landroid/content/BroadcastReceiver;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$1;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->connectToChosenReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->afterStartGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameServer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClient()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClientWifi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightAPClient()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightClient()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/ApFightActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->fightStartClicked()V

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
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v0, "FIGHT_JOIN_SERVER"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->connectToChosenReceiver_:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
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
    const-string v1, "gameId"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/ApFightActivity_$q;
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
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ApFightActivity_$q;
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
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method afterStartGame()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$b;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xbb8

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

.method disConnectWifiFightAPClient()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ApFightActivity_$f;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ApFightActivity_$f;-><init>(Lcom/join/mgps/activity/ApFightActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method disConnectWifiFightClient()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ApFightActivity_$g;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ApFightActivity_$g;-><init>(Lcom/join/mgps/activity/ApFightActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method fightStartClicked()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ApFightActivity_$h;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ApFightActivity_$h;-><init>(Lcom/join/mgps/activity/ApFightActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->beans_:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ApFightActivity_;->init_(Landroid/os/Bundle;)V

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
    const p1, 0x7f0d0266

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ApFightActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->connectToChosenReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/ApFightActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a080b

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a0e42

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a013b

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->back:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a061c

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v0, 0x7f0a060b

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a061b

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 66
    .line 67
    const v0, 0x7f0a106e

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    .line 77
    .line 78
    const v0, 0x7f0a106f

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v0, 0x7f0a1bd9

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a1502

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a03a7

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0a1176

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a1504

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/Button;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 143
    .line 144
    const v0, 0x7f0a03a9

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/Button;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 154
    .line 155
    const v0, 0x7f0a1c37

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/Button;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 165
    .line 166
    const v0, 0x7f0a11cd

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/ImageView;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->p1status_btn_around_img:Landroid/widget/ImageView;

    .line 176
    .line 177
    const v0, 0x7f0a00d9

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/ImageView;

    .line 185
    .line 186
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_1p_frame:Landroid/widget/ImageView;

    .line 187
    .line 188
    const v0, 0x7f0a00da

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/ImageView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ap_net_match_info_2p_frame:Landroid/widget/ImageView;

    .line 198
    .line 199
    const v0, 0x7f0a15ff

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/TextView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ssidTxt:Landroid/widget/TextView;

    .line 209
    .line 210
    const v0, 0x7f0a096d

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/TextView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ipTxt:Landroid/widget/TextView;

    .line 220
    .line 221
    const v0, 0x7f0a1c39    # 1.8358E38f

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingImg:Landroid/widget/ImageView;

    .line 231
    .line 232
    const v0, 0x7f0a1c3e

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/FrameLayout;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    .line 242
    .line 243
    const v0, 0x7f0a1c3f

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/LinearLayout;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 253
    .line 254
    const v0, 0x7f0a1c3b

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Landroid/widget/TextView;

    .line 262
    .line 263
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip1:Landroid/widget/TextView;

    .line 264
    .line 265
    const v0, 0x7f0a1c3c

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip2:Landroid/widget/TextView;

    .line 275
    .line 276
    const v0, 0x7f0a1760

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->tipWifi:Landroid/widget/TextView;

    .line 286
    .line 287
    const v0, 0x7f0a00db

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->apfight_zxing_content_lay:Landroid/widget/RelativeLayout;

    .line 297
    .line 298
    const v0, 0x7f0a175f

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->tipTxt2:Landroid/widget/TextView;

    .line 308
    .line 309
    const v0, 0x7f0a175e

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
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->tipTxt1:Landroid/widget/TextView;

    .line 319
    .line 320
    const v0, 0x7f0a096e

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/LinearLayout;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/join/mgps/activity/ApFightActivity;->ip_lay:Landroid/widget/LinearLayout;

    .line 330
    .line 331
    const v0, 0x7f0a1c3d

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const v1, 0x7f0a1c38

    .line 339
    .line 340
    .line 341
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    if-eqz v0, :cond_0

    .line 346
    .line 347
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity_$i;

    .line 348
    .line 349
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity_$i;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    :cond_0
    if-eqz p1, :cond_1

    .line 356
    .line 357
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$j;

    .line 358
    .line 359
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$j;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 366
    .line 367
    if-eqz p1, :cond_2

    .line 368
    .line 369
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$k;

    .line 370
    .line 371
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$k;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .line 376
    .line 377
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 378
    .line 379
    if-eqz p1, :cond_3

    .line 380
    .line 381
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$l;

    .line 382
    .line 383
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$l;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .line 388
    .line 389
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 390
    .line 391
    if-eqz p1, :cond_4

    .line 392
    .line 393
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$m;

    .line 394
    .line 395
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$m;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->back:Landroid/widget/ImageView;

    .line 402
    .line 403
    if-eqz p1, :cond_5

    .line 404
    .line 405
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$n;

    .line 406
    .line 407
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$n;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 414
    .line 415
    if-eqz p1, :cond_6

    .line 416
    .line 417
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$o;

    .line 418
    .line 419
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$o;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    .line 424
    .line 425
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconAP:Landroid/widget/ImageView;

    .line 426
    .line 427
    if-eqz p1, :cond_7

    .line 428
    .line 429
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$p;

    .line 430
    .line 431
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$p;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity;->modeIconWifi:Landroid/widget/ImageView;

    .line 438
    .line 439
    if-eqz p1, :cond_8

    .line 440
    .line 441
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$a;

    .line 442
    .line 443
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$a;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    .line 448
    .line 449
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ApFightActivity;->afterViews()V

    .line 450
    .line 451
    .line 452
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
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity_;->beans_:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ApFightActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method startGameClient()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$d;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method startGameClientWifi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$e;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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

.method startGameServer()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity_$c;-><init>(Lcom/join/mgps/activity/ApFightActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

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
