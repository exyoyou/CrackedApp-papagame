.class public final Lcom/join/mgps/activity/PapaLookOtherActivity_;
.super Lcom/join/mgps/activity/PapaLookOtherActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PapaLookOtherActivity_$q;
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

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity;->setLinkType(ILcom/join/mgps/dto/CollectionDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->serverConnectionException()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->netWorkException()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showMain()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/PapaLookOtherActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showMessageCount(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->getLookOther()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->getDownloadTaskInfo()V

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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f12031f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->netExcption:Ljava/lang/String;

    .line 16
    .line 17
    const v0, 0x7f1200cd

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->netConnectExcption:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapaLookOtherActivity_$q;
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
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/PapaLookOtherActivity_$q;
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
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->beans_:Ljava/util/Map;

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

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaLookOtherActivity_$g;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaLookOtherActivity_$g;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method getLookOther()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaLookOtherActivity_$f;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaLookOtherActivity_$f;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method netWorkException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$p;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaLookOtherActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d07cb

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaLookOtherActivity_;->setContentView(I)V

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
    const v0, 0x7f0a1790

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
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->title_textview:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a0f95

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const v0, 0x7f0a0f92

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const v0, 0x7f0a06c2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->fragment:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    const v0, 0x7f0a178d

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
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->searchImg:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a178b

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 66
    .line 67
    const v0, 0x7f0a03d3

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->commentParent:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    const v0, 0x7f0a03cb

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
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->comment:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v0, 0x7f0a1425

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
    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->roundMessage:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a014e

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, 0x7f0a1368

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const v2, 0x7f0a1508

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    new-instance v2, Lcom/join/mgps/activity/PapaLookOtherActivity_$h;

    .line 124
    .line 125
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$h;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    :cond_0
    if-eqz v1, :cond_1

    .line 132
    .line 133
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$i;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$i;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    if-eqz p1, :cond_2

    .line 142
    .line 143
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$j;

    .line 144
    .line 145
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$j;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->searchImg:Landroid/widget/ImageView;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$k;

    .line 156
    .line 157
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$k;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 164
    .line 165
    if-eqz p1, :cond_4

    .line 166
    .line 167
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$l;

    .line 168
    .line 169
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$l;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->comment:Landroid/widget/ImageView;

    .line 176
    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$m;

    .line 180
    .line 181
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$m;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->afterview()V

    .line 188
    .line 189
    .line 190
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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$o;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method setLinkType(ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "index",
            "collectionDataBeanFirsts"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity_$n;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;ILcom/join/mgps/dto/CollectionDataBean;)V

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

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$a;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$b;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

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
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$c;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

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

.method showMessageCount(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "switchInt",
            "comment_count"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/PapaLookOtherActivity_$e;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;II)V

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

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaLookOtherActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaLookOtherActivity_$d;-><init>(Lcom/join/mgps/activity/PapaLookOtherActivity_;)V

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
