.class public Lqc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = -0x1

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/Throwable;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqc/a;->o()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lqc/a;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lqc/a;->i:Z

    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqc/a;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lqc/a;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lqc/a;->h:Ljava/lang/Throwable;

    .line 8
    .line 9
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqc/a;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lqc/a;->g:I

    .line 6
    .line 7
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqc/a;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lqc/a;->h:Ljava/lang/Throwable;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lqc/a;->g:I

    .line 9
    .line 10
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lqc/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/a;->h:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lqc/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lqc/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lqc/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqc/a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqc/a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqc/a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqc/a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lqc/a;->e:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lqc/a;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lqc/a;->f:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    iput-wide v1, p0, Lqc/a;->b:J

    .line 13
    .line 14
    iput-wide v1, p0, Lqc/a;->c:J

    .line 15
    .line 16
    iput v0, p0, Lqc/a;->d:I

    .line 17
    .line 18
    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqc/a;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqc/a;->h:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqc/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lqc/a;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqc/a;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqc/a;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqc/a;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public v(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lqc/a;->b:J

    .line 2
    .line 3
    return-void
.end method

.method public w(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lqc/a;->c:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lqc/a;->c:J

    .line 5
    .line 6
    iget-wide p1, p0, Lqc/a;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, p1, v2

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x64

    .line 15
    .line 16
    mul-long v0, v0, v2

    .line 17
    .line 18
    div-long/2addr v0, p1

    .line 19
    long-to-int p1, v0

    .line 20
    iput p1, p0, Lqc/a;->d:I

    .line 21
    .line 22
    const/16 p2, 0x64

    .line 23
    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    iput p2, p0, Lqc/a;->d:I

    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lqc/a;->j:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-wide/16 p1, 0x96

    .line 34
    .line 35
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    nop

    .line 40
    goto :goto_0
.end method
