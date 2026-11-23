.class public Lcom/facebook/fresco/animation/backend/c;
.super Lcom/facebook/fresco/animation/backend/b;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/backend/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/backend/a;",
        ">",
        "Lcom/facebook/fresco/animation/backend/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final p:J = 0x7d0L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final q:J = 0x3e8L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final h:Ll3/c;

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:Lcom/facebook/fresco/animation/backend/c$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final o:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Ll3/c;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/backend/c$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animationBackend",
            "inactivityListener",
            "monotonicClock",
            "scheduledExecutorServiceForUiThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/fresco/animation/backend/c$b;",
            "Ll3/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/backend/b;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x7d0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    .line 10
    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    .line 14
    .line 15
    new-instance p1, Lcom/facebook/fresco/animation/backend/c$a;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/backend/c$a;-><init>(Lcom/facebook/fresco/animation/backend/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/c;->o:Ljava/lang/Runnable;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/facebook/fresco/animation/backend/c;->n:Lcom/facebook/fresco/animation/backend/c$b;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/facebook/fresco/animation/backend/c;->h:Ll3/c;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/facebook/fresco/animation/backend/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic n(Lcom/facebook/fresco/animation/backend/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/facebook/fresco/animation/backend/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/c;->v()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic p(Lcom/facebook/fresco/animation/backend/c;)Lcom/facebook/fresco/animation/backend/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/backend/c;->n:Lcom/facebook/fresco/animation/backend/c$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/facebook/fresco/animation/backend/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/c;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static r(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Ll3/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "backend",
            "inactivityListener",
            "monotonicClock",
            "scheduledExecutorServiceForUiThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/backend/a;",
            ">(TT;",
            "Lcom/facebook/fresco/animation/backend/c$b;",
            "Ll3/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/backend/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/backend/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/c;-><init>(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Ll3/c;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static s(Lcom/facebook/fresco/animation/backend/a;Ll3/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "backend",
            "monotonicClock",
            "scheduledExecutorServiceForUiThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/backend/a;",
            ":",
            "Lcom/facebook/fresco/animation/backend/c$b;",
            ">(TT;",
            "Ll3/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/backend/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/facebook/fresco/animation/backend/c$b;

    .line 3
    .line 4
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/fresco/animation/backend/c;->r(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Ll3/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private v()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c;->h:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/c;->k:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private declared-synchronized w()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c;->o:Ljava/lang/Runnable;

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    .line 14
    .line 15
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method


# virtual methods
.method public j(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "canvas",
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c;->h:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->k:J

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/b;->j(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/c;->w()V

    .line 14
    .line 15
    .line 16
    return p1
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public x(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inactivityCheckPollingTimeMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public y(Lcom/facebook/fresco/animation/backend/c$b;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/backend/c$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inactivityListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/c;->n:Lcom/facebook/fresco/animation/backend/c$b;

    .line 2
    .line 3
    return-void
.end method

.method public z(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inactivityThresholdMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    .line 2
    .line 3
    return-void
.end method
