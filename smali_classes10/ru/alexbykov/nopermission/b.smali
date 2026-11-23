.class public Lru/alexbykov/nopermission/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:I = 0x62

.field private static final k:I


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/app/AlertDialog$Builder;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 3
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 6
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic a(Lru/alexbykov/nopermission/b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->b([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    const/16 v1, 0x62

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lq0/h;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private e([Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->l([Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->x([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->b([Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private f()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->h()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lru/alexbykov/nopermission/b;->e([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private g(II)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 6
    .line 7
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private h()[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lru/alexbykov/nopermission/b;->c:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    invoke-direct {p0, v4}, Lru/alexbykov/nopermission/b;->m(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    new-array v1, v1, [Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Ln2/z;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    return p1
.end method

.method private l([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    invoke-direct {p0, v3}, Lru/alexbykov/nopermission/b;->k(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method private m(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_1
    return v1
.end method

.method private t(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->k(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->u()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->z()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->f()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private x([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget v1, p0, Lru/alexbykov/nopermission/b;->h:I

    .line 4
    .line 5
    new-instance v2, Lru/alexbykov/nopermission/b$a;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lru/alexbykov/nopermission/b$a;-><init>(Lru/alexbykov/nopermission/b;[Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget v0, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    .line 3
    .line 4
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 5
    .line 6
    iget-object v1, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lru/alexbykov/nopermission/b;->h:I

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    .line 20
    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public B(III)Lru/alexbykov/nopermission/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput p3, p0, Lru/alexbykov/nopermission/b;->h:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lru/alexbykov/nopermission/b;->g(II)Landroid/app/AlertDialog$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    .line 8
    .line 9
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lru/alexbykov/nopermission/b;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->c:[Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object p1, v0, v1

    .line 8
    .line 9
    return-object p0
.end method

.method public varargs d([Ljava/lang/String;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public q(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const/16 p3, 0x62

    .line 2
    .line 3
    if-ne p1, p3, :cond_1

    .line 4
    .line 5
    array-length p1, p2

    .line 6
    const/4 p3, 0x0

    .line 7
    :goto_0
    if-ge p3, p1, :cond_1

    .line 8
    .line 9
    aget-object v0, p2, p3

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lru/alexbykov/nopermission/b;->m(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lru/alexbykov/nopermission/b;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->z()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public r(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->v()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v1, "permissionSuccessListener or permissionDeniedListener have null reference. You must realize onSuccess and onDenied methods"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public w(I)Lru/alexbykov/nopermission/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 10
    .line 11
    return-object p0
.end method

.method public y()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const-string v4, "package"

    .line 16
    .line 17
    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
