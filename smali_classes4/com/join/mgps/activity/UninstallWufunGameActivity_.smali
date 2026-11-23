.class public final Lcom/join/mgps/activity/UninstallWufunGameActivity_;
.super Lcom/join/mgps/activity/UninstallWufunGameActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;
    }
.end annotation


# static fields
.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"


# instance fields
.field private final apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$1;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->setBtn(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Lcom/join/mgps/dto/UninstallGuessLikeBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->updateData(Lcom/join/mgps/dto/UninstallGuessLikeBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showMain()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getModGameArchievePath(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->getGuessLikeData()V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->intentFilter1_:Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v0, "com.join.apkinstal.action.broadcast"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->intentFilter1_:Landroid/content/IntentFilter;

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
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;
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
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;
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
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;-><init>(Landroidx/fragment/app/Fragment;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->beans_:Ljava/util/Map;

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

.method getGuessLikeData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/UninstallWufunGameActivity_$k;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$k;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getModGameArchievePath(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modGameIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/UninstallWufunGameActivity_$j;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$j;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d00b4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1628

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->statubar:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a0800

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->headview:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    const v0, 0x7f0a1790

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->title_textview:Landroid/widget/TextView;

    .line 31
    .line 32
    const v0, 0x7f0a0305

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->cardDelete:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const v0, 0x7f0a1798

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/FrameLayout;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->toComment:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    const v0, 0x7f0a06ed

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    const v0, 0x7f0a0714

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName1:Landroid/widget/TextView;

    .line 75
    .line 76
    const v0, 0x7f0a06e0

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameDesc1:Landroid/widget/TextView;

    .line 86
    .line 87
    const v0, 0x7f0a071c

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus1:Landroid/widget/TextView;

    .line 97
    .line 98
    const v0, 0x7f0a034f

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/ImageView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox1:Landroid/widget/ImageView;

    .line 108
    .line 109
    const v0, 0x7f0a06da

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    .line 120
    const v0, 0x7f0a06ee

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 130
    .line 131
    const v0, 0x7f0a0715

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName2:Landroid/widget/TextView;

    .line 141
    .line 142
    const v0, 0x7f0a071d

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/TextView;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 152
    .line 153
    const v0, 0x7f0a0350

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 163
    .line 164
    const v0, 0x7f0a06db

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 174
    .line 175
    const v0, 0x7f0a06ef

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 185
    .line 186
    const v0, 0x7f0a0716

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/TextView;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameName3:Landroid/widget/TextView;

    .line 196
    .line 197
    const v0, 0x7f0a071e

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/TextView;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus3:Landroid/widget/TextView;

    .line 207
    .line 208
    const v0, 0x7f0a0351

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Landroid/widget/ImageView;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox3:Landroid/widget/ImageView;

    .line 218
    .line 219
    const v0, 0x7f0a06dc

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 229
    .line 230
    const v0, 0x7f0a1870

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Landroid/widget/TextView;

    .line 238
    .line 239
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 240
    .line 241
    const v0, 0x7f0a1871

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/widget/TextView;

    .line 249
    .line 250
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 251
    .line 252
    const v0, 0x7f0a0310

    .line 253
    .line 254
    .line 255
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 260
    .line 261
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->cardRecom:Landroidx/cardview/widget/CardView;

    .line 262
    .line 263
    const v0, 0x7f0a064b

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroid/widget/FrameLayout;

    .line 271
    .line 272
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->flRecom:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    const v0, 0x7f0a144e

    .line 275
    .line 276
    .line 277
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    .line 283
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->rvRecom:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    .line 285
    const v0, 0x7f0a0f95

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_layout:Landroid/view/View;

    .line 293
    .line 294
    const v0, 0x7f0a0f92

    .line 295
    .line 296
    .line 297
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iput-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->loding_faile:Landroid/view/View;

    .line 302
    .line 303
    const v0, 0x7f0a1508

    .line 304
    .line 305
    .line 306
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const v1, 0x7f0a1368

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    const v2, 0x7f0a014e

    .line 318
    .line 319
    .line 320
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    if-eqz v0, :cond_0

    .line 325
    .line 326
    new-instance v2, Lcom/join/mgps/activity/UninstallWufunGameActivity_$l;

    .line 327
    .line 328
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$l;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    :cond_0
    if-eqz v1, :cond_1

    .line 335
    .line 336
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$m;

    .line 337
    .line 338
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$m;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    :cond_1
    if-eqz p1, :cond_2

    .line 345
    .line 346
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$n;

    .line 347
    .line 348
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$n;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->toComment:Landroid/widget/FrameLayout;

    .line 355
    .line 356
    if-eqz p1, :cond_3

    .line 357
    .line 358
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$o;

    .line 359
    .line 360
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$o;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 367
    .line 368
    if-eqz p1, :cond_4

    .line 369
    .line 370
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$p;

    .line 371
    .line 372
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$p;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 379
    .line 380
    if-eqz p1, :cond_5

    .line 381
    .line 382
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$q;

    .line 383
    .line 384
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$q;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    .line 389
    .line 390
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->game3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 391
    .line 392
    if-eqz p1, :cond_6

    .line 393
    .line 394
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$r;

    .line 395
    .line 396
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$r;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    .line 401
    .line 402
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteAll:Landroid/widget/TextView;

    .line 403
    .line 404
    if-eqz p1, :cond_7

    .line 405
    .line 406
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$s;

    .line 407
    .line 408
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$s;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->tvDeleteGameOnly:Landroid/widget/TextView;

    .line 415
    .line 416
    if-eqz p1, :cond_8

    .line 417
    .line 418
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$a;

    .line 419
    .line 420
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$a;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    .line 425
    .line 426
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->afterviews()V

    .line 427
    .line 428
    .line 429
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
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method resetBtn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$c;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

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

.method resetBtn2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$d;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

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

.method setBtn(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isVisible"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$b;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Z)V

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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$g;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

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

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$h;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

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

.method showMain()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$f;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;)V

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

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$i;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Ljava/lang/String;)V

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

.method updateData(Lcom/join/mgps/dto/UninstallGuessLikeBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/UninstallWufunGameActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$e;-><init>(Lcom/join/mgps/activity/UninstallWufunGameActivity_;Lcom/join/mgps/dto/UninstallGuessLikeBean;)V

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
