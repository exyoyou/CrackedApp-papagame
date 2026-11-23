.class public abstract Lcom/join/mgps/base/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/base/c;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/base/c;->b:Z

    .line 9
    .line 10
    return-void
.end method

.method private k(Lcom/join/mgps/base/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "visible"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private l(Lcom/join/mgps/base/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "visible"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private m(Lcom/join/mgps/base/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "visible"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/base/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/base/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_2

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->m(Lcom/join/mgps/base/b;Z)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->l(Lcom/join/mgps/base/b;Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/base/c;->k(Lcom/join/mgps/base/b;Z)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public abstract b()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract c()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method protected abstract d()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/base/c;->a:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract f()I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end method

.method public g()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/base/c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/c;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/base/c;->b:Z

    .line 10
    .line 11
    return v0
.end method

.method public final i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadMoreEndGone"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/base/c;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadMoreStatus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/base/c;->a:I

    .line 2
    .line 3
    return-void
.end method
