.class public Lcom/byazt/wz/c$1;
.super Lcom/byazt/wrq/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/wrq/tt;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/c;->tt(Lcom/byazt/wz/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/wz/c;->tt(Lcom/byazt/wz/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->ve(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 48
    .line 49
    const-string v2, "onDownloadActive"

    .line 50
    .line 51
    iget-object v0, v1, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    move-wide v3, p1

    .line 58
    move-wide v5, p3

    .line 59
    move-object v7, p5

    .line 60
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v0, v0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    move-wide v2, p1

    .line 77
    move-wide v4, p3

    .line 78
    move-object v6, p5

    .line 79
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/pop/uj;->c(JJLjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->uj(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 26
    .line 27
    const-string v2, "onDownloadFailed"

    .line 28
    .line 29
    iget-object v0, v1, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    move-wide v3, p1

    .line 36
    move-wide v5, p3

    .line 37
    move-object v7, p5

    .line 38
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v0, v0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    move-wide v2, p1

    .line 55
    move-wide v4, p3

    .line 56
    move-object v6, p5

    .line 57
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/pop/uj;->ve(JJLjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public onDownloadFinished(JJLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/rgb/c;->n(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 25
    .line 26
    const-string v2, "onDownloadFinished"

    .line 27
    .line 28
    iget-object v0, v1, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    move-wide v3, p1

    .line 35
    move-wide v5, p3

    .line 36
    move-object v7, p5

    .line 37
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p3, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 42
    .line 43
    iget-object p4, p3, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 44
    .line 45
    if-eqz p4, :cond_1

    .line 46
    .line 47
    iget-object p3, p3, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p4, p1, p2, p5, p3}, Lcom/byazt/pop/uj;->c(JLjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/rgb/c;->ve(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/wz/c;->tt(Lcom/byazt/wz/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 35
    .line 36
    const-string v2, "onDownloadPaused"

    .line 37
    .line 38
    iget-object v0, v1, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    move-wide v3, p1

    .line 45
    move-wide v5, p3

    .line 46
    move-object v7, p5

    .line 47
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v0, v0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    move-wide v2, p1

    .line 64
    move-wide v4, p3

    .line 65
    move-object v6, p5

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/pop/uj;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public onDownloadStart()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->ve(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 26
    .line 27
    const-string v2, "onIdle"

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/byazt/pop/uj;->c()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onIdle()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 16
    .line 17
    const-string v2, "onIdle"

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/pop/uj;->c()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onInstalled(JJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->n(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p5, ""

    .line 27
    .line 28
    :goto_0
    move-object v6, p5

    .line 29
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    if-eqz p5, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 36
    .line 37
    const-string v1, "onInstalled"

    .line 38
    .line 39
    iget-object p5, v0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 40
    .line 41
    invoke-virtual {p5}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    move-wide v2, p1

    .line 46
    move-wide v4, p3

    .line 47
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/wz/c;->c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/byazt/wz/c$1;->c:Lcom/byazt/wz/c;

    .line 52
    .line 53
    iget-object p2, p1, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    iget-object p1, p1, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, v6, p1}, Lcom/byazt/pop/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method
