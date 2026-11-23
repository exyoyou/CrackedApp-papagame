.class public Lcom/byazt/kcl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x22
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Z

.field public da:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final i:I

.field public m:Lcom/byazt/jzl/a;

.field public n:I

.field public nu:Z

.field public sl:Lcom/byazt/ete/ic;

.field public sp:Lcom/byazt/dh/ve;

.field public t:Landroid/widget/FrameLayout;

.field public tt:Z

.field public u:Ljava/lang/String;

.field public uj:J

.field public ve:Z

.field public x:J

.field public yp:J

.field public z:Lcom/byazt/hkv/c;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xd2

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/kcl/a;->i:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->c:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->tt:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->ve:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->nu:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 18
    .line 19
    return-void
.end method

.method private sv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/byazt/dh/ve;->sl()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/byazt/kcl/a;->x:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isStarted()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isCompleted()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/byazt/dh/ve;->a()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/byazt/dh/ve;->i()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->tt:Z

    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kcl/a;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bx()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/zd/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/zd/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/zd/c;->lo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setPlaySpeedRatio(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->c(I)V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/byazt/kcl/a;->x:J

    return-void
.end method

.method public c(JZ)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_2

    .line 14
    iget-boolean v1, p0, Lcom/byazt/kcl/a;->ve:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/byazt/dh/ve;->c(J)V

    .line 16
    iget-object p1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {p1, p3}, Lcom/byazt/dh/ve;->tt(Z)V

    return-void

    .line 17
    :cond_1
    invoke-interface {v0}, Lcom/byazt/dh/ve;->x()V

    :cond_2
    return-void
.end method

.method public c(Landroid/widget/FrameLayout;Ljava/lang/String;Z)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/kcl/a;->nu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->nu:Z

    .line 4
    iput-object p1, p0, Lcom/byazt/kcl/a;->t:Landroid/widget/FrameLayout;

    .line 5
    iput-object p2, p0, Lcom/byazt/kcl/a;->u:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/byazt/kcl/a;->a:Z

    if-eqz p3, :cond_1

    .line 7
    new-instance p2, Lcom/byazt/xh/tt;

    iget-object p3, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/kcl/a;->z:Lcom/byazt/hkv/c;

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/byazt/xh/tt;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Lcom/byazt/hkv/c;)V

    iput-object p2, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/byazt/xh/c;

    iget-object p3, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/kcl/a;->z:Lcom/byazt/hkv/c;

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/byazt/xh/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Lcom/byazt/hkv/c;)V

    iput-object p2, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->p()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/byazt/kcl/a;->n:I

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;Lcom/byazt/jzl/a;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 57
    iput-object p2, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 58
    iput-object p3, p0, Lcom/byazt/kcl/a;->m:Lcom/byazt/jzl/a;

    return-void
.end method

.method public c(Lcom/byazt/hkv/c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/byazt/kcl/a;->z:Lcom/byazt/hkv/c;

    return-void
.end method

.method public c(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->rl()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(JZ)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/zd/c$c;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    instance-of v1, v0, Lcom/byazt/zd/c;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Lcom/byazt/zd/c;

    .line 23
    invoke-virtual {v0, p1}, Lcom/byazt/zd/c;->c(Lcom/byazt/zd/c$c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_1

    .line 19
    iget-boolean v1, p0, Lcom/byazt/kcl/a;->ve:Z

    if-eqz v1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->c(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/byazt/kcl/a;->tt:Z

    return-void
.end method

.method public c(ZLcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 4

    if-nez p1, :cond_4

    .line 39
    iget-object p1, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->ve()Z

    move-result p1

    const-string v0, "TTBaseVideoActivity"

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/fcd/c;->qp()Lcom/byazt/zd/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Lcom/byazt/zd/tt;->uj()Z

    move-result v1

    .line 43
    invoke-interface {p1}, Lcom/byazt/zd/tt;->n()J

    move-result-wide v2

    .line 44
    invoke-interface {p1}, Lcom/byazt/zd/tt;->a()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/byazt/kcl/a;->sv()V

    .line 46
    invoke-virtual {p0, p2}, Lcom/byazt/kcl/a;->c(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0, v2, v3, p1}, Lcom/byazt/kcl/a;->c(JZ)V

    :goto_1
    const-string p1, "resumeOrRestartVideo: continue play"

    .line 48
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_3
    invoke-direct {p0}, Lcom/byazt/kcl/a;->sv()V

    .line 50
    invoke-virtual {p0, p2}, Lcom/byazt/kcl/a;->c(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    const-string p1, "resumeOrRestartVideo: recreate video player & exec play"

    .line 51
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(JZI)Z
    .locals 6

    .line 24
    iget-object p4, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-static {p4}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object p4

    if-nez p4, :cond_0

    goto/16 :goto_3

    .line 25
    :cond_0
    iget-object p4, p0, Lcom/byazt/kcl/a;->m:Lcom/byazt/jzl/a;

    if-eqz p4, :cond_1

    goto :goto_2

    .line 26
    :cond_1
    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xx()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/c;->getRewardFullCacheDir()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ete/xd;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-lez p4, :cond_2

    .line 28
    iput-boolean v1, p0, Lcom/byazt/kcl/a;->c:Z

    .line 29
    :cond_2
    iget-object p4, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-static {v1, p4}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object p4

    .line 30
    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/byazt/kcl/a;->t:Landroid/widget/FrameLayout;

    const/16 v2, 0x64

    if-nez v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 32
    iget-object v0, p0, Lcom/byazt/kcl/a;->t:Landroid/widget/FrameLayout;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_1
    invoke-virtual {p4, v2}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 33
    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p4, p1, p2}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 35
    invoke-virtual {p4, p3}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 36
    iget-object p1, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p4, v1}, Lcom/byazt/jzl/a;->setAudio(Z)V

    .line 38
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {p1, p4}, Lcom/byazt/dh/ve;->c(Lcom/byazt/jzl/a;)Z

    move-result p1

    return p1

    :cond_6
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public cu()Lcom/byazt/dh/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/byazt/zd/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->cu()Lcom/byazt/dh/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/byazt/zd/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public da()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public eo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/byazt/dh/ve;->ve()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public gr()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->sp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public gt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public gu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public h()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->sl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/xd;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/jzl/c;->a()D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double v0, v0, v2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->d()Lcom/byazt/zd/c;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/byazt/zd/c;->sv()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-double v2, v2

    .line 33
    mul-double v0, v0, v2

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/byazt/kcl/a;->uj:J

    .line 36
    .line 37
    long-to-double v4, v2

    .line 38
    sub-double v4, v0, v4

    .line 39
    .line 40
    const-wide v6, 0x406a400000000000L    # 210.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpl-double v8, v4, v6

    .line 46
    .line 47
    if-lez v8, :cond_0

    .line 48
    .line 49
    long-to-double v2, v2

    .line 50
    add-double/2addr v2, v0

    .line 51
    double-to-long v0, v2

    .line 52
    iput-wide v0, p0, Lcom/byazt/kcl/a;->yp:J

    .line 53
    .line 54
    return-wide v0

    .line 55
    :cond_0
    iget-wide v0, p0, Lcom/byazt/kcl/a;->uj:J

    .line 56
    .line 57
    iget-wide v2, p0, Lcom/byazt/kcl/a;->yp:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    return-wide v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->da()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->sl()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/byazt/kcl/a;->x:J

    .line 11
    .line 12
    return-wide v0
.end method

.method public md()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kcl/a;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public my()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/fk/sp;->stop()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kcl/a;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public nb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kcl/a;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public nu()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->t()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isFirstFrameSuccess()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public p()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->pb()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->pb()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-double v2, v2

    .line 30
    cmpl-double v4, v0, v2

    .line 31
    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pb()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-double v0, v0

    .line 41
    :cond_0
    return-wide v0
.end method

.method public pf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/kcl/a;->ve:Z

    .line 3
    .line 4
    return-void
.end method

.method public qp()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->nu()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/afw/nu$c;->n(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->rh()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/afw/nu$c;->a(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 25
    .line 26
    instance-of v2, v1, Lcom/byazt/zd/c;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    check-cast v1, Lcom/byazt/zd/c;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->ve(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 40
    .line 41
    check-cast v1, Lcom/byazt/zd/c;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    xor-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->zb()Lcom/byazt/dh/tt;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->x()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v0, v3, v1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/util/Map;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public qy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public rh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public rl()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPaused()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isReleased()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 32
    .line 33
    check-cast v0, Lcom/byazt/zd/c;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/zd/c;->ic()V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->n()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/byazt/kcl/a;->c(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 49
    .line 50
    check-cast v0, Lcom/byazt/zd/c;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/byazt/zd/c;->ic()V

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    return v1
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->uj()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/byazt/dh/ve;->i()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 11
    .line 12
    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public tt(J)V
    .locals 6

    .line 15
    iput-wide p1, p0, Lcom/byazt/kcl/a;->uj:J

    .line 16
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->t()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/byazt/kcl/a;->sl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/byazt/kcl/a;->sl:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/xd;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/jzl/c;->a()D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    .line 18
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->p()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/kcl/a;->uj:J

    long-to-double v4, v4

    add-double/2addr v4, p1

    div-double/2addr v4, v0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/byazt/kcl/a;->n:I

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->p()D

    move-result-wide p1

    iget-wide v0, p0, Lcom/byazt/kcl/a;->uj:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    sub-double/2addr p1, v0

    double-to-int p1, p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/byazt/kcl/a;->n:I

    return-void
.end method

.method public tt(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->tt(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public tt(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->or()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->or()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 5
    :goto_0
    new-instance v1, Lcom/byazt/afw/nu$c;

    invoke-direct {v1}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->nu()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->or()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/byazt/afw/nu$c;->ve(I)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/byazt/afw/nu$c;->uj(I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    instance-of v0, p1, Lcom/byazt/zd/c;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lcom/byazt/zd/c;

    iget-object p1, p1, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/byazt/sw/c;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    check-cast p1, Lcom/byazt/zd/c;

    iget-object p1, p1, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {p1, v0}, Lcom/byazt/sw/c;->ve(I)V

    .line 12
    iget-object p1, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/byazt/sw/uj;->ve(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    :cond_4
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->my()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->qy()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public ve(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->tt(Z)V

    :cond_0
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kcl/a;->tt()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->tt(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public yp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public yv()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->z(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "onContinue throw Exception :"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "TTBaseVideoActivity"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public zb()Lcom/byazt/dh/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/a;->sp:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public zm()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/a;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->yp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "onPause throw Exception :"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "TTBaseVideoActivity"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
