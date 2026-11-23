.class public Lcom/byazt/iuu/uj;
.super Lcom/byazt/iuu/tt;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x673,
        0xf
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final u:I

.field public final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final yp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/n;Lcom/byazt/ete/x$ve;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/iuu/tt;-><init>(Lcom/byazt/iu/n;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/iuu/uj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/iuu/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/byazt/iuu/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/byazt/iuu/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/byazt/iuu/uj;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/byazt/iuu/tt;->n:Lcom/byazt/ete/x$ve;

    .line 41
    .line 42
    iput p3, p0, Lcom/byazt/iuu/uj;->u:I

    .line 43
    .line 44
    iput-object p4, p0, Lcom/byazt/iuu/uj;->yp:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method

.method private c(Lcom/byazt/iu/ve;I)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/byazt/iuu/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iput p2, p0, Lcom/byazt/iuu/tt;->sl:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/byazt/iuu/tt;->x:Lcom/byazt/iu/n;

    if-eqz p1, :cond_1

    .line 10
    iget v0, p0, Lcom/byazt/iuu/tt;->i:I

    iget-object v1, p0, Lcom/byazt/iuu/tt;->da:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/byazt/iu/n;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/byazt/iu/ve;->c()V

    :cond_1
    :goto_0
    if-ne p2, v2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/byazt/iuu/tt;->sp:Lcom/byazt/iu/ve;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/byazt/iu/ve;->ve()V

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/byazt/iuu/tt;->a:Lcom/byazt/iu/ve;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Lcom/byazt/iu/ve;->ve()V

    :cond_3
    return-void

    .line 16
    :cond_4
    iget v0, p0, Lcom/byazt/iuu/tt;->sl:I

    if-eq p2, v0, :cond_5

    if-eqz p1, :cond_5

    .line 17
    invoke-interface {p1}, Lcom/byazt/iu/ve;->ve()V

    :cond_5
    return-void
.end method

.method private n()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/wi/tt;->c()Lcom/byazt/wi/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/iuu/uj;->u:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/iuu/uj;->yp:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/wi/tt;->c(ILjava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/iuu/tt;->n:Lcom/byazt/ete/x$ve;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/iuu/tt;->n:Lcom/byazt/ete/x$ve;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->a()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v0, v0

    .line 37
    return-wide v0

    .line 38
    :cond_1
    const-wide/16 v0, 0x2710

    .line 39
    .line 40
    return-wide v0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 6
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/byazt/iuu/uj;->n()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/iuu/tt;->i:I

    .line 2
    iput-object p2, p0, Lcom/byazt/iuu/tt;->da:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/byazt/iuu/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p1, p0, Lcom/byazt/iuu/uj;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/iuu/uj;->tt()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 18
    iget-object p1, p0, Lcom/byazt/iuu/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/byazt/iuu/uj;->tt()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/iuu/uj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/iuu/uj;->tt()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public tt()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/iuu/uj;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "forbid_realtime_use_cache"

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/iuu/tt;->a:Lcom/byazt/iu/ve;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/byazt/iuu/uj;->c(Lcom/byazt/iu/ve;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/iuu/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/iuu/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v3, 0x3

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Lcom/byazt/ete/x$tt$c;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 49
    .line 50
    .line 51
    iget v5, p0, Lcom/byazt/iuu/tt;->i:I

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Lcom/byazt/ete/x$tt$c;->c(I)Lcom/byazt/ete/x$tt$c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v5, p0, Lcom/byazt/iuu/tt;->n:Lcom/byazt/ete/x$ve;

    .line 62
    .line 63
    invoke-virtual {v5, v2, v0}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-direct {p0, v4, v3}, Lcom/byazt/iuu/uj;->c(Lcom/byazt/iu/ve;I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/byazt/iuu/tt;->sp:Lcom/byazt/iu/ve;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-direct {p0, v0, v1}, Lcom/byazt/iuu/uj;->c(Lcom/byazt/iu/ve;I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/byazt/iuu/uj;->c(Lcom/byazt/iu/ve;I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/byazt/iuu/uj;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Lcom/byazt/iuu/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    new-instance v0, Lcom/byazt/ete/x$tt$c;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 104
    .line 105
    .line 106
    const/16 v3, -0x29a

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Lcom/byazt/ete/x$tt$c;->c(I)Lcom/byazt/ete/x$tt$c;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget v3, p0, Lcom/byazt/iuu/tt;->sl:I

    .line 117
    .line 118
    invoke-static {v3}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v2, v0}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/byazt/iuu/tt;->sp:Lcom/byazt/iu/ve;

    .line 130
    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/byazt/iuu/uj;->c(Lcom/byazt/iu/ve;I)V

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/iuu/uj;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/iuu/uj;->tt()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
