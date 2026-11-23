.class public final Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;
.super Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDomainUI(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDefaultUI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->getPrivateDomain(Ljava/lang/String;I)V

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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->injectExtras_()V

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
    if-eqz v0, :cond_1

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
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "from"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;
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
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;
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
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->beans_:Ljava/util/Map;

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

.method getPrivateDomain(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameId",
            "location"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$8;

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
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$8;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d08c1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1099

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v0, 0x7f0a1032

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->message:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0713

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameName:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a1616

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->startButn:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a07a5

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->goH5:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a084f

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 66
    .line 67
    const v0, 0x7f0a14a2

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const v0, 0x7f0a0ec1

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->llReUnzip:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const v0, 0x7f0a0fee

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->main:Landroid/view/View;

    .line 97
    .line 98
    const v0, 0x7f0a18c7

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f0a18c6

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const v2, 0x7f0a03b0

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->startButn:Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v2, :cond_0

    .line 122
    .line 123
    new-instance v3, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$1;

    .line 124
    .line 125
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    :cond_0
    if-eqz v0, :cond_1

    .line 132
    .line 133
    new-instance v2, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$2;

    .line 134
    .line 135
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$2;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    if-eqz v1, :cond_2

    .line 142
    .line 143
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$3;

    .line 144
    .line 145
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$3;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->goH5:Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    new-instance v1, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$4;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$4;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    if-eqz p1, :cond_4

    .line 164
    .line 165
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$5;

    .line 166
    .line 167
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$5;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->afterviews()V

    .line 174
    .line 175
    .line 176
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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->beans_:Ljava/util/Map;

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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showDefaultUI()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$7;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;)V

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

.method showDomainUI(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "domainInfoBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$6;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$6;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;Lcom/join/mgps/dto/DomainInfoBean;)V

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
