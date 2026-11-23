.class public final Lcom/byazt/kt/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kt/uj$tt;,
        Lcom/byazt/kt/uj$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/byazt/kt/uj;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/kt/uj$tt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/kt/uj$tt;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/kt/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public uj:J

.field public ve:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/kt/uj;->c:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/kt/uj$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/byazt/kt/uj$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/kt/uj;->n:Ljava/util/Comparator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView;IJ)Lcom/byazt/kt/RecyclerView$gu;
    .locals 2

    .line 32
    invoke-static {p1, p2}, Lcom/byazt/kt/uj;->c(Lcom/byazt/kt/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView;->n:Lcom/byazt/kt/RecyclerView$m;

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->t()V

    .line 35
    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/byazt/kt/RecyclerView$m;->c(IZJ)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 36
    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$gu;->m()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result p3

    if-nez p3, :cond_1

    .line 37
    iget-object p3, p2, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v0, p3}, Lcom/byazt/kt/RecyclerView$m;->c(Landroid/view/View;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, p2, v1}, Lcom/byazt/kt/RecyclerView$m;->c(Lcom/byazt/kt/RecyclerView$gu;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/byazt/kt/RecyclerView;->tt(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Lcom/byazt/kt/RecyclerView;->tt(Z)V

    throw p2
.end method

.method private c()V
    .locals 12

    .line 6
    iget-object v0, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    iget-object v4, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/kt/RecyclerView;

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 9
    iget-object v5, v4, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    invoke-virtual {v5, v4, v1}, Lcom/byazt/kt/uj$c;->c(Lcom/byazt/kt/RecyclerView;Z)V

    .line 10
    iget-object v4, v4, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    iget v4, v4, Lcom/byazt/kt/uj$c;->uj:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 12
    iget-object v4, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/kt/RecyclerView;

    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 14
    iget-object v5, v4, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    .line 15
    iget v6, v5, Lcom/byazt/kt/uj$c;->c:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Lcom/byazt/kt/uj$c;->tt:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    .line 16
    :goto_2
    iget v8, v5, Lcom/byazt/kt/uj$c;->uj:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_4

    .line 17
    iget-object v8, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 18
    new-instance v8, Lcom/byazt/kt/uj$tt;

    invoke-direct {v8}, Lcom/byazt/kt/uj$tt;-><init>()V

    .line 19
    iget-object v9, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_2
    iget-object v8, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/kt/uj$tt;

    .line 21
    :goto_3
    iget-object v9, v5, Lcom/byazt/kt/uj$c;->ve:[I

    add-int/lit8 v10, v7, 0x1

    aget v10, v9, v10

    if-gt v10, v6, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    .line 22
    :goto_4
    iput-boolean v11, v8, Lcom/byazt/kt/uj$tt;->c:Z

    .line 23
    iput v6, v8, Lcom/byazt/kt/uj$tt;->tt:I

    .line 24
    iput v10, v8, Lcom/byazt/kt/uj$tt;->ve:I

    .line 25
    iput-object v4, v8, Lcom/byazt/kt/uj$tt;->uj:Lcom/byazt/kt/RecyclerView;

    .line 26
    aget v9, v9, v7

    iput v9, v8, Lcom/byazt/kt/uj$tt;->n:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/byazt/kt/uj;->n:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView;J)V
    .locals 3

    if-eqz p1, :cond_2

    .line 40
    iget-boolean v0, p1, Lcom/byazt/kt/RecyclerView;->gu:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {v0}, Lcom/byazt/kt/tt;->ve()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->ve()V

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/byazt/kt/uj$c;->c(Lcom/byazt/kt/RecyclerView;Z)V

    .line 44
    iget v1, v0, Lcom/byazt/kt/uj$c;->uj:I

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    .line 45
    invoke-static {v1}, Lcom/byazt/km/c;->c(Ljava/lang/String;)V

    .line 46
    iget-object v1, p1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    iget-object v2, p1, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v1, v2}, Lcom/byazt/kt/RecyclerView$gt;->c(Lcom/byazt/kt/RecyclerView$c;)V

    const/4 v1, 0x0

    .line 47
    :goto_0
    iget v2, v0, Lcom/byazt/kt/uj$c;->uj:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 48
    iget-object v2, v0, Lcom/byazt/kt/uj$c;->ve:[I

    aget v2, v2, v1

    .line 49
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/byazt/kt/uj;->c(Lcom/byazt/kt/RecyclerView;IJ)Lcom/byazt/kt/RecyclerView$gu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/byazt/km/c;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/byazt/km/c;->c()V

    throw p1

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/kt/uj$tt;J)V
    .locals 3

    .line 51
    iget-boolean v0, p1, Lcom/byazt/kt/uj$tt;->c:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    .line 52
    :goto_0
    iget-object v2, p1, Lcom/byazt/kt/uj$tt;->uj:Lcom/byazt/kt/RecyclerView;

    iget p1, p1, Lcom/byazt/kt/uj$tt;->n:I

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/byazt/kt/uj;->c(Lcom/byazt/kt/RecyclerView;IJ)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->tt:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->tt:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kt/uj;->c(Lcom/byazt/kt/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/kt/RecyclerView;I)Z
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {v0}, Lcom/byazt/kt/tt;->ve()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 29
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {v3, v2}, Lcom/byazt/kt/tt;->uj(I)Landroid/view/View;

    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v3

    .line 31
    iget v4, v3, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private tt(J)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/kt/uj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/uj$tt;

    .line 4
    iget-object v2, v1, Lcom/byazt/kt/uj$tt;->uj:Lcom/byazt/kt/RecyclerView;

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, v1, p1, p2}, Lcom/byazt/kt/uj;->c(Lcom/byazt/kt/uj$tt;J)V

    .line 6
    invoke-virtual {v1}, Lcom/byazt/kt/uj$tt;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/byazt/kt/uj;->c()V

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/byazt/kt/uj;->tt(J)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;II)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/byazt/kt/uj;->ve:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/kt/uj;->ve:J

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    invoke-virtual {p1, p2, p3}, Lcom/byazt/kt/uj$c;->c(II)V

    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v2, "RV Prefetch"

    .line 4
    .line 5
    invoke-static {v2}, Lcom/byazt/km/c;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    :goto_0
    iput-wide v0, p0, Lcom/byazt/kt/uj;->ve:J

    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/km/c;->c()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move-wide v4, v0

    .line 30
    :goto_1
    if-ge v3, v2, :cond_2

    .line 31
    .line 32
    iget-object v6, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lcom/byazt/kt/RecyclerView;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    cmp-long v2, v4, v0

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    iget-wide v4, p0, Lcom/byazt/kt/uj;->uj:J

    .line 69
    .line 70
    add-long/2addr v2, v4

    .line 71
    invoke-virtual {p0, v2, v3}, Lcom/byazt/kt/uj;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    .line 76
    iput-wide v0, p0, Lcom/byazt/kt/uj;->ve:J

    .line 77
    .line 78
    invoke-static {}, Lcom/byazt/km/c;->c()V

    .line 79
    .line 80
    .line 81
    throw v2
.end method

.method public tt(Lcom/byazt/kt/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/uj;->tt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
