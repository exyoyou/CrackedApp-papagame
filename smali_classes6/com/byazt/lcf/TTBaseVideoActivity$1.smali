.class public Lcom/byazt/lcf/TTBaseVideoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zd/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x64e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->m()V

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/byazt/kcl/a;->tt(J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/n;->tt(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kk()V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-boolean p2, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->qy:Z

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->u()V

    .line 11
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/byazt/kcl/a;->c(I)V

    .line 12
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p2, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p2}, Lcom/byazt/kcl/a;->tt()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Z)V

    return-void
.end method

.method public c(JJ)V
    .locals 8

    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-boolean v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->qy:Z

    if-nez v1, :cond_0

    .line 14
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(Ljava/util/Map;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1, v1}, Lcom/byazt/kcl/a;->ve(Z)V

    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->m()V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, p3, p1

    if-eqz v0, :cond_3

    return-void

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kcl/a;->tt(J)V

    .line 23
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/lcf/TTBaseVideoActivity;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->md()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v4, v4, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 25
    invoke-virtual {v4}, Lcom/byazt/kcl/a;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v5, v4

    cmp-long v4, p1, p3

    if-eqz v4, :cond_5

    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 26
    invoke-virtual {p1}, Lcom/byazt/kcl/a;->eo()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 27
    :cond_5
    :goto_0
    invoke-virtual {v3, v0, v5, v2, v1}, Lcom/byazt/dqg/n;->c(Ljava/lang/CharSequence;IIZ)V

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 29
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 30
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {p1}, Lcom/byazt/fcd/c;->rl()V

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 4
    .line 5
    const/16 v1, 0x12c

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->m()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ZZ)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->i()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$1;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/byazt/sy/sp;->c()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
