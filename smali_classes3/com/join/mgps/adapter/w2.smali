.class public final Lcom/join/mgps/adapter/w2;
.super Lcom/join/mgps/adapter/v2;
.source "SourceFile"


# instance fields
.field private j:Landroid/content/Context;

.field private k:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/v2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->j:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/adapter/w2;->z()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rootFragment"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/adapter/v2;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->j:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/w2;->k:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/adapter/w2;->z()V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/w2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/adapter/o6;->b(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/join/mgps/adapter/w2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/adapter/o6;->b(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/join/mgps/adapter/w2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/o6;->h(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p(Lcom/join/mgps/adapter/w2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/o6;->h(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/join/mgps/adapter/w2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/o6;->g(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/join/mgps/adapter/w2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/o6;->g(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/join/mgps/adapter/w2;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/o6;->a(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/join/mgps/adapter/w2;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/o6;->a(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/join/mgps/adapter/w2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/adapter/o6;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/join/mgps/adapter/w2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/adapter/o6;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static x(Landroid/content/Context;)Lcom/join/mgps/adapter/w2;
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
    new-instance v0, Lcom/join/mgps/adapter/w2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/w2;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static y(Landroid/content/Context;Ljava/lang/Object;)Lcom/join/mgps/adapter/w2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rootFragment"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/w2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/w2;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w2;->j:Landroid/content/Context;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/v2;->h:Landroid/content/Context;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/w2;->j:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/adapter/w2;->z()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/join/mgps/dto/GameTransferBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/w2;->s(Lcom/join/mgps/adapter/w2;Landroid/util/SparseArray;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/w2$d;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/w2$d;-><init>(Lcom/join/mgps/adapter/w2;Landroid/util/SparseArray;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "position",
            "t"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/GameTransferBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/w2;->w(ILcom/join/mgps/dto/GameTransferBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/adapter/w2;->u(Lcom/join/mgps/adapter/w2;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/w2$e;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/w2$e;-><init>(Lcom/join/mgps/adapter/w2;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public g(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/w2;->q(Lcom/join/mgps/adapter/w2;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/w2$c;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/w2$c;-><init>(Lcom/join/mgps/adapter/w2;I)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public h(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/w2;->o(Lcom/join/mgps/adapter/w2;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/w2$b;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/w2$b;-><init>(Lcom/join/mgps/adapter/w2;I)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public w(ILcom/join/mgps/dto/GameTransferBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "t"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1, p2}, Lcom/join/mgps/adapter/w2;->m(Lcom/join/mgps/adapter/w2;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/w2$a;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/adapter/w2$a;-><init>(Lcom/join/mgps/adapter/w2;ILcom/join/mgps/dto/GameTransferBean;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
