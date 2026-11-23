.class public final Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;
.super Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;
    }
.end annotation


# static fields
.field public static final O:Ljava/lang/String; = "gameId"

.field public static final P:Ljava/lang/String; = "hasPlug"

.field public static final Q:Ljava/lang/String; = "hasRom"

.field public static final R:Ljava/lang/String; = "from"


# instance fields
.field private final M:Lzc/c;

.field private final N:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->M:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->N:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static A(Landroid/content/Context;)Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;
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
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static B(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$m;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic q(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private y(Landroid/os/Bundle;)V
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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private z()V
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
    if-eqz v0, :cond_3

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
    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "hasPlug"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 38
    .line 39
    :cond_1
    const-string v1, "hasRom"

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
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Z

    .line 52
    .line 53
    :cond_2
    const-string v1, "from"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e:Ljava/lang/String;

    .line 66
    .line 67
    :cond_3
    return-void
.end method


# virtual methods
.method d(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$b;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$b;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method e()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$h;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1f4

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

.method f()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$i;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x320

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

.method g()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$c;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$c;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->N:Ljava/util/Map;

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

.method i()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$k;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

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

.method n()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$a;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

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

.method o()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$l;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->M:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->y(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d01b9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0a39

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v0, 0x7f0a1971

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a107a

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->j:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a0718

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ProgressBar;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/ProgressBar;

    .line 44
    .line 45
    const v0, 0x7f0a1974

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a0a6d

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 66
    .line 67
    const v0, 0x7f0a19f4

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a1265

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ProgressBar;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    const v0, 0x7f0a19f5

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a025b

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/Button;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 110
    .line 111
    const v0, 0x7f0a0f6a

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v0, 0x7f0a0f92

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->s:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    const v0, 0x7f0a1368

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->t:Landroid/widget/ImageView;

    .line 143
    .line 144
    const v0, 0x7f0a1508

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
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->u:Landroid/widget/Button;

    .line 154
    .line 155
    const v0, 0x7f0a0a22

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->v:Landroid/view/View;

    .line 163
    .line 164
    const v0, 0x7f0a0ee5

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/widget/LinearLayout;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->w:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    const v0, 0x7f0a0f22

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/LinearLayout;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->x:Landroid/widget/LinearLayout;

    .line 185
    .line 186
    const v0, 0x7f0a0ef6

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/LinearLayout;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->y:Landroid/widget/LinearLayout;

    .line 196
    .line 197
    const v0, 0x7f0a198e

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Landroid/widget/TextView;

    .line 205
    .line 206
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->z:Landroid/widget/TextView;

    .line 207
    .line 208
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/Button;

    .line 209
    .line 210
    if-eqz p1, :cond_0

    .line 211
    .line 212
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$d;

    .line 213
    .line 214
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$d;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->v:Landroid/view/View;

    .line 221
    .line 222
    if-eqz p1, :cond_1

    .line 223
    .line 224
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$e;

    .line 225
    .line 226
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$e;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->u:Landroid/widget/Button;

    .line 233
    .line 234
    if-eqz p1, :cond_2

    .line 235
    .line 236
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$f;

    .line 237
    .line 238
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$f;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->t:Landroid/widget/ImageView;

    .line 245
    .line 246
    if-eqz p1, :cond_3

    .line 247
    .line 248
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$g;

    .line 249
    .line 250
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$g;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a()V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method p()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_$j;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->N:Ljava/util/Map;

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
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->M:Lzc/c;

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
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->M:Lzc/c;

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
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->M:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;->z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
