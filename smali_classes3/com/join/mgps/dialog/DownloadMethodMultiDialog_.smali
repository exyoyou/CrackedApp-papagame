.class public final Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;
.super Lcom/join/mgps/dialog/DownloadMethodMultiDialog;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;
    }
.end annotation


# static fields
.field public static final DATA_EXTRA:Ljava/lang/String; = "data"

.field public static final DISABLE_SHOW_SPEED_UP_PROMPT_EXTRA:Ljava/lang/String; = "disableShowSpeedUpPrompt"

.field public static final DOWNLOAD_ARGS_EXTRA:Ljava/lang/String; = "downloadArgs"

.field public static final DOWNLOAD_HTMLS_EXTRA:Ljava/lang/String; = "downloadHtmls"

.field public static final EXT_EXTRA:Ljava/lang/String; = "ext"

.field public static final FROM_EXTRA:Ljava/lang/String; = "_from"

.field public static final FROM_RECOM_DOWN_EXTRA:Ljava/lang/String; = "fromRecomDown"

.field public static final FROM_TYPE_EXTRA:Ljava/lang/String; = "_from_type"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final HIDE_NO_MORE_EXTRA:Ljava/lang/String; = "hideNoMore"

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
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->T(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->load()V

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
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->injectExtras_()V

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
    if-eqz v0, :cond_a

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
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->gameId:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->ext:Ljava/lang/String;

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
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->isForceShow:Z

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
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->fromRecomDown:Z

    .line 66
    .line 67
    :cond_3
    const-string v1, "downloadArgs"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->downloadArgs:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 82
    .line 83
    :cond_4
    const-string v1, "disableShowSpeedUpPrompt"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->disableShowSpeedUpPrompt:Z

    .line 96
    .line 97
    :cond_5
    const-string v1, "data"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 112
    .line 113
    :cond_6
    const-string v1, "_from"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->_from:I

    .line 126
    .line 127
    :cond_7
    const-string v1, "_from_type"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iput v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->_from_type:I

    .line 140
    .line 141
    :cond_8
    const-string v1, "downloadHtmls"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->downloadHtmls:Ljava/util/ArrayList;

    .line 154
    .line 155
    :cond_9
    const-string v1, "hideNoMore"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iput-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->hideNoMore:Z

    .line 168
    .line 169
    :cond_a
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$k;-><init>(Landroidx/fragment/app/Fragment;)V

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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$i;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->beans_:Ljava/util/Map;

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
    new-instance v6, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$a;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$a;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0609

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
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
    const v0, 0x7f0a1345

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    const v0, 0x7f0a1767

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->title:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0e83

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->link:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a050c

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->download:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a1641

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->subTitle:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a1b11    # 1.83574E38f

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->userProtocolTxt:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a12b6

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->protocol:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a0352

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->checkboxAgreement:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v0, 0x7f0a0354

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->checkboxNoMore:Landroid/widget/ImageView;

    .line 99
    .line 100
    const v0, 0x7f0a0e96

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->llAgreement:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const v0, 0x7f0a0eb5

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
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->llNoMore:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v0, 0x7f0a0418

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->constraintLayout:Landroid/view/View;

    .line 130
    .line 131
    const v0, 0x7f0a03b0

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const v1, 0x7f0a11c9

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const v2, 0x7f0a1377

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz v0, :cond_0

    .line 153
    .line 154
    new-instance v2, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$b;

    .line 155
    .line 156
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$b;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    :cond_0
    if-eqz v1, :cond_1

    .line 163
    .line 164
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$c;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$c;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->download:Landroid/widget/TextView;

    .line 173
    .line 174
    if-eqz v0, :cond_2

    .line 175
    .line 176
    new-instance v1, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$d;

    .line 177
    .line 178
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$d;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->protocol:Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v0, :cond_3

    .line 187
    .line 188
    new-instance v1, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$e;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$e;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    if-eqz p1, :cond_4

    .line 197
    .line 198
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$f;

    .line 199
    .line 200
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$f;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->checkboxAgreement:Landroid/widget/ImageView;

    .line 207
    .line 208
    if-eqz p1, :cond_5

    .line 209
    .line 210
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$g;

    .line 211
    .line 212
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$g;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->llNoMore:Landroid/widget/LinearLayout;

    .line 219
    .line 220
    if-eqz p1, :cond_6

    .line 221
    .line 222
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$h;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$h;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->afterViews()V

    .line 231
    .line 232
    .line 233
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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->beans_:Ljava/util/Map;

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
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;->injectExtras_()V

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
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/DownloadMethodMultiDialog_$j;-><init>(Lcom/join/mgps/dialog/DownloadMethodMultiDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

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
