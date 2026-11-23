.class public final Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;
.super Lcom/join/mgps/dialog/DownloadMethodPromptDialog;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;
    }
.end annotation


# static fields
.field public static final DATA_EXTRA:Ljava/lang/String; = "data"

.field public static final DISABLE_SHOW_SPEED_UP_PROMPT_EXTRA:Ljava/lang/String; = "disableShowSpeedUpPrompt"

.field public static final EXT_EXTRA:Ljava/lang/String; = "ext"

.field public static final FROM_EXTRA:Ljava/lang/String; = "_from"

.field public static final FROM_RECOM_DOWN_EXTRA:Ljava/lang/String; = "fromRecomDown"

.field public static final FROM_TYPE_EXTRA:Ljava/lang/String; = "_from_type"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final IS_FORCE_SHOW_EXTRA:Ljava/lang/String; = "isForceShow"


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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->T(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
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
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
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
    if-eqz v0, :cond_7

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
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "ext"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->ext:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    const-string v1, "isForceShow"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isForceShow:Z

    .line 52
    .line 53
    :cond_2
    const-string v1, "fromRecomDown"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->fromRecomDown:Z

    .line 66
    .line 67
    :cond_3
    const-string v1, "disableShowSpeedUpPrompt"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->disableShowSpeedUpPrompt:Z

    .line 80
    .line 81
    :cond_4
    const-string v1, "data"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 96
    .line 97
    :cond_5
    const-string v1, "_from"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->_from:I

    .line 110
    .line 111
    :cond_6
    const-string v1, "_from_type"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_7

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->_from_type:I

    .line 124
    .line 125
    :cond_7
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method T(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$k;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->beans_:Ljava/util/Map;

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

.method load()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$b;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$b;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d01d2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
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
    const v0, 0x7f0a12b7

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a1140

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheck:Landroid/view/View;

    .line 18
    .line 19
    const v0, 0x7f0a113f

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPrompt:Landroid/view/View;

    .line 27
    .line 28
    const v0, 0x7f0a1767

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->title:Landroid/widget/TextView;

    .line 38
    .line 39
    const v0, 0x7f0a10d8

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->name:Landroid/widget/TextView;

    .line 49
    .line 50
    const v0, 0x7f0a0e83

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->link:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a050c

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->download:Landroid/widget/TextView;

    .line 71
    .line 72
    const v0, 0x7f0a1641

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->subTitle:Landroid/widget/TextView;

    .line 82
    .line 83
    const v0, 0x7f0a1b11    # 1.83574E38f

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->userProtocolTxt:Landroid/widget/TextView;

    .line 93
    .line 94
    const v0, 0x7f0a12b6

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocol:Landroid/widget/TextView;

    .line 104
    .line 105
    const v0, 0x7f0a0418

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 113
    .line 114
    const v0, 0x7f0a03b0

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const v1, 0x7f0a11c9

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const v2, 0x7f0a1377

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const v3, 0x7f0a12b8

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const v4, 0x7f0a1704

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const v5, 0x7f0a1141

    .line 150
    .line 151
    .line 152
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz v0, :cond_0

    .line 157
    .line 158
    new-instance v5, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$c;

    .line 159
    .line 160
    invoke-direct {v5, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$c;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    :cond_0
    if-eqz v1, :cond_1

    .line 167
    .line 168
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$d;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$d;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->download:Landroid/widget/TextView;

    .line 177
    .line 178
    if-eqz v0, :cond_2

    .line 179
    .line 180
    new-instance v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$e;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$e;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocol:Landroid/widget/TextView;

    .line 189
    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    new-instance v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$f;

    .line 193
    .line 194
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$f;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    if-eqz v2, :cond_4

    .line 201
    .line 202
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$g;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$g;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    :cond_4
    if-eqz v3, :cond_5

    .line 211
    .line 212
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$h;

    .line 213
    .line 214
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$h;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    :cond_5
    if-eqz v4, :cond_6

    .line 221
    .line 222
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$i;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$i;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    if-eqz p1, :cond_7

    .line 231
    .line 232
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$j;

    .line 233
    .line 234
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$j;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->afterViews()V

    .line 241
    .line 242
    .line 243
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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->beans_:Ljava/util/Map;

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
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

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
