.class public Lcom/byazt/ji/a;
.super Lcom/byazt/ji/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cd/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xde,
        0x22
    }
.end annotation


# instance fields
.field public gr:Z

.field public gt:Z

.field public gu:I

.field public m:I

.field public my:Z

.field public nu:Landroid/os/Handler;

.field public qy:J

.field public rh:I

.field public rl:Z

.field public sl:I

.field public t:I

.field public u:Ljava/lang/String;

.field public yp:I

.field public z:I

.field public final zm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ji/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/ji/a;->t:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 10
    .line 11
    iput p1, p0, Lcom/byazt/ji/a;->yp:I

    .line 12
    .line 13
    iput p1, p0, Lcom/byazt/ji/a;->z:I

    .line 14
    .line 15
    iput p1, p0, Lcom/byazt/ji/a;->m:I

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/cd/i;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/byazt/cd/i;-><init>(Landroid/os/Looper;Lcom/byazt/cd/i$c;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/ji/a;->nu:Landroid/os/Handler;

    .line 27
    .line 28
    iput p1, p0, Lcom/byazt/ji/a;->rh:I

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/byazt/ji/a;->my:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/byazt/ji/a;->gt:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/byazt/ji/a;->rl:Z

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/byazt/ji/a;->qy:J

    .line 39
    .line 40
    iput p1, p0, Lcom/byazt/ji/a;->gu:I

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/byazt/ji/a;->gr:Z

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    .line 50
    .line 51
    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ji/a;->rl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/byazt/ji/a;->qy:J

    .line 11
    .line 12
    sub-long/2addr v2, v0

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int v1, v0

    .line 20
    iput v1, p0, Lcom/byazt/ji/a;->gu:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ji/a;->nu:Landroid/os/Handler;

    .line 23
    .line 24
    const/16 v1, 0x3e9

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/byazt/ji/a;->rl:Z

    .line 31
    .line 32
    return-void
.end method

.method private sl()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ji/a;->rl:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ji/a;->rl:Z

    .line 8
    .line 9
    iget v1, p0, Lcom/byazt/ji/a;->gu:I

    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/ji/a;->gu:I

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/byazt/ji/a;->tt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/byazt/ji/sp;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Lcom/byazt/ji/sp;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private tt(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/a;->nu:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/byazt/ji/a;->qy:J

    .line 4
    iget-object p1, p0, Lcom/byazt/ji/a;->nu:Landroid/os/Handler;

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/byazt/ji/sp;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Lcom/byazt/ji/sp;->tt(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ji/a;->gt:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lcom/byazt/ji/a;->z:I

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Lcom/byazt/ji/a;->m:I

    .line 31
    .line 32
    or-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    iput v1, p0, Lcom/byazt/ji/a;->m:I

    .line 35
    .line 36
    :cond_2
    iget v1, p0, Lcom/byazt/ji/a;->z:I

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lcom/byazt/ji/a;->m:I

    .line 51
    .line 52
    or-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    iput v0, p0, Lcom/byazt/ji/a;->m:I

    .line 55
    .line 56
    :cond_3
    iget v0, p0, Lcom/byazt/ji/a;->m:I

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/byazt/ji/a;->n()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    invoke-direct {p0}, Lcom/byazt/ji/a;->sl()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private ve()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ji/a;->gt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ji/a;->gt:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/byazt/ji/a;->my:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/ji/a;->rl:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/byazt/ji/a;->gu:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/byazt/ji/a;->gr:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/byazt/ji/a;->m:I

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/byazt/ji/a;->t()V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/byazt/ji/a;->t:I

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/byazt/ji/a;->tt(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/byazt/ji/a;->uj()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/byazt/ji/tt;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v2, "name"

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iput-object v1, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-object v1, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public c()V
    .locals 2

    .line 31
    iget v0, p0, Lcom/byazt/ji/a;->yp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/byazt/ji/a;->my:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/byazt/ji/a;->ve()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 25
    iget v0, p0, Lcom/byazt/ji/a;->yp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/byazt/ji/a;->my:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/byazt/ji/a;->ve()V

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ji/a;->gt:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/byazt/ji/a;->z:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 28
    iget p1, p0, Lcom/byazt/ji/a;->m:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/byazt/ji/a;->m:I

    goto :goto_0

    .line 29
    :cond_2
    iget p1, p0, Lcom/byazt/ji/a;->m:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/byazt/ji/a;->m:I

    .line 30
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ji/a;->uj()V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 5

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    iget-object v1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    iget-object v2, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-virtual {v3}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 39
    iget p1, p0, Lcom/byazt/ji/a;->rh:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/byazt/ji/a;->rh:I

    if-gez p1, :cond_1

    .line 40
    iget v2, p0, Lcom/byazt/ji/a;->t:I

    if-eqz v2, :cond_1

    .line 41
    invoke-direct {p0, v2}, Lcom/byazt/ji/a;->tt(I)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 42
    iget p1, p0, Lcom/byazt/ji/a;->t:I

    if-eqz p1, :cond_2

    .line 43
    invoke-direct {p0, p1}, Lcom/byazt/ji/a;->tt(I)V

    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/byazt/ji/a;->nu:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    .line 45
    iput-wide v2, p0, Lcom/byazt/ji/a;->qy:J

    .line 46
    iget-boolean p1, p0, Lcom/byazt/ji/a;->gr:Z

    if-nez p1, :cond_3

    .line 47
    iput-boolean v1, p0, Lcom/byazt/ji/a;->gr:Z

    .line 48
    invoke-direct {p0}, Lcom/byazt/ji/a;->u()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/ji/sp;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/byazt/ji/a;->zm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/byazt/ji/a;->gt:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/byazt/ji/a;->z:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    iget p1, p0, Lcom/byazt/ji/a;->m:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/byazt/ji/a;->m:I

    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Lcom/byazt/ji/a;->m:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/byazt/ji/a;->m:I

    .line 36
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ji/a;->uj()V

    :cond_2
    :goto_1
    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    const-string v1, "name"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v1, "condition"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ji/a;->yp:I

    goto :goto_1

    .line 7
    :cond_1
    iput v1, p0, Lcom/byazt/ji/a;->yp:I

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v2, "pauseMode"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ji/a;->z:I

    goto :goto_2

    .line 10
    :cond_2
    iput v1, p0, Lcom/byazt/ji/a;->z:I

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v2, "loop"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ji/a;->sl:I

    goto :goto_3

    .line 13
    :cond_3
    iput v0, p0, Lcom/byazt/ji/a;->sl:I

    .line 14
    :goto_3
    iget p1, p0, Lcom/byazt/ji/a;->sl:I

    if-gtz p1, :cond_4

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/byazt/ji/a;->rh:I

    goto :goto_4

    .line 16
    :cond_4
    iput p1, p0, Lcom/byazt/ji/a;->rh:I

    .line 17
    :goto_4
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    .line 18
    iput v1, p0, Lcom/byazt/ji/a;->t:I

    goto :goto_5

    .line 19
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ji/a;->t:I

    .line 20
    :cond_6
    :goto_5
    iget p1, p0, Lcom/byazt/ji/a;->yp:I

    if-eqz p1, :cond_9

    if-ne p1, v0, :cond_8

    .line 21
    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    .line 22
    :cond_7
    iput-boolean v0, p0, Lcom/byazt/ji/a;->my:Z

    goto :goto_6

    :cond_8
    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    .line 23
    iput-boolean v0, p0, Lcom/byazt/ji/a;->my:Z

    goto :goto_6

    .line 24
    :cond_9
    invoke-direct {p0}, Lcom/byazt/ji/a;->ve()V

    :goto_6
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ji/a;->u:Ljava/lang/String;

    return-object v0
.end method
