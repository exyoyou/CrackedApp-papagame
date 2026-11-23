.class public final Lcom/join/mgps/fragment/o5;
.super Lcom/join/mgps/fragment/n5;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/o5$j;
    }
.end annotation


# instance fields
.field private final v:Lzc/c;

.field private w:Landroid/view/View;

.field private final x:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/n5;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/o5;->v:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/o5;->x:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic T(Lcom/join/mgps/fragment/o5;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n5;->showMain(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U(Lcom/join/mgps/fragment/o5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/n5;->showLoadFailed(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V(Lcom/join/mgps/fragment/o5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n5;->hideLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/o5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n5;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X(Lcom/join/mgps/fragment/o5;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/n5;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Y()Lcom/join/mgps/fragment/o5$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/o5$j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/o5$j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/fragment/o5;->x:Ljava/util/Map;

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

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/o5$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o5$g;-><init>(Lcom/join/mgps/fragment/o5;)V

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

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/fragment/o5;->w:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/o5$i;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/o5$i;-><init>(Lcom/join/mgps/fragment/o5;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/o5;->v:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o5;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/o5;->w:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d02dc

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/fragment/o5;->w:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o5;->w:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/o5;->w:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->d:Landroidx/viewpager/widget/ViewPager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->f:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->g:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->h:Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->i:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->j:Landroid/view/View;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->m:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->n:Landroid/view/View;

    .line 26
    .line 27
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
    const v0, 0x7f0a145e

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
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    const v0, 0x7f0a1b93

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->d:Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    const v0, 0x7f0a09c9

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
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->e:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a195f

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
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->f:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a026b

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
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->g:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a0204

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
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->h:Landroid/widget/ImageView;

    .line 66
    .line 67
    const v0, 0x7f0a13b3

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
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->i:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    const v0, 0x7f0a04e1

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->j:Landroid/view/View;

    .line 86
    .line 87
    const v0, 0x7f0a0f95

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->m:Landroid/view/View;

    .line 95
    .line 96
    const v0, 0x7f0a0f92

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/join/mgps/fragment/n5;->n:Landroid/view/View;

    .line 104
    .line 105
    const v0, 0x7f0a1508

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const v1, 0x7f0a1368

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz v0, :cond_0

    .line 120
    .line 121
    new-instance v1, Lcom/join/mgps/fragment/o5$a;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o5$a;-><init>(Lcom/join/mgps/fragment/o5;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    .line 131
    new-instance v0, Lcom/join/mgps/fragment/o5$b;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o5$b;-><init>(Lcom/join/mgps/fragment/o5;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/n5;->e:Landroid/widget/ImageView;

    .line 140
    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    new-instance v0, Lcom/join/mgps/fragment/o5$c;

    .line 144
    .line 145
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o5$c;-><init>(Lcom/join/mgps/fragment/o5;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/n5;->f:Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    new-instance v0, Lcom/join/mgps/fragment/o5$d;

    .line 156
    .line 157
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o5$d;-><init>(Lcom/join/mgps/fragment/o5;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/n5;->aftervidew()V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/o5;->v:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
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
    iget-object v0, p0, Lcom/join/mgps/fragment/o5;->x:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/fragment/o5$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/o5$f;-><init>(Lcom/join/mgps/fragment/o5;Ljava/lang/String;)V

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

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/o5$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o5$h;-><init>(Lcom/join/mgps/fragment/o5;)V

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

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/o5$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/o5$e;-><init>(Lcom/join/mgps/fragment/o5;Ljava/util/List;)V

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
